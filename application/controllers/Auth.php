<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('logged_in')) {
            if (time() > $this->session->userdata('expire_time')) {
                $this->session->sess_destroy();
                redirect('auth');
            }
        }
    }

	public function index()
    {
        // Jika sudah login, redirect ke home
        if ($this->session->userdata('logged_in')) {
            redirect('home');
        }

        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $telp = $this->input->post('telp', TRUE);
            $password = $this->input->post('password', TRUE);

            // Validasi input
            if (empty($telp) || empty($password)) {
                $this->session->set_flashdata('error', 'No Telepon dan Password wajib diisi.');
                redirect('auth');
                return;
            }

            // Hash password dengan md5 sebelum cek ke database
            $hashed_password = md5($password);

            // Cek ke database
            $this->db->where('telp', $telp);
            $this->db->where('password', $hashed_password);
            $customer = $this->db->get('customer')->row();

            if ($customer) {
                if ($customer->status == 'Tidak Aktif') {
                    $this->session->set_flashdata('error', 'Akun Anda belum aktif. Silakan hubungi admin untuk aktivasi akun.');
                    redirect('auth');
                    return;
                }
                // Set session dengan expired 3 hari
                $session_data = [
                    'id_customer' => $customer->id_customer,
                    'telp'        => $customer->telp,
                    'perusahaan'  => $customer->customer,
                    'name'        => $customer->pic,
                    'logged_in'   => TRUE,
                    'login_time'  => time(), // waktu login
                    'expire_time' => time() + (3 * 24 * 60 * 60) // 3 hari ke depan
                ];
                $this->session->set_userdata($session_data);

                redirect('home');
            } else {
                $this->session->set_flashdata('error', 'No Telepon atau Password salah.');
                redirect('auth');
            }
        } else {
            $this->load->view('login');
        }
    }

    public function register()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $fullname   = $this->input->post('fullname', TRUE);
            $email      = $this->input->post('email', TRUE);
            $telp       = $this->input->post('telp', TRUE);
            $perusahaan = $this->input->post('perusahaan', TRUE);
            $jabatan    = $this->input->post('jabatan', TRUE);
            $password   = $this->input->post('password', TRUE);

            // Validasi sederhana
            if (empty($fullname) || empty($email) || empty($telp) || empty($perusahaan) || empty($jabatan) || empty($password)) {
                $this->session->set_flashdata('error', 'Semua field wajib diisi.');
                redirect('register');
                return;
            }

            // Cek no telepon atau email sudah terdaftar
            $cek_telp = $this->db->get_where('customer', ['telp' => $telp])->row();
            $cek_email = $this->db->get_where('customer', ['email' => $email])->row();

            if ($cek_telp) {
                $this->session->set_flashdata('error', 'Nomor telepon sudah terdaftar.');
                redirect('register');
                return;
            }
            if ($cek_email) {
                $this->session->set_flashdata('error', 'Email sudah terdaftar.');
                redirect('register');
                return;
            }

            // Generate id_customer otomatis
            $last_customer = $this->db->select('id_customer')
                ->order_by('id_customer', 'DESC')
                ->limit(1)
                ->get('customer')
                ->row();

            if ($last_customer && preg_match('/CUS(\d+)/', $last_customer->id_customer, $matches)) {
                $next_number = intval($matches[1]) + 1;
            } else {
                $next_number = 1;
            }
            $new_id_customer = 'CUS' . str_pad($next_number, 4, '0', STR_PAD_LEFT);

            // Simpan ke database
            $data = [
                'id_customer' => $new_id_customer,
                'pic'        => $fullname,
                'email'      => $email,
                'telp'       => $telp,
                'customer'   => $perusahaan,
                'jabatan'    => $jabatan,
                'status'     => 'Tidak Aktif',
                'password'   => md5($password)
            ];
            $this->db->insert('customer', $data);

            // Redirect ke WhatsApp
            $pesan = urlencode('Halo MOVAS, mohon bantu aktivasi akun untuk customer atas nama "' . $fullname . '". dari ' . $perusahaan . '. Terima kasih.');
            $wa_url = "https://wa.me/6282324001500?text=$pesan";
            redirect($wa_url);
        } else {
            $this->load->view('register');
        }
    }
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('auth');
	}
}
