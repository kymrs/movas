 <main>
        <div class="vehicle-list-container">
            <div class="vehicle-list-title">Vehicle List</div>
            <?php if($kendaraan) : ?>
                <div class="vehicle-search-box">
                    <input type="text" id="vehicleSearch" placeholder="Look for a vehicle...">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
            <?php endif; ?>
            <div class="vehicle-list">
                <?php if($kendaraan) : ?>
                    <?php foreach($kendaraan as $data) : ?>
                        <div class="vehicle-card" onclick="window.location.href='home/vehicle_health/<?= $data['kode_unit'] ?>'">
                            <div class="car-icon"><i class="fas fa-car-side"></i></div>
                            <div class="vehicle-name"><?= $data['merk'] ?> <?= $data['type'] ?></div>
                            <div class="vehicle-plate"><?= $data['nopol'] ?></div>
                            <div class="vehicle-type"><?= $data['jenis_kendaraan'] ?> - <?= $data['transmisi'] ?></div>
                            <div class="vehicle-year"><?= $data['tahun'] ?></div>
                            <div class="arrow"><i class="fas fa-arrow-right"></i></div>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <div style="text-align:center; color:#fff; margin-top:24px; font-size:1.1rem;">No vehicles were found.</div>
                <?php endif; ?>
            </div>
            <div id="noResultMsg"
                style="display:none; text-align:center; color:#fff; margin-top:24px; font-size:1.1rem;">
                Tidak ada kendaraan ditemukan.
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
    function searchVehicle() {
        const query = document.getElementById('vehicleSearch').value.toLowerCase();
        const cards = document.querySelectorAll('.vehicle-card');
        let found = false;
        cards.forEach(card => {
            const text = card.textContent.toLowerCase();
            if (text.includes(query)) {
                card.style.display = '';
                found = true;
            } else {
                card.style.display = 'none';
            }
        });
        document.getElementById('noResultMsg').style.display = found ? 'none' : '';
    }

    document.getElementById('searchBtn').addEventListener('click', searchVehicle);
    document.getElementById('vehicleSearch').addEventListener('input', searchVehicle);

    let touchStartX = 0;
    let touchEndX = 0;

    document.body.addEventListener('touchstart', function (e) {
        touchStartX = e.changedTouches[0].screenX;
    });

    document.body.addEventListener('touchend', function (e) {
        touchEndX = e.changedTouches[0].screenX;
        if (touchStartX - touchEndX > 80) { // swipe left threshold
            window.location.href = 'recommendation';
        }
    });
</script>

</html>