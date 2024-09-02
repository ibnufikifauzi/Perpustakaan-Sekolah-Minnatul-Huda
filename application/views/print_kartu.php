<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cetak Kartu</title>

    <style>
        table {
                border: 1px solid black;
            }
        /* th {
                border: 1px solid black;
            }
        tr {
                border: 1px solid black;
            }
        td {
                border: 1px solid black;
            } */
    </style>
</head>
<body>

<table>
    <tr>
        <th rowspan="2"><img style="height: 100px;width: 100px"  src="<?php echo base_url(); ?>assets/img/backgrounds/Logo.JPG" alt=""></th>
        <th colspan="3">KARTU ANGGOTA PERPUSTAKAAN
            <br>
            SMK IT MINNATUL HUDA
            <hr style="height: 1px;width: 350px" color="black" >
        </th>
    </tr>
            <?php
                foreach($KARTU_ANGGOTA as $kartu): ?>
            <tr>
                <th colspan="3" style="font-size: 12px;width: 450px;">Jl. GG Coklat Kp. Cibogo Pentas RT. 018/009 
                    <br>
                    Desa Cibogo Hilir Kecamatan Plered Kabupaten Purwakarta
                </th>
            </tr>
            <tr>
                <td colspan="4"><hr style="height: 1px;width: 550px" color="black" ></td>
            </tr>
            <tr>
                <td rowspan="6" style="height: 130px;width: 130px"><center><img style="height: 110px;width: 100px"  src="<?php echo base_url(); ?>assets/images/upload/anggota/<?php echo $kartu->FOTO; ?>" alt=""></center></td>
                <td style="height: 25px;width: 130px"></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>&emsp;ID Anggota</td>
                <td>:</td>
                <td>&emsp;&nbsp;<?php echo $kartu->ID_ANGGOTA ?></td>
            </tr>
            <tr>
                <td>&emsp;Nama</td>
                <td>:</td>
                <td>&emsp;&nbsp;<?php echo $kartu->FULL_NAME ?></td>
            </tr>
            <tr>
                <td>&emsp;Tanggal Lahir</td>
                <td>:</td>
                <td>&emsp;&nbsp;<?php echo $kartu->TGL_LAHIR ?></td>
            </tr>
            <tr>
                <td>&emsp;Alamat</td>
                <td>:</td>
                <td>&emsp;&nbsp;<?php echo $kartu->ALAMAT ?>&emsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 25px;width: 130px"></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td style="height: 25px;" colspan="6">
                <hr style="height: 1px;width: 550px" color="black" >
                <center>Barang siapa yang menemukan kartu tersebut 
                <br>
                Harap mengembalikan ke pihak sekolah dengan alamat yang tertera</center> </td>
            </tr>


            <?php endforeach; ?>
            
</table>
                <script type="text/javascript">
                    window.print()
                </script>
    
</body>
</html>