<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - MOVAS (Mobile Vehicle Assistant)</title>
    <!-- Style -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/reset.css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/login-register.css">
    <link rel="shortcut icon" href="<?= base_url() ?>assets/img/movas-robot.png" type="image/x-icon">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- Swal -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
  <div class="container">
    <div class="box-login">
      <form action="<?= base_url('auth/register') ?>" method="post">
        <img src="<?= base_url() ?>assets/img/movas-robot.png" alt="MOVAS ROBOT">

        <div class="input-group">
          <span class="icon"><i class="fas fa-user"></i></span>
          <input type="text" placeholder="Full Name" required name="fullname">
        </div>
        <div class="input-group">
          <span class="icon"><i class="fas fa-envelope"></i></span>
          <input type="email" placeholder="Email" required name="email">
        </div>
        <div class="input-group">
          <span class="icon"><i class="fas fa-phone-alt"></i></span>
          <input type="text" placeholder="Phone Number" required name="telp">
        </div>
        <div class="input-group">
          <span class="icon"><i class="fas fa-building"></i></span>
          <input type="text" placeholder="Perusahaan" required name="perusahaan">
        </div>
        <div class="input-group">
          <span class="icon"><i class="fas fa-user-tie"></i></span>
          <input type="text" placeholder="Jabatan" required name="jabatan">
        </div>
        <div class="input-group">
          <span class="icon"><i class="fas fa-lock"></i></span>
          <input type="password" placeholder="Password" required id="password-input" name="password">
          <span class="icon toggle-password" onclick="togglePassword()">
            <i class="fas fa-eye" id="toggle-password-icon"></i>
          </span>
        </div>
        <button type="submit" class="btn-login">SUBMIT</button>
      </form>
      <p>Already have an account? <a href="<?= base_url('auth') ?>">Log in now.</a></p>
    </div>
  </div>

    <?php if ($this->session->flashdata('error')): ?>
        <script>
            Swal.fire({
                icon: 'error',
                title: '<span style="color:#047DFF;font-weight:600;font-size:1.2em;">Registrasi Gagal</span>',
                html: '<div style="color:#333;font-size:1em;margin-top:8px;"><?= addslashes($this->session->flashdata('error')); ?></div>',
                background: '#fff',
                confirmButtonColor: '#047DFF',
                confirmButtonText: '<span style="font-weight:500;">Coba Lagi</span>',
                customClass: {
                    popup: 'swal2-border-radius'
                }
            });
        </script>
    <?php endif; ?>

  <!-- Font Awesome untuk ikon -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</body>
<script>
    function togglePassword() {
      const input = document.getElementById('password-input');
      const icon = document.getElementById('toggle-password-icon');
      if (input.type === 'password') {
        input.type = 'text';
        icon.classList.remove('fa-eye');
        icon.classList.add('fa-eye-slash');
      } else {
            input.type = 'password';
        icon.classList.remove('fa-eye-slash');
        icon.classList.add('fa-eye');
      }
    }
</script>
</html>