<div class="">
    <div class="page-title" style="padding: 8px">
        <div class="title_left">
            <h1><i class="fa fa-users"></i>  Detail Anggota</h1>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2><?php echo $row->FULL_NAME; ?></h2>
                    <?php if($this->session->userdata('role')=='superadmin'){echo '<h2 class="pull-right" style="color: #E0E0E0">created at '.$row->D_CREATED.' </h2>';} ?>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-md-3">
                            <img class="pull-right" style="height: 220px;width: 240px" src="<?php echo base_url(); ?>assets/images/upload/anggota/<?php echo $row->FOTO; ?>">
                        </div>
                        <div class="col-md-6">
                            <?php
                                $jenkel = $row->GENDER;
                                if($jenkel == 'L'){
                                    $jenkel = 'Laki-laki';
                                }else{
                                    $jenkel = 'Perempuan';
                                }
                            ?>

                            <table  width="500px">
                            <tr>
                            <th width="200px" height="30px">ID Anggota</th>
                            <th width="10px">:</th>
                            <th width="300px" height="30px">&emsp;&nbsp;<?php echo $row->ID_ANGGOTA ?></th>
                            </tr>
                            <tr>
                            <td height="30px">Nama Lengkap</td>
                            <td>:</td>
                            <td>&emsp;&nbsp;<?php echo $row->FULL_NAME ?></td>
                            </tr>
                            <tr>
                            <td height="30px">Tempat Lahir</td>
                            <td>:</td>
                            <td>&emsp;&nbsp;<?php echo $row->TMP_LAHIR ?></td>
                            </tr>
                            <tr>
                            <td height="30px"> Tanggal Lahir</td>
                            <td>:</td>
                            <td> &emsp;&nbsp;<?php echo $row->TGL_LAHIR ?></td>
                            </tr>
                            <tr>
                            <td height="30px"> Jenis Kelamin</td>
                            <td>:</td>
                            <td> &emsp;&nbsp;<?php echo $jenkel ?></td>
                            </tr>
                            <tr>
                            <td height="30px">Alamat</td>
                            <td>:</td>
                            <td>&emsp;&nbsp;<?php echo $row->ALAMAT ?></td>
                            </tr>
                            <tr>
                            <td height="30px">No. Telepon</td>
                            <td>:</td>
                            <td>&emsp;&nbsp;<?php echo $row->TELP ?></td>
                            </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
