<!-- Load Helper Date -->
<?php $this->load->helper('indonesian_date'); ?>
 <main>
        <div class="header-main">
            <h1 id="merk-url"><?= $data['nopol'] ?></h1>
            <a href="javascript:history.back()" class="btn-back">⬅ Back</a>
            <a href="javascript:history.back()" class="btn-back2"><i class="fas fa-solid fa-house"></i></a>
        </div>
        <div class="data-kendaraan">
            <div class="col">
                <h1>Data Kendaraan</h1>
                <table>
                    <tr>
                        <td>Jenis Kendaraan</td>
                        <td>:</td>
                        <td><?= $data['jenis_kendaraan'] ?></td>
                    </tr>
                    <tr>
                        <td>Merk</td>
                        <td>:</td>
                        <td><?= $data['merk'] ?></td>
                    </tr>
                    <tr>
                        <td>Tipe</td>
                        <td>:</td>
                        <td><?= $data['type'] ?></td>
                    </tr>
                    <tr>
                        <td>Transmisi</td>
                        <td>:</td>
                        <td><?= $data['transmisi'] ?></td>
                    </tr>
                    <tr>
                        <td>Jenis Bahan Bakar</td>
                        <td>:</td>
                        <td><?= $data['bbm'] ?></td>
                    </tr>
                    <tr>
                        <td>Tahun Produksi</td>
                        <td>:</td>
                        <td><?= $data['tahun'] ?></td>
                    </tr>
                    <tr>
                        <td>Nomor Rangka</td>
                        <td>:</td>
                        <td><?= $data['noka'] ?></td>
                    </tr>
                    <tr>
                        <td>Nomor Mesin</td>
                        <td>:</td>
                        <td><?= $data['nosin'] ?></td>
                    </tr>
                    <tr>
                        <td>Masa Berlaku STNK 1 Tahunan</td>
                        <td>:</td>
                        <td><?= indo_date($data['stnk_th']) ?></td>
                    </tr>
                    <tr>
                        <td>Masa Berlaku STNK 5 Tahunan</td>
                        <td>:</td>
                        <td><?= indo_date($data['stnk_5th']) ?></td>
                    </tr>
                    <tr>
                        <td>Kilometer Tempuh Terakhir</td>
                        <td>:</td>
                        <td><?= number_format($data['km'], 0, ',', '.') ?> KM</td>
                    </tr>
                    <tr>
                        <td>Data Terakhir Diperbaharui</td>
                        <td>:</td>
                        <td><?= indo_date($data['UpdationDate']) ?></td>
                    </tr>
                </table>
            </div>
            <div class="col">
                <div class="lampu">
                    <div class="header">
                        <h1>Lampu-Lampu</h1>
                    </div>
                    <div class="content">
                        <table>
                            <tr>
                                <td>Lampu Utama</td>
                                <td>:</td>
                                <?php if($indikator[21]['range_awal'] == $komponen['lampu_utama']) : ?>
                                    <td><?= $komponen['lampu_utama'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_utama'] ?></td>
                                <?php endif ?>  
                            </tr>
                            <tr>
                                <td>Lampu Kota</td>
                                <td>:</td>
                                <?php if($indikator[25]['range_awal'] == $komponen['lampu_kota']) : ?>
                                    <td><?= $komponen['lampu_kota'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_kota'] ?></td>
                                <?php endif ?>
                            </tr>
                            <tr>
                                <td>Lampu Sein</td>
                                <td>:</td>
                                <?php if($indikator[29]['range_awal'] == $komponen['lampu_sein']) : ?>
                                    <td><?= $komponen['lampu_sein'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_sein'] ?></td>
                                <?php endif ?>
                            </tr>
                            <tr>
                                <td>Lampu Hazard</td>
                                <td>:</td>
                                <?php if($indikator[33]['range_awal'] == $komponen['lampu_hazard']) : ?>
                                    <td><?= $komponen['lampu_hazard'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_hazard'] ?></td>
                                <?php endif ?>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>Lampu Rem</td>
                                <td>:</td>
                                <?php if($indikator[37]['range_awal'] == $komponen['lampu_rem']) : ?>
                                    <td><?= $komponen['lampu_rem'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_rem'] ?></td>
                                <?php endif ?>
                            </tr>
                            <tr>
                                <td>Lampu Mundur</td>
                                <td>:</td>
                                <?php if($indikator[41]['range_awal'] == $komponen['lampu_mundur']) : ?>
                                    <td><?= $komponen['lampu_mundur'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_mundur'] ?></td>
                                <?php endif ?>
                            </tr>
                            <tr>
                                <td>Lampu Kabut</td>
                                <td>:</td>
                                <?php if($indikator[45]['range_awal'] == $komponen['lampu_kabut']) : ?>
                                    <td><?= $komponen['lampu_kabut'] ?></td>
                                <?php else : ?>
                                    <td style="font-weight: 600; color: red"><?= $komponen['lampu_kabut'] ?></td>
                                <?php endif ?>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="content-2">
                    <div class="item">
                        <div class="box">
                            <div class="header">
                                <h1>Ban Depan</h1>
                                <?php if ($indikator[62]['range_awal'] <= $komponen['ktbln_ban_dp_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Ban Depan Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Ban Depan Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[62]['range_awal'] <= $komponen['ktbln_ban_dp_kiri'] ) : ?>
                                        <td><?= $komponen['ktbln_ban_dp_kiri'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['ktbln_ban_dp_kiri'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Kampas Rem</h1>
                                <?php if ($indikator[58]['range_awal'] <= $komponen['kampas_rem_dp_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Kampas Rem Depan Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Kampas Rem Depan Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[58]['range_awal'] <= $komponen['kampas_rem_dp_kiri'] ) : ?>
                                        <td><?= $komponen['kampas_rem_dp_kiri'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['kampas_rem_dp_kiri'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Suspensi</h1>
                                <?php if ($indikator[51]['range_awal'] == $komponen['suspensi_dp_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Suspensi Depan Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Suspensi Depan Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Kondisi</td>
                                    <td>:</td>
                                    <?php if ($indikator[51]['range_awal'] == $komponen['suspensi_dp_kiri'] ) : ?>
                                        <td><?= $komponen['suspensi_dp_kiri'] ?></td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['suspensi_dp_kiri'] ?></td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                        </div>
                        <div class="box">
                            <div class="header">
                                <h1>Ban Belakang</h1>
                                <?php if ($indikator[64]['range_awal'] <= $komponen['ktbln_ban_bl_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Ban Belakang Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Ban Belakang Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[64]['range_awal'] <= $komponen['ktbln_ban_bl_kiri'] ) : ?>
                                        <td><?= $komponen['ktbln_ban_bl_kiri'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['ktbln_ban_bl_kiri'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Kampas Rem</h1>
                                <?php if ($indikator[60]['range_awal'] <= $komponen['kampas_rem_bl_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Kampas Rem Belakang Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Kampas Rem Belakang Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[60]['range_awal'] <= $komponen['kampas_rem_bl_kiri'] ) : ?>
                                        <td><?= $komponen['kampas_rem_bl_kiri'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['kampas_rem_bl_kiri'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Suspensi</h1>
                                <?php if ($indikator[55]['range_awal'] == $komponen['suspensi_bl_kiri'] ) : ?>
                                    <div class="status-badge aman" data-message="Suspensi Belakang Kiri Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Suspensi Belakang Kiri Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Kondisi</td>
                                    <td>:</td>
                                    <?php if ($indikator[55]['range_awal'] == $komponen['suspensi_bl_kiri'] ) : ?>
                                        <td><?= $komponen['suspensi_bl_kiri'] ?></td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['suspensi_bl_kiri'] ?></td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                        </div>
                    </div>
                    <div class="item">
                        <img src="<?= base_url() ?>assets/img/car.png" alt="Car">
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="header">
                                <h1>Ban Depan</h1>
                                <?php if ($indikator[61]['range_awal'] <= $komponen['ktbln_ban_dp_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Ban Depan Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Ban Depan Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[61]['range_awal'] <= $komponen['ktbln_ban_dp_kanan'] ) : ?>
                                        <td><?= $komponen['ktbln_ban_dp_kanan'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['ktbln_ban_dp_kanan'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Kampas Rem</h1>
                                <?php if ($indikator[57]['range_awal'] <= $komponen['kampas_rem_dp_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Kampas Rem Depan Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Kampas Rem Depan Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[57]['range_awal'] <= $komponen['kampas_rem_dp_kanan'] ) : ?>
                                        <td><?= $komponen['kampas_rem_dp_kanan'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['kampas_rem_dp_kanan'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Suspensi</h1>
                                <?php if ($indikator[49]['range_awal'] == $komponen['suspensi_dp_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Suspensi Depan Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Suspensi Depan Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Kondisi</td>
                                    <td>:</td>
                                    <?php if ($indikator[49]['range_awal'] == $komponen['suspensi_dp_kanan'] ) : ?>
                                        <td><?= $komponen['suspensi_dp_kanan'] ?></td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['suspensi_dp_kanan'] ?></td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                        </div>
                        <div class="box">
                            <div class="header">
                                <h1>Ban Belakang</h1>
                                <?php if ($indikator[63]['range_awal'] <= $komponen['ktbln_ban_bl_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Ban Belakang Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Ban Belakang Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[63]['range_awal'] <= $komponen['ktbln_ban_bl_kanan'] ) : ?>
                                        <td><?= $komponen['ktbln_ban_bl_kanan'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['ktbln_ban_bl_kanan'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Kampas Rem</h1>
                                <?php if ($indikator[59]['range_awal'] <= $komponen['kampas_rem_bl_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Kampas Rem Belakang Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Kampas Rem Belakang Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Ketebalan</td>
                                    <td>:</td>
                                    <?php if ($indikator[59]['range_awal'] <= $komponen['kampas_rem_bl_kanan'] ) : ?>
                                        <td><?= $komponen['kampas_rem_bl_kanan'] ?>%</td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['kampas_rem_bl_kanan'] ?>%</td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                            <div class="header">
                                <h1>Suspensi</h1>
                                <?php if ($indikator[51]['range_awal'] == $komponen['suspensi_bl_kanan'] ) : ?>
                                    <div class="status-badge aman" data-message="Suspensi Belakang Kanan Anda dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                                <?php else : ?>
                                    <div class="status-badge service" data-message="Suspensi Belakang Kanan Anda membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                                <?php endif ?>
                            </div>
                            <table>
                                <tr>
                                    <td>Kondisi</td>
                                    <td>:</td>
                                    <?php if ($indikator[51]['range_awal'] == $komponen['suspensi_bl_kanan'] ) : ?>
                                        <td><?= $komponen['suspensi_bl_kanan'] ?></td>
                                    <?php else : ?>
                                        <td style="font-weight: 600; color: red"><?= $komponen['suspensi_bl_kanan'] ?></td>
                                    <?php endif ?>
                                </tr>
                                <tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="komponen-utama">
            <div class="card">
                <div class="header">
                    <h1>Oli Mesin</h1>
                    <?php if($data['km'] <= $komponen['km_oli_mesin'] + $indikator[1]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Oli Mesin dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Oli Mesin membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Terakhir Ganti</td>
                        <td>:</td>
                        <td><?= indo_date($komponen['tg_oli_mesin']) ?></td>
                    </tr>
                    <tr>
                        <td>Kilometer</td>
                        <td>:</td>
                        <?php if($data['km'] <= $komponen['km_oli_mesin'] + $indikator[1]['range_awal']) : ?>
                            <td><?= number_format($komponen['km_oli_mesin'], 0, ',', '.') ?> KM</td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= number_format($komponen['km_oli_mesin'], 0, ',', '.') ?> KM</td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti setiap 10.000 KM atau 6 Bulan</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Filter Oli Mesin</h1>
                    <?php if($data['km'] <= $komponen['km_filter_oli_mesin'] + $indikator[3]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Filter Oli Mesin dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Filter Oli Mesin membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Terakhir Ganti</td>
                        <td>:</td>
                        <td><?= indo_date($komponen['tg_filter_oli_mesin']) ?></td>
                    </tr>
                    <tr>
                        <td>Kilometer</td>
                        <td>:</td>
                        <?php if($data['km'] <= $komponen['km_filter_oli_mesin'] + $indikator[3]['range_awal']) : ?>
                            <td><?= number_format($komponen['km_filter_oli_mesin'], 0, ',', '.') ?> KM</td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= number_format($komponen['km_filter_oli_mesin'], 0, ',', '.') ?> KM</td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti setiap 10.000 KM atau 6 Bulan</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Oli Transmisi</h1>
                    <?php if($data['km'] <= $komponen['km_oli_transmisi'] + $indikator[4]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Oli Transmisi dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Oli Transmisi membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Terakhir Ganti</td>
                        <td>:</td>
                        <td><?= indo_date($komponen['tg_oli_transmisi']) ?></td>
                    </tr>
                    <tr>
                        <td>Kilometer</td>
                        <td>:</td>
                        <?php if($data['km'] <= $komponen['km_oli_transmisi'] + $indikator[4]['range_awal']) : ?>
                            <td><?= number_format($komponen['km_oli_transmisi'], 0, ',', '.') ?> KM</td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= number_format($komponen['km_oli_transmisi'], 0, ',', '.') ?> KM</td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti setiap 40.000 KM atau 2 Tahun</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Aki / Battery</h1>
                    <?php if($komponen['volt_aki'] >= $indikator[10]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Aki / Battery dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Aki / Battery membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Tegangan Aki (Volt)</td>
                        <td>:</td>
                        <?php if($komponen['volt_aki'] >= $indikator[10]['range_awal']) : ?>
                            <td><?= $komponen['volt_aki'] ?> v</td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['volt_aki'] ?> v</td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti jika kurang dari 12,4 v</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Busi / Spark Plug</h1>
                    <?php if($komponen['busi'] == $indikator[11]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Busi / Spark Plug dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Busi / Spark Plug membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Kondisi Busi</td>
                        <td>:</td>
                        <?php if($komponen['busi'] == $indikator[11]['range_awal']) : ?>
                            <td><?= $komponen['busi'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['busi'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti setiap 40.000 KM</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Timing Belt / Chain</h1>
                    <?php if($komponen['timing_belt'] == $indikator[13]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Timing Belt / Chain dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Timing Belt / Chain membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Kondisi Timing Belt</td>
                        <td>:</td>
                        <?php if($komponen['timing_belt'] == $indikator[13]['range_awal']) : ?>
                            <td><?= $komponen['timing_belt'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['timing_belt'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti setiap 60.000 KM</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Filter Udara</h1>
                    <?php if($komponen['filter_udara'] == $indikator[15]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Filter Udara dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Filter Udara membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Kondisi</td>
                        <td>:</td>
                        <?php if($komponen['filter_udara'] == $indikator[15]['range_awal']) : ?>
                            <td><?= $komponen['filter_udara'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['filter_udara'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti jika kondisi kotor</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Filter AC</h1>
                    <?php if($komponen['filter_ac'] == $indikator[17]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Filter AC dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Filter AC membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Kondisi Filter AC</td>
                        <td>:</td>
                        <?php if($komponen['filter_ac'] == $indikator[17]['range_awal']) : ?>
                            <td><?= $komponen['filter_ac'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['filter_ac'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti jika kondisi kotor</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Radiator</h1>
                    <?php if($komponen['kondisi_radiator'] == $indikator[19]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Radiator dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Radiator membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Kondisi Radiator</td>
                        <td>:</td>
                        <?php if($komponen['kondisi_radiator'] == $indikator[19]['range_awal']) : ?>
                            <td><?= $komponen['kondisi_radiator'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['kondisi_radiator'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti jika ada kebocoran</p>
            </div>
            <div class="card">
                <div class="header">
                    <h1>Wiper</h1>
                    <?php if($komponen['dp_wiper'] == $indikator[6]['range_awal'] && $komponen['bl_wiper'] == $indikator[8]['range_awal']) : ?>
                        <div class="status-badge aman" data-message="Wiper dalam kondisi aman. Tetap lakukan perawatan rutin.">Safe</div>
                    <?php else : ?>
                        <div class="status-badge service" data-message="Wiper membutuhkan service segera untuk menghindari kerusakan lebih lanjut.">Attention!</div>
                    <?php endif ?>
                </div>
                <table>
                    <tr>
                        <td>Depan</td>
                        <td>:</td>
                        <?php if($komponen['dp_wiper'] == $indikator[6]['range_awal']) : ?>
                            <td><?= $komponen['dp_wiper'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['dp_wiper'] ?></td>
                        <?php endif ?>
                    </tr>
                    <tr>
                        <td>Belakang</td>
                        <td>:</td>
                        <?php if($komponen['bl_wiper'] == $indikator[6]['range_awal']) : ?>
                            <td><?= $komponen['bl_wiper'] ?></td>
                        <?php else : ?>
                            <td style="font-weight: 600; color: red"><?= $komponen['bl_wiper'] ?></td>
                        <?php endif ?>
                    </tr>
                </table>
                <p>Rekomendasi: Ganti jika kondisi getas</p>
            </div>
        </div>
        <footer>
            <a href="login.html" class="logout-link">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
            <p>© 2025 MOVAS. All rights reserved. · Version 1.0</p>
        </footer>
    </main>

    <!-- Popup -->
    <div class="status-popup" id="statusPopup">
        <p id="statusMessage"></p>
    </div>

    <!-- Font Awesome untuk ikon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</body>
<script>
    let popupTimer;
    const popup = document.getElementById('statusPopup');
    const messageBox = document.getElementById('statusMessage');

    document.querySelectorAll('.status-badge').forEach(badge => {
        const showPopup = () => {
            const message = badge.getAttribute('data-message');
            messageBox.textContent = message;

            // Reset animasi
            popup.classList.remove('hide');
            popup.style.display = 'block';

            // Delay biar transisi muncul
            setTimeout(() => {
                popup.classList.add('show');
            }, 10);

            // Clear timer sebelumnya
            clearTimeout(popupTimer);

            // Auto close setelah 4 detik
            popupTimer = setTimeout(() => {
                closePopup();
            }, 4000);
        };

        // Bisa lewat hover
        badge.addEventListener('mouseover', showPopup);

        // Bisa lewat klik juga
        badge.addEventListener('click', showPopup);
    });

    function closePopup() {
        popup.classList.remove('show');
        popup.classList.add('hide');

        // Tunggu animasi selesai baru sembunyikan
        setTimeout(() => {
            popup.style.display = 'none';
        }, 400);
        clearTimeout(popupTimer);
    }

    let touchStartX = 0;
    let touchEndX = 0;

    document.body.addEventListener('touchstart', function (e) {
        touchStartX = e.changedTouches[0].screenX;
    });

    document.body.addEventListener('touchend', function (e) {
        touchEndX = e.changedTouches[0].screenX;
        if (touchStartX - touchEndX > 80) { // swipe left threshold
            window.location.href = 'recommendation.html';
        }
    });

</script>

</html>