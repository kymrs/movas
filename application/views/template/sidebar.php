<body>
    <header>
        <div class="image">
            <img src="<?= base_url() ?>assets/img/movas-robot.png" alt="person">
        </div>
        <h1><?= $this->session->userdata('perusahaan') ?></h1>
        <nav>
            <a href="<?= base_url('home') ?>" class="<?= (isset($menu) && $menu === 'vehicle_list') ? 'active' : '' ?>">Vehicle List</a>
            <a href="<?= base_url('recommendation') ?>" class="link-center <?= (isset($menu) && $menu === 'recommendation') ? 'active' : '' ?>">Recommendation</a>
            <a href="<?= base_url('history') ?>" class="<?= (isset($menu) && $menu === 'history') ? 'active' : '' ?>">History</a>
        </nav>
    </header>
    <aside>
        <div class="content">
            <div class="image">
                <img src="<?= base_url() ?>assets/img/movas-robot.png" alt="person">
            </div>
            <h1><?= $this->session->userdata('perusahaan') ?></h1>
            <nav>
                <a href="<?= base_url('home') ?>" class="<?= (isset($menu) && $menu === 'vehicle_list') ? 'active' : '' ?>">Vehicle List</a><br>
                <a href="<?= base_url('recommendation') ?>" class="<?= (isset($menu) && $menu === 'recommendation') ? 'active' : '' ?>">Recommendation</a><br>
                <a href="<?= base_url('history') ?>" class="<?= (isset($menu) && $menu === 'history') ? 'active' : '' ?>">History</a>
            </nav>
        </div>
        <a class="btn-logout" href="<?= base_url('auth/logout') ?>"><i class="fas fa-sign-out-alt"></i> Logout</a>
        <p class="copyright">© 2025 MOVAS. All rights reserved. · Version 1.0</p>
    </aside>