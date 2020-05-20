
<?php
$pesan = $this->session->flashdata('error');
?>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-5">
                <img src="<?php echo base_url();?>assets2/akunbaru2.png">
                <?php echo validation_errors();?>
                <div class="basic-login">
                    <?php echo form_open_multipart('Utama/simpanInvestor')?>
                    <form role="form">
                        <h3>Daftar Investor</h3>
                        <br>
                        <?php
                        if (isset($pesan)){ ?>
                            <script>
                                window.addEventListener("load", function(){
                                    // ....
                                    passwordTidakValid();
                                });
                            </script>
                     <?php   } ?>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Nama</b></label>
                            <input class="form-control" id="txt_name" name="txt_name" type="text" placeholder="" required
                            value="<?php echo set_value('txt_name')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Email</b></label>
                            <input class="form-control" id="txt_email" name="txt_email" type="text" placeholder=""
                               required    value="<?php echo set_value('txt_email')?>">
                        </div>
                        <script>
                            function hanyaAngka(evt) {
                                var charCode = (evt.which) ? evt.which : event.keyCode
                                if (charCode > 31 && (charCode < 48 || charCode > 57))

                                    return false;
                                return true;
                            }
                        </script>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>No. Telepon</b></label>
                            <input class="form-control" onkeypress="return hanyaAngka(event)" id="txt_notelp" name="txt_notelp" type="text" placeholder=""
                                required   value="<?php echo set_value('txt_notelp')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>No. Rekening</b></label>
                            <input class="form-control" onkeypress="return hanyaAngka(event)" id="txt_norek" name="txt_norek" type="text" placeholder=""
                               required    value="<?php echo set_value('txt_norek')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Alamat</b></label>
                            <textarea required id="txt_alamat" class="form-control" name="txt_alamat" rows="7" value="<?php echo set_value('txt_alamat')?>"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="register-password"><i class="icon-lock"></i> <b>Password</b></label>
                            <input class="form-control" required id="txt_password" name="txt_password" type="password" placeholder="" value="<?php echo set_value('txt_password')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-password2"><i class="icon-lock"></i> <b>Re-enter Password</b></label>
                            <input class="form-control" required id="txt_konfir_psw" name="txt_konfir_psw" type="password" placeholder="" value="<?php echo set_value('txt_konfir_psw')?>">
                        </div>
                        <div class="form-group">
                            <button type="submit" id="register_investor" name="register_investor" class="btn pull-right">Daftar</button>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                    <?php echo  form_close(); ?>

                    <script>
                        function sweet (){
                            swal("Good job!", "You clicked the button!", "success");
                        }
                        function biasa() {
                            swal("Your message");
                        }
                        function withTime() {
                            swal({
                                title: "Alert dengan waktu",
                                text: "Pesan ini akan hilang dalam 2 detik",
                                timer: 2000
                            });
                        }
                        function stokHabis() {
                            swal("Stok Habis!", "Anda tidak bisa membeli barang ini karena stoknya telah habis", "error");
                        }
                        function passwordTidakValid() {
                            swal("Konfirmasi Password tidak valid!", "Konfirmasi password yang anda isi tidak valid", "error");
                        }

                        window.addEventListener("load", function(){
                            // ....

                        });
                    </script>
                </div>
            </div>
            <div class="col-sm-6 col-sm-offset-1 social-login">

            </div>
        </div>
    </div>
</div>