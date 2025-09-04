<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('logged_in')) {
            redirect('auth');
        }
    }

    public function index()
    {
        // header
        $data['style'] = 'main';
        $data['title'] = 'Home';
        // sidebar
        $data['menu'] = 'vehicle_list';

        $data['kendaraan'] = $this->db->get_where('tbl_unit', ['id_cabang' => $this->session->userdata('id_customer')])->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('vehicle_list', $data);
    }
    
    public function vehicle_health($kode_unit) {
        // header
        $data['style'] = 'vehicle-health';
        $data['title'] = 'Vehicle Health';
        // sidebar
        $data['menu'] = 'vehicle_list';

        $data['data'] = $this->db->get_where('tbl_unit', ['kode_unit' => $kode_unit])->row_array();
        $data['komponen'] = $this->db->get_where('tbl_komponen_utama', ['kode_unit' => $kode_unit])->row_array();
        $data['indikator'] = $this->db->get('m_indikator')->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('vehicle_health', $data);
    }

    public function recommendation() {
        // header
        $data['style'] = 'recommendation';
        $data['title'] = 'Recommendation';
        // sidebar
        $data['menu'] = 'recommendation';

        // query
        $this->db->select('a.*, b.*');
        $this->db->from('tbl_komponen_utama a');
        $this->db->join('tbl_unit b', 'a.kode_unit = b.kode_unit', 'left');
        $this->db->where('b.id_cabang', $this->session->userdata('id_customer'));
        $query = $this->db->get();
        $data['komponen'] = $query->result_array();

        $data['indikator'] = $this->db->get('m_indikator')->result_array();

        // load view
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('recommendation', $data);
    }

    public function history() {
        // header
        $data['style'] = 'history';
        $data['title'] = 'History';
        // sidebar
        $data['menu'] = 'history';

        $this->db->select('a.no_pkb, a.tgl_pkb, a.jenis, a.km, a.no_polisi, (a.total_harga - a.diskon) as harga, b.merk, b.type');
        $this->db->from('tbl_pkb as a');
        $this->db->join('tbl_unit as b', 'a.no_polisi = b.nopol', 'left');
        $this->db->join('customer as c', 'b.id_cabang = c.id_customer', 'inner');
        $this->db->where('b.id_cabang', $this->session->userdata('id_customer'));
        $query = $this->db->get();

        $data['history'] = $query->result_array();


        // load view
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('history', $data);
    }

    public function export_excel_all()
    {
        $this->db->select('b.tgl_pkb, b.lokasi, b.no_polisi, b.km, b.jenis, a.kategori, a.nama_item, a.harga_satuan');
        $this->db->from('tbl_pkb_detail a');
        $this->db->join('tbl_pkb b', 'a.no_pkb = b.no_pkb', 'inner');
        $details = $this->db->get()->result_array();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Header
        $sheet->fromArray([
            ['No', 'Tanggal Service', 'Lokasi Service', 'No Polisi', 'KM', 'Jenis Service', 'Kategori Service', 'Uraian', 'Harga']
        ], NULL, 'A1');

        // Data
        $no = 1;
        $rowNum = 2;
        foreach ($details as $row) {
            $sheet->fromArray([
                $no,
                $row['tgl_pkb'],
                $row['lokasi'],
                $row['no_polisi'],
                $row['km'],
                $row['jenis'],
                $row['kategori'],
                $row['nama_item'],
                $row['harga_satuan']
            ], NULL, 'A' . $rowNum);
            $no++;
            $rowNum++;
        }

        $perusahaan = $this->session->userdata('perusahaan');

        // Output
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="Data Service - ' . $perusahaan . '.xlsx"');
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }

    public function export_excel()
    {
        $nopol = $this->input->get('nopol');
        $perusahaan = $this->session->userdata('perusahaan');

        $this->db->select('b.tgl_pkb, b.lokasi, b.no_polisi, b.km, b.jenis, a.kategori, a.nama_item, a.harga_satuan');
        $this->db->from('tbl_pkb_detail a');
        $this->db->join('tbl_pkb b', 'a.no_pkb = b.no_pkb', 'inner');
        $this->db->where('b.no_polisi', $nopol);
        $details = $this->db->get()->result_array();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Header
        $sheet->fromArray([
            ['No', 'Tanggal Service', 'Lokasi Service', 'No Polisi', 'KM', 'Jenis Service', 'Kategori Service', 'Uraian', 'Harga']
        ], NULL, 'A1');

        // Data
        $no = 1;
        $rowNum = 2;
        foreach ($details as $row) {
            $sheet->fromArray([
                $no,
                $row['tgl_pkb'],
                $row['lokasi'],
                $row['no_polisi'],
                $row['km'],
                $row['jenis'],
                $row['kategori'],
                $row['nama_item'],
                $row['harga_satuan']
            ], NULL, 'A' . $rowNum);
            $no++;
            $rowNum++;
        }

        // Output
        $filename = "Data Service $nopol - $perusahaan.xlsx";
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }
}