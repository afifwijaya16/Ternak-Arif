<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-7">
                <img src="<?php echo base_url();?>assets2/buatproyek.png">
                <?php echo validation_errors();?>
                <div class="basic-login">
                    <br><br>
                    <?php echo form_open_multipart('Peternak/simpanProyek')?>
                    <form role="form">
                        <h3>Ajukan Proyekmu !</h3>
                        <br>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Nama</b></label>
                            <input class="form-control" id="txt_name" name="txt_name" type="text" placeholder=""
                            value="<?php echo set_value('txt_name')?>" required>
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Target Dana</b></label>
                            <input class="form-control" id="txt_targetdana" name="txt_targetdana" type="text" placeholder=""
                                   onkeyup="convertToRupiah(this);"  onkeypress="return hanyaAngka(event)"   value="<?php echo set_value('txt_targetdana')?>" required>
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Lokasi proyek</b></label>
                            <textarea id="txt_lokasi" required class="form-control" name="txt_lokasi" rows="7" value="<?php echo set_value('txt_alamat')?>"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Deskripsi Singkat Proyek</b></label>
                            <textarea id="txt_deskripsi" required class="form-control" name="txt_deskripsi" rows="7" value="<?php echo set_value('txt_deskripsi')?>"></textarea>
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
                            <label for="register-username"><i class="icon-user"></i> <b>Batas Penggalangan Dana</b></label>
                            <input class="form-control" required id="txt_batasgalang" name="txt_batasgalang" type="date" placeholder=""
                                   value="<?php echo set_value('txt_batasgalang')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Waktu Mulai Proyek</b></label>
                            <input class="form-control" required id="txt_mulai" name="txt_mulai" type="date" placeholder=""
                                   value="<?php echo set_value('txt_mulai')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Waktu Akhir Proyek</b></label>
                            <input class="form-control" required id="txt_akhir" name="txt_akhir" type="date" placeholder=""
                                   value="<?php echo set_value('txt_akhir')?>">
                        </div>
                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Kategori</b></label>
                            <select onchange="kategoriChange()" id="txt_kategori" required name="txt_kategori" class="form-control">
                                <option value="Kambing">Kambing</option>
                                <option value="Sapi">Sapi</option>
                                <option value="Ayam">Ayam</option>
                            </select>
                        </div>

                        <script>
                            var d;
                            function kategoriChange() {
                                d = document.getElementById("txt_kategori").value;
                                if (d == "Sapi"){
                                    document.getElementById("txt_hasil_ternak").selectedIndex = 0;
                                }else if (d == "Kambing"){
                                    document.getElementById("txt_hasil_ternak").selectedIndex = 0;
                                }else if (d == "Ayam"){
                                    document.getElementById("txt_hasil_ternak").selectedIndex = 3;
                                }
                            }
                        </script>


                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Hasil Ternak</b></label>
                            <select id="txt_hasil_ternak" required name="txt_hasil_ternak" class="form-control">
                                <option value="Daging">Daging</option>
                                <option value="Telur">Telur</option>
                                <option value="Bulu">Bulu</option>
                                <option value="DagingTelur">Daging (Ayam) & Telur</option>
                                <option value="DagingBulu">Daging (Kambing) & Bulu</option>
                            </select>
                        </div>

                        <script>
                            function tesAlert() {
                                alert(d)
                            }
                        </script>

                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Estimasi Profit ( % )</b></label>
                            <input class="form-control" id="txt_estimasi" name="txt_estimasi" type="text" placeholder=""
                                   onkeypress="return hanyaAngka(event)"     value="<?php echo set_value('txt_estimasi')?>" required>
                        </div>

                        <div class="form-group">
                            <label for="register-username"><i class="icon-user"></i> <b>Upload foto surat usaha</b></label>
                            <input type="file" required name="img_siup" id="img_siup" class="form-control">
                        </div>
                            <div class="form-group">
                                <button type="submit" id="register_proyek" name="register_proyek" class="btn pull-right">Next</button>
                                <div class="clearfix"></div>
                            </div>
                    </form>
                    <?php echo  form_close(); ?>
                </div>
            </div>
            <div class="col-sm-6 col-sm-offset-1 social-login">

            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<?php echo base_url();?>assets5/Pemisah.js"></script>