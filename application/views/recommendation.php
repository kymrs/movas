    <main>
        <div class="vehicle-list-container">
            <div class="vehicle-list-title">Recommendation</div>
            <?php if($komponen) : ?>
                <div class="vehicle-search-box">
                    <input type="text" id="vehicleSearch" placeholder="Look for a vehicle...">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
            <?php endif ?>
            <div class="container">
                <?php if($komponen) : ?>
                    <?php foreach($komponen as $data) : ?>
                        <div class="card">
                            <div class="header">
                                <div class="row">
                                    <img src="<?= base_url() ?>assets/img/car-recommendation.png" alt="Car Recommendation">
                                </div>
                                <div class="row">
                                    <p><?= $data['merk'] ?></p>
                                    <h1><?= $data['nopol'] ?></h1>
                                    <table>
                                        <tr>
                                            <td>KM Awal</td>
                                            <td>:</td>
                                            <td><?= number_format($data['km'], 0, ',', '.') ?> KM</td>
                                        </tr>
                                        <tr>
                                            <td>KM Selanjutnya</td>
                                            <td>:</td>
                                            <td><?= number_format($data['km'], 0, ',', '.') ?> KM</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="content">
                                <h1>Rekomendasi</h1>
                                <div class="content-container">
                                    <!-- Oli Mesin -->
                                    <?php if($data['km'] >= $data['km_oli_mesin'] + $indikator[1]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Oli Mesin perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Kotor</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Filter Oli Mesin -->
                                    <?php if($data['km'] >= $data['km_filter_oli_mesin'] + $indikator[3]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Filter Oli Mesin perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Kotor</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Oli Transmisi -->
                                    <?php if($data['km'] >= $data['km_oli_transmisi'] + $indikator[4]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Oli Transmisi perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Kotor</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Aki / Battery -->
                                    <?php if($data['volt_aki'] <= $indikator[10]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Aki / Battery perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Kurang Dari <?= $indikator[10]['range_awal'] ?> v</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Busi -->
                                    <?php if($data['busi'] != $indikator[11]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Busi perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['busi'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Timing Belt -->
                                    <?php if($data['timing_belt'] != $indikator[13]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Timing Belt perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['timing_belt'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Filter Udara -->
                                    <?php if($data['filter_udara'] != $indikator[15]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Filter Udara perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['filter_udara'] ?></td>
                                            </tr>
                                        </table>  
                                    <?php endif ?>

                                    <!-- Filter AC -->
                                    <?php if($data['filter_ac'] != $indikator[17]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Filter AC perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['filter_ac'] ?></td>
                                            </tr>
                                        </table>  
                                    <?php endif ?>

                                    <!-- Radiator -->
                                    <?php if($data['kondisi_radiator'] != $indikator[19]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Radiator perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['kondisi_radiator'] ?></td>
                                            </tr>
                                        </table>  
                                    <?php endif ?>

                                    <!-- Wiper Depan -->
                                    <?php if($data['dp_wiper'] != $indikator[6]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Wiper Depan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['dp_wiper'] ?></td>
                                            </tr>
                                        </table>  
                                    <?php endif ?>

                                    <!-- Wiper Belakang -->
                                    <?php if($data['bl_wiper'] != $indikator[6]['range_awal']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Wiper Belakang perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['bl_wiper'] ?></td>
                                            </tr>
                                        </table> 
                                    <?php endif ?>

                                    <!-- Ban Depan Kiri -->
                                    <?php if ($indikator[62]['range_awal'] >= $data['ktbln_ban_dp_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Ban Depan Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['ktbln_ban_dp_kiri'] ?>%</td>
                                            </tr>
                                        </table> 
                                    <?php endif ?>

                                    <!-- Ban Belakang Kiri -->
                                    <?php if ($indikator[64]['range_awal'] >= $data['ktbln_ban_bl_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Ban Belakang Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['ktbln_ban_bl_kiri'] ?>%</td>
                                            </tr>
                                        </table>                 
                                    <?php endif ?>

                                    <!-- Ban Depan Kanan -->
                                    <?php if ($indikator[61]['range_awal'] >= $data['ktbln_ban_dp_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Ban Depan Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['ktbln_ban_dp_kanan'] ?>%</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Ban Belakang Kanan -->
                                    <?php if ($indikator[63]['range_awal'] >= $data['ktbln_ban_bl_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Ban Belakang Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['ktbln_ban_bl_kanan'] ?>%</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Kampas Rem Depan Kiri -->
                                    <?php if ($indikator[58]['range_awal'] >= $data['kampas_rem_dp_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Kampas Rem Depan Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['kampas_rem_dp_kiri'] ?>%</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Kampas Rem Belakang Kiri -->
                                    <?php if ($indikator[60]['range_awal'] >= $data['kampas_rem_bl_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Kampas Rem Belakang Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['kampas_rem_bl_kiri'] ?>%</td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Kampas Rem Depan Kanan -->
                                    <?php if ($indikator[57]['range_awal'] >= $data['kampas_rem_dp_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Kampas Rem Depan Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['kampas_rem_dp_kanan'] ?>%</td>
                                            </tr>
                                        </table>                    
                                    <?php endif ?>

                                    <!-- Kampas Rem Belakang Kanan -->
                                    <?php if ($indikator[59]['range_awal'] >= $data['kampas_rem_bl_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Kampas Rem Belakang Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td>Tebal <?= $data['kampas_rem_bl_kanan'] ?>%</td>
                                            </tr>
                                        </table>                       
                                    <?php endif ?>

                                    <!-- Suspensi Depan Kiri -->
                                    <?php if ($indikator[51]['range_awal'] != $data['suspensi_dp_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Suspensi Depan Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['suspensi_dp_kiri'] ?></td>
                                            </tr>
                                        </table>     
                                    <?php endif ?>

                                    <!-- Suspensi Belakang Kiri -->
                                    <?php if ($indikator[55]['range_awal'] != $data['suspensi_bl_kiri'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Suspensi Belakang Kiri perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['suspensi_bl_kiri'] ?></td>
                                            </tr>
                                        </table>   
                                    <?php endif ?>

                                    <!-- Suspensi Depan Kanan -->
                                    <?php if ($indikator[49]['range_awal'] != $data['suspensi_dp_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Suspensi Depan Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['suspensi_dp_kanan'] ?></td>
                                            </tr>
                                        </table>             
                                    <?php endif ?>

                                    <!-- Suspensi Belakang Kanan -->
                                    <?php if ($indikator[51]['range_awal'] != $data['suspensi_bl_kanan'] ) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Suspensi Belakang Kanan perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['suspensi_bl_kanan'] ?></td>
                                            </tr>
                                        </table>   
                                    <?php endif ?>

                                    <!-- Lampu Utama -->
                                    <?php if($indikator[21]['range_awal'] != $data['lampu_utama']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Utama perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_utama'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Kota -->
                                    <?php if($indikator[25]['range_awal'] != $data['lampu_kota']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Kota perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_kota'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Sein -->
                                    <?php if($indikator[29]['range_awal'] != $data['lampu_sein']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Sein perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_sein'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Hazard -->
                                    <?php if($indikator[33]['range_awal'] != $data['lampu_hazard']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Hazard perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_hazard'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Rem -->
                                    <?php if($indikator[37]['range_awal'] != $data['lampu_rem']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Rem perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_rem'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Mundur -->
                                    <?php if($indikator[41]['range_awal'] != $data['lampu_mundur']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Mundur perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_mundur'] ?></td>
                                            </tr>
                                        </table>
                                    <?php endif ?>

                                    <!-- Lampu Kabut -->
                                    <?php if($indikator[45]['range_awal'] != $data['lampu_kabut']) : ?>
                                        <table>
                                            <tr>
                                                <td><i class="fas fa-solid fa-screwdriver-wrench"></i></td>
                                                <td>Lampu Kabut perlu diganti.</td>
                                                <td class="line"></td>
                                                <td><?= $data['lampu_kabut'] ?></td>
                                            </tr>
                                        </table>  
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                <?php else: ?>
                    <div style="text-align:center; color:#fff; margin-top:24px; font-size:1.1rem;">No vehicles were found.</div>
                <?php endif; ?>
            </div>
        </div>
        <footer>
            <a href="login.html" class="logout-link">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
            <p>© 2025 MOVAS. All rights reserved. · Version 1.0</p>
        </footer>
    </main>

    <!-- Font Awesome untuk ikon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</body>
<script>
    document.getElementById('searchBtn').addEventListener('click', function () {
        filterCards();
    });
    document.getElementById('vehicleSearch').addEventListener('keyup', function (e) {
        if (e.key === 'Enter') filterCards();
        else filterCards();
    });

    function filterCards() {
        const keyword = document.getElementById('vehicleSearch').value.toLowerCase();
        const cards = document.querySelectorAll('.container .card');
        cards.forEach(card => {
            // Cari di nama mobil, plat nomor, dan rekomendasi
            const name = card.querySelector('.header .row:nth-child(2) p').textContent.toLowerCase();
            const plate = card.querySelector('.header .row:nth-child(2) h1').textContent.toLowerCase();
            const recommendations = Array.from(card.querySelectorAll('.content table td:nth-child(2)'))
                .map(td => td.textContent.toLowerCase())
                .join(' ');
            if (
                name.includes(keyword) ||
                plate.includes(keyword) ||
                recommendations.includes(keyword)
            ) {
                card.style.display = '';
            } else {
                card.style.display = 'none';
            }
        });
    }

    // Swipe gesture navigation
    let touchStartX = 0;
    let touchEndX = 0;

    document.body.addEventListener('touchstart', function (e) {
        touchStartX = e.changedTouches[0].screenX;
    });

    document.body.addEventListener('touchend', function (e) {
        touchEndX = e.changedTouches[0].screenX;
        const diff = touchStartX - touchEndX;
        if (diff > 80) {
            // Swipe left: ke history.html
            window.location.href = 'history';
        } else if (diff < -80) {
            // Swipe right: ke index.html
            window.location.href = 'home';
        }
    });
</script>

</html>