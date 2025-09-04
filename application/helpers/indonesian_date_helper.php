<?php
/**
 * Indonesian Date Helper for CodeIgniter 3
 *
 * Tempatkan file ini sebagai: application/helpers/indonesian_date_helper.php
 *
 * Cara pakai:
 *  $this->load->helper('indonesian_date');
 *  echo indo_date('2025-08-17'); // "17 Agustus 2025"
 *  echo indo_date('2025-08-17', true); // "Minggu, 17 Agustus 2025"
 *  echo indo_datetime('2025-08-17 14:35:20'); // "17 Agustus 2025 14:35 WIB"
 *  echo indo_datetime(time(), true, true); // "Minggu, 17 Agustus 2025 14:35:20 WIB"
 */

defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('indo_date')) {
    /**
     * Format tanggal menjadi Bahasa Indonesia, contoh: "17 Agustus 2025".
     *
     * @param string|int|DateTimeInterface $date Input tanggal ("Y-m-d", timestamp, atau DateTime)
     * @param bool $with_day Sertakan nama hari ("Minggu, 17 Agustus 2025")
     * @param string|null $tz Timezone, default "Asia/Jakarta"
     * @return string
     */
    function indo_date($date, $with_day = false, $tz = 'Asia/Jakarta')
    {
        $dt = _id_to_datetime($date, $tz);
        if (!$dt) return '';

        $hari  = _id_day_name((int)$dt->format('N')); // 1..7
        $tgl   = $dt->format('j'); // 1..31 tanpa leading zero
        $bulan = _id_month_name((int)$dt->format('n')); // 1..12
        $tahun = $dt->format('Y');

        $hasil = $tgl . ' ' . $bulan . ' ' . $tahun;
        if ($with_day) {
            $hasil = $hari . ', ' . $hasil;
        }
        return $hasil;
    }
}

if (!function_exists('indo_datetime')) {
    /**
     * Format tanggal & waktu menjadi Bahasa Indonesia, contoh: "17 Agustus 2025 14:35 WIB".
     *
     * @param string|int|DateTimeInterface $datetime Input datetime ("Y-m-d H:i:s", timestamp, atau DateTime)
     * @param bool $with_day Sertakan nama hari di depan
     * @param bool $with_seconds Sertakan detik
     * @param string|null $tz Timezone, default "Asia/Jakarta"
     * @return string
     */
    function indo_datetime($datetime, $with_day = false, $with_seconds = false, $tz = 'Asia/Jakarta')
    {
        $dt = _id_to_datetime($datetime, $tz);
        if (!$dt) return '';

        $tanggal = indo_date($dt, $with_day, $tz);
        $format_jam = $with_seconds ? 'H:i:s' : 'H:i';
        $jam = $dt->format($format_jam);

        // WIB/WITA/WIT sesuai timezone
        $zone = strtoupper(str_replace(['Asia/', '_'], ['', ' '], $dt->getTimezone()->getName()));
        // Normalisasi agar umum dipakai di Indonesia
        $abbr = 'WIB';
        if ($dt->getTimezone()->getName() === 'Asia/Makassar') $abbr = 'WITA';
        if ($dt->getTimezone()->getName() === 'Asia/Jayapura') $abbr = 'WIT';

        return $tanggal . ' ' . $jam . ' ' . $abbr;
    }
}

if (!function_exists('indo_range')) {
    /**
     * Format rentang tanggal, misal:
     *  indo_range('2025-08-15', '2025-08-17') => "15–17 Agustus 2025"
     *  indo_range('2025-08-31', '2025-09-02') => "31 Agustus–2 September 2025"
     *
     * @param string|int|DateTimeInterface $start
     * @param string|int|DateTimeInterface $end
     * @param bool $with_day Sertakan hari pada kedua sisi jika di bulan yang sama -> "Jum'at, 15–Minggu, 17 Agustus 2025"
     * @param string|null $tz
     * @return string
     */
    function indo_range($start, $end, $with_day = false, $tz = 'Asia/Jakarta')
    {
        $a = _id_to_datetime($start, $tz);
        $b = _id_to_datetime($end, $tz);
        if (!$a || !$b) return '';

        // Pastikan $a <= $b
        if ($a > $b) { $tmp = $a; $a = $b; $b = $tmp; }

        $sameMonth = $a->format('nY') === $b->format('nY');

        if ($sameMonth) {
            $left  = ($with_day ? _id_day_name((int)$a->format('N')) . ', ' : '') . (int)$a->format('j');
            $right = ($with_day ? _id_day_name((int)$b->format('N')) . ', ' : '') . (int)$b->format('j');
            return $left . '–' . $right . ' ' . _id_month_name((int)$a->format('n')) . ' ' . $a->format('Y');
        }

        $left  = indo_date($a, $with_day, $tz);
        $right = indo_date($b, $with_day, $tz);
        return $left . '–' . $right;
    }
}

// =========================
// Utilitas internal
// =========================
if (!function_exists('_id_to_datetime')) {
    /**
     * Konversi input menjadi DateTimeImmutable dengan timezone yang diinginkan.
     * @param mixed $input
     * @param string $tz
     * @return DateTimeImmutable|null
     */
    function _id_to_datetime($input, $tz = 'Asia/Jakarta')
    {
        try {
            $tzobj = new DateTimeZone($tz ?: 'Asia/Jakarta');
            if ($input instanceof DateTimeInterface) {
                return (new DateTimeImmutable('@' . $input->getTimestamp()))->setTimezone($tzobj);
            }
            if (is_numeric($input)) {
                return (new DateTimeImmutable('@' . (int)$input))->setTimezone($tzobj);
            }
            if (is_string($input)) {
                $ts = strtotime($input);
                if ($ts === false) return null;
                return (new DateTimeImmutable('@' . $ts))->setTimezone($tzobj);
            }
        } catch (Exception $e) {
            return null;
        }
        return null;
    }
}

if (!function_exists('_id_month_name')) {
    /** @return string */
    function _id_month_name($n)
    {
        static $bulan = [
            1 => 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
                 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
        ];
        return isset($bulan[$n]) ? $bulan[$n] : '';
    }
}

if (!function_exists('_id_day_name')) {
    /** @param int $n 1=Senin .. 7=Minggu (sesuai format 'N') */
    function _id_day_name($n)
    {
        static $hari = [
            1 => 'Senin', 'Selasa', 'Rabu', 'Kamis', "Jum'at", 'Sabtu', 'Minggu'
        ];
        return isset($hari[$n]) ? $hari[$n] : '';
    }
}
