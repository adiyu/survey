<!doctype html>
<html lang="en">

    <head>
        
        <meta charset="utf-8" />
        <title>Login | Pelatihan dan Kuesioner</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<?= base_url(); ?>/public/assets/admin/images/favicon.ico">
        <!-- Bootstrap Css -->
        <link href="<?= base_url(); ?>/public/assets/admin/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="<?= base_url(); ?>/public/assets/admin/css/icons.min.css" rel="stylesheet" type="text/css" />        <!-- App Css-->
        <link href="<?= base_url(); ?>/public/assets/admin/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <link href="<?= base_url(); ?>/public/assets/toastr/toastr.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body>
        <div class="account-pages my-5 pt-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card overflow-hidden">
                            <div class="bg-primary bg-soft">
                                <div class="row">
                                    <div class="col-7">
                                        <div class="text-primary p-4">
                                            <h5 class="text-primary">Selamat Datang !</h5>
                                            <p>Silahkan Login Untuk Masuk Ke Halaman Administrator.</p>
                                        </div>
                                    </div>
                                    <div class="col-5 align-self-end">
                                        <img src="<?= base_url(); ?>/public/assets/admin/images/profile-img.png" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body pt-0"> 
                                <div class="auth-logo">
                                    <a href="index.html" class="auth-logo-light">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="<?= base_url(); ?>/public/assets/admin/images/logo-light.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>

                                    <a href="index.html" class="auth-logo-dark">
                                        <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="<?= base_url(); ?>/public/assets/admin/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2">
                                    <form class="form-horizontal" method="POST" action="<?= base_url() ?>/authentication/attempLogin" id="form-login">
        
                                        <div class="mb-3">
                                            <label for="username" class="form-label">Username</label>
                                            <input type="text" class="form-control" name="username" placeholder="Enter username">
                                        </div>
                
                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <div class="input-group auth-pass-inputgroup">
                                                <input type="password" class="form-control" name="password" placeholder="Enter password" aria-label="Password" aria-describedby="password-addon">
                                                <button class="btn btn-light " type="button" id="password-addon"><i class="mdi mdi-eye-outline"></i></button>
                                            </div>
                                        </div>

                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="remember-check">
                                            <label class="form-check-label" for="remember-check">
                                                Remember me
                                            </label>
                                        </div>
                                        
                                        <div class="mt-3 d-grid">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit">Log In</button>
                                        </div>

                                        <!-- <div class="mt-4 text-center">
                                            <a href="auth-recoverpw.html" class="text-muted"><i class="mdi mdi-lock me-1"></i> Forgot your password?</a>
                                        </div> -->
                                    </form>
                                </div>
            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end account-pages -->

        <!-- JAVASCRIPT -->
        <script src="<?= base_url(); ?>/public/assets/admin/libs/jquery/jquery.min.js"></script>
        <script src="<?= base_url(); ?>/public/assets/admin/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?= base_url(); ?>/public/assets/admin/libs/metismenu/metisMenu.min.js"></script>
        <script src="<?= base_url(); ?>/public/assets/admin/libs/simplebar/simplebar.min.js"></script>
        <script src="<?= base_url(); ?>/public/assets/admin/libs/node-waves/waves.min.js"></script>
        
        <!-- App js -->
        <script src="<?= base_url(); ?>/public/assets/admin/js/app.js"></script>
        <script src="<?= base_url(); ?>/public/assets/toastr/toastr.min.js"></script>
        <script src="<?= base_url(); ?>/public/assets/admin/js/loadingoverlay.min.js"></script>
        <script type="text/javascript">            
            $('#form-login').on('submit', function(event) {
                event.preventDefault();
                $.LoadingOverlay('show');
                $.ajax({
                    url: $('#form-login').attr('action'),
                    method: 'POST',
                    data: $('#form-login').serialize(),
                    dataType: 'json',
                }).done(function(data, textStatus, jqXHR) {
                    $.LoadingOverlay('hide');
                    window.location.href = data;    
                }).fail(function(jqXHR, textStatus, errorThrown) {
                    $.LoadingOverlay('hide');
                    msg = jqXHR?.responseJSON?.messages?.error ? jqXHR.responseJSON.messages.error : errorThrown;
                    toastr.error(msg, 'Maaf!');
                }).always(function() {
                });
    });
        </script>
    </body>
</html>
