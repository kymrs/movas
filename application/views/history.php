    <main>
        <div class="vehicle-list-container">
            <div class="vehicle-list-title">History</div>
            <?php if ($history) : ?>
                <div class="vehicle-search-box">
                    <input type="text" id="vehicleSearch" placeholder="Look for a vehicle...">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                    <a href="<?= base_url('home/export_excel_all') ?>" class="export-excel-all">
                        <i class="fas fa-solid fa-file-excel"></i>Export All
                    </a>
                    <a href="<?= base_url('home/export_excel_all') ?>" class="export-excel-all mobile">
                        <i class="fas fa-solid fa-file-excel"></i>
                    </a>
                </div>
            <?php endif ?>
            <div style="clear: both;"></div>
            <div class="container">
                <?php if ($history) : ?>
                <?php 
                    $grouped = [];
                    foreach ($history as $row) {
                        $nopol = $row['no_polisi'];

                        // kalau nopol belum ada, bikin dulu
                        if (!array_key_exists($nopol, $grouped)) {
                            $grouped[$nopol] = [
                                'merk'  => $row['merk'],
                                'type'  => $row['type'],
                                'items' => []
                            ];
                        }

                        // tambahin row ke dalam items
                        $grouped[$nopol]['items'][] = $row;
                    }
                ?>
                <?php foreach ($grouped as $nopol => $data): ?>
                <?php $i = 1 ?>

                <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td><?= $data['merk'] ?> <?= $data['type'] ?></td>
                                <td><div class="line"></div></td>
                                <td><?= $nopol ?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php if (!empty($data['items'])): ?>
                                    <?php foreach ($data['items'] as $item): ?>
                                    <tr>
                                        <td><?= $i++ ?></td>
                                        <td><?= $item['tgl_pkb']; ?></td>
                                        <td><?= $item['jenis']; ?></td>
                                        <td><?= $item['km']; ?></td>
                                        <td><?= number_format($item['harga'], 0, ',', '.'); ?></td>
                                    </tr>
                                    <?php endforeach; ?>
                                <?php else: ?>
                                    <tr>
                                        <td colspan="5">Tidak ada data</td>
                                    </tr>
                                <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                        <a href="<?= base_url('home/export_excel?nopol=' . $nopol) ?>" class="export-excel">
                            <i class="fas fa-solid fa-file-excel"></i>Export
                        </a>
                    </div>
                </div>
                <?php endforeach; ?>
                <?php else: ?>
                    <div style="text-align:center; color:#fff; margin-top:24px; font-size:1.1rem;">No vehicles were found.</div>
                <?php endif; ?>

                <!-- <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td>Toyota Avanza</td>
                                <td>
                                    <div class="line"></div>
                                </td>
                                <td>B 2318 KFU</td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>17 08 2025</td>
                                        <td>Non Berkala</td>
                                        <td>123.000</td>
                                        <td>1.400.000</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>19 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>126.000</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>21 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>130.000</td>
                                        <td>1.000.000</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>26 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>136.000</td>
                                        <td>1.250.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a href="" class="export-excel"><i class="fas fa-solid fa-file-excel"></i>Export</a>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td>DAIHATSU Sigra</td>
                                <td>
                                    <div class="line"></div>
                                </td>
                                <td>B 1111 GGF</td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>17 08 2025</td>
                                        <td>Non Berkala</td>
                                        <td>123.000</td>
                                        <td>1.400.000</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>19 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>126.000</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>21 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>130.000</td>
                                        <td>1.000.000</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>26 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>136.000</td>
                                        <td>1.250.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a href="" class="export-excel"><i class="fas fa-solid fa-file-excel"></i>Export</a>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td>Hyundai Stargazer</td>
                                <td>
                                    <div class="line"></div>
                                </td>
                                <td>B 2083 KYU</td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>17 08 2025</td>
                                        <td>Non Berkala</td>
                                        <td>123.000</td>
                                        <td>1.400.000</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>19 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>126.000</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>21 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>130.000</td>
                                        <td>1.000.000</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>26 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>136.000</td>
                                        <td>1.250.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a href="" class="export-excel"><i class="fas fa-solid fa-file-excel"></i>Export</a>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td>DAIHATSU NQR 71 EC E2-1 (XXI) (6.1)</td>
                                <td>
                                    <div class="line"></div>
                                </td>
                                <td>B 1111 KLL</td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>17 08 2025</td>
                                        <td>Non Berkala</td>
                                        <td>123.000</td>
                                        <td>1.400.000</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>19 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>126.000</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>21 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>130.000</td>
                                        <td>1.000.000</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>26 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>136.000</td>
                                        <td>1.250.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a href="" class="export-excel"><i class="fas fa-solid fa-file-excel"></i>Export</a>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <table>
                            <tr>
                                <td>MITSUBISHI NQR 71 EC E2-1 (XXI) (6.1)</td>
                                <td>
                                    <div class="line"></div>
                                </td>
                                <td>B 4362 XXX</td>
                            </tr>
                        </table>
                    </div>
                    <div class="content">
                        <h1>Service List</h1>
                        <div class="table-container">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Jenis</th>
                                        <th>KM</th>
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>17 08 2025</td>
                                        <td>Non Berkala</td>
                                        <td>123.000</td>
                                        <td>1.400.000</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>19 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>126.000</td>
                                        <td>1.200.000</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>21 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>130.000</td>
                                        <td>1.000.000</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>26 08 2025</td>
                                        <td>Service Berkala</td>
                                        <td>136.000</td>
                                        <td>1.250.000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a href="" class="export-excel"><i class="fas fa-solid fa-file-excel"></i>Export</a>
                    </div>
                </div> -->
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
            // Ambil nama mobil dan plat nomor dari header
            const tableCells = card.querySelectorAll('.header table tr td');
            const name = tableCells[0].textContent.toLowerCase();
            const plate = tableCells[2].textContent.toLowerCase();
            // Ambil semua service part di dalam <ul>
            const services = Array.from(card.querySelectorAll('.content ul li'))
                .map(li => li.textContent.toLowerCase())
                .join(' ');
            if (
                name.includes(keyword) ||
                plate.includes(keyword) ||
                services.includes(keyword)
            ) {
                card.style.display = '';
            } else {
                card.style.display = 'none';
            }
        });
    }

    // Swipe right to go to recommendation.html
    let touchStartX = 0;
    let touchEndX = 0;

    document.body.addEventListener('touchstart', function (e) {
        touchStartX = e.changedTouches[0].screenX;
    });

    document.body.addEventListener('touchend', function (e) {
        touchEndX = e.changedTouches[0].screenX;
        if (touchEndX - touchStartX > 80) {
            // Swipe right: ke recommendation.html
            window.location.href = 'recommendation';
        }
    });
</script>

</html>