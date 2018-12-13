<?php
include "is_analizi.php";
?>
<!DOCTYPE html>
<html>

<head>
<title> YANGIN RAPORU GİRİŞ FORMU </title>
<meta charset="utf8">

<link href="form.css" type="text/css" rel="stylesheet"/>
</head>



<body style="background-color:#e1d3d5">


<div class="container">
<form class="form-signin" action="is_analizi2.php" method="POST">
<h1 class="yazi">İtfaiye Yangın Raporu</h1>
<img src="C:\Users\TOSHIBA\Desktop\İş analiz(İtfaiye Projesi)/izmir.jpg" width="120" height="120"/>
<img src="C:\Users\TOSHIBA\Desktop\İş analiz(İtfaiye Projesi)/izmir-itfaiyesi-logo.png" width="120" height="120"/>
 <br><br><hr><hr>
<fieldset><i><big><strong><legend>Kayıt Bilgileri</strong></big></i></legend>
<br>
 


 

Kayıt No:<input type="number" name='kayit_no'>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

Bildirim Sıra No:<input type="number" name='sira_no'>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Olay Tarihi:<input type="date" name="olay_tarihi">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Bildirimi Alan:<input type="text" name="bildirim_alan">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br>
  
Kayıt Tarihi:<input type="date" name="kayit_tarihi">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Bildirim Saati:<input type="time" name="bildirim_saati">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Telefon:<input type="tel" name="telefon">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>

<br><label>Bildirilen Adres:</label><textarea type="text" name="bildirilen_adres"></textarea>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br>
<label>Doğru Adresi Seçiniz: </label>&nbsp; &nbsp; &nbsp;
<label>İlçe Seçiniz</label>
<select name="ilce_id" id="ilce_id">
	<option value="0" selected>İlçe Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from ilce");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["ilce_id"].'">'.$tumu["ilce_ad"].'</option>';
		}
	?>
</select>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<label>Mahalle Seçiniz</label>
<select name="mahalle_id" id="mahalle_id">
	<option value="0" selected>Mahalle Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from mahalle");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["mahalle_id"].'">'.$tumu["mahalle_ad"].'</option>';
		}
	?>
</select>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<label>Sokak Seçiniz</label>
<select name="sokak_id" id="sokak_id">
	<option value="0" selected>Sokak Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from sokak");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["sokak_id"].'">'.$tumu["sokak_ad"].'</option>';
		}
	?>
</select>



</fieldset>
<br>

<hr><hr><br>
<fieldset><legend><i><big><strong>Yangın Bilgileri</strong></big></i></legend>
 <br>


 

<label>Yangın Türü</label>
<select name="yangin_tur_id" id="yangin_tur_id">
	<option value="0" selected>Yangın Türü Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from yangin_tur");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["yangin_tur_id"].'">'.$tumu["yangin_turu"].'</option>';
		}
	?>
</select>&nbsp; &nbsp; &nbsp; 
<label>Yangın Sınıfı</label>
<select name="yangin_sinif_id" id="yangin_sinif_id">
	<option value="0" selected>Yangın Sınıfı Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from yangin_sinif ");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["yangin_sinif_id"].'">'.$tumu["yangin_sinifi"].'</option>';
		}
	?>
</select>

&nbsp; &nbsp; &nbsp; 
<label>Yangın Sebebi</label>
<select name="yangin_sebep_id" id="yangin_sebep_id">
	<option value="0" selected>Yangın Sebebi Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from yangin_sebep");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["yangin_sebep_id"].'">'.$tumu["yangin_sebebi"].'</option>';
		}
	?>
</select>
&nbsp; &nbsp; &nbsp; 

<label>Yapı Şekli</label>
<select name="yapi_sekil_id" id="yapi_sekil_id">
	<option value="0" selected>Yapı Şeklini Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from yangin_yapi_sekil");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["yapi_sekil_id"].'">'.$tumu["yapi_sekil"].'</option>';
		}
	?>
</select>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

<label>Kullanım Şekli</label>
<select name="kullanim_sekil_id" id="kullanim_sekil_id">
	<option value="0" selected>Kullanım Şeklini Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from kullanim_sekil");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["kullanim_sekil_id"].'">'.$tumu["kullanim_sekli"].'</option>';
		}
	?>
</select>
<br><br>
<label>Söndürme Türü</label>
<select name="sondurme_tur_id" id="sondurme_tur_id">
	<option value="0" selected>Söndürme Türü Seçiniz</option>
	<?php
		$sql= mysqli_query($baglan,"select * from sondurme_turu");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["sondurme_tur_id"].'">'.$tumu["sondurme_turu"].'</option>';
		}
	?>
</select>


&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Söndürme Miktarı:</td><td><input type="text" name="miktar"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Olay Durumu:</td><td><textarea type="text" name="olay_durumu"></textarea></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Çıkış Nedeni:</td><td><input type="text" name="cikis_nedeni"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp;<tr><td>Yangın Kontrol Saati:</td><td><input type="time" name="yangin_kontrol_saati"></td></tr><br><br>

<tr><td>Söndürme Sonunda Hasar Durumu:</td><td>
<textarea type="text" name="hasar_durumu"></textarea></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Araç-gereç kaybı:</td><td><input type="text" name="arac_gerec_kaybi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Yangın Yeri Kime Teslim Edildi:</td><td><input type="text" name="yangin_teslim_edilis"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Yangın Sahibi:</td><td><input type="text" name="yangin_sahibi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
<tr><td>Elektrik Arıza Geliş Saati:</td><td><input type="time" name="elektrik_ariza_gelis"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>112 Acil Servis Geliş Saati:</td><td><input type="time" name="acil_servis_gelis"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Doğalgaz Geliş Saati:</td><td><input type="time" name="dogalgaz_gelis"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Emniyet-Jandarma Geliş Saati:</td><td><input type="time" name="emniyet_gelis"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Üst Amir:</td><td><input type="text" name="ust_amir"></td></tr>
<tr><td>Ekip Amiri:</td><td><input type="text" name="ekip_amir"></td></tr>
<tr><td>İtfaiye Bölge Amiri:</td><td><input type="text" name="itfaiye_bolge_amir"></td></tr>
<tr><td>itfaiye Eri:</td><td><input type="text" name="itfaiye_er"></td></tr>
<tr><td>itfaiye Birim Amiri:</td><td><input type="text" name="itfaiye_birim_amir"></td></tr>
<tr><td>Şirket Adı:</td><td><input type="text" name="sirket_adi"></td></tr>
<tr><td>Bedel:</td><td><input type="number" name="bedel"></td></tr>

 

 
</fieldset>


<hr><hr><br>

<fieldset><legend><i><big><strong>Ekip Bilgileri</strong></big></i></legend>
 
<br>
<td>Ana Ekip Amiri:</td><td><input type="text" name="amir"/></td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<td>Ana Ekip İD:</td><td><input type="number" name="ana_ekip_id"/></td>  
<tr><td>Araç Sayısı:</td><td><input type="number" name="ana_arac_sayisi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<tr><td>Araç plakası:</td><td><input type="text" name="ana_plaka_no"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Personel sayısı:</td><td><input type="number" name="personel_sayisi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Çıkış saati:</td><td><input type="time" name="cikis_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br>
<tr><td>Varış Saati</td><td><input type="time" name="varis_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Dönüş Saati:</td><td><input type="time" name="ekip_donus_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Dönüş Tarihi:</td><td><input type="date" name="ekip_donus_tarihi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br>

<tr><td>Yardımcı Ekip Amiri</td><td><input type="text" name="yard_amir"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Yardımcı Ekip ID</td><td><input type="number" name="yardimci_ekip_id"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Araç Sayısı:</td><td><input type="number" name="yardimci_arac_sayisi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Araç plakası:</td><td><input type="text" name="yardimci_plaka_no"></td></tr> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Personel sayısı:</td><td><input type="number" name="yard_personel_sayisi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Çıkış saati:</td><td><input type="time" name="yard_cikis_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
<tr><td>Varış Saati</td><td><input type="time" name="yard_varis_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Dönüş Saati:</td><td><input type="time" name="yard_ekip_donus_saati"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Dönüş Tarihi:</td><td><input type="date" name="yard_ekip_donus_tarihi"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;



 
</fieldset>
<hr><hr><br>

<fieldset><legend><i><big><strong>Kayıp-Yaralı</strong></big></i></legend>
 
<br> 
<td>Ölen İtfaiyeci:</td><td><input type="textarea" name="olen_itfaiye"></td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Ölen Halk:</td><td><input type="text" name="olen_halk"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Yaralı Halk:</td><td><input type="text" name="yarali_halk"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<tr><td>Yaralı İtfaiyeci:</td><td><input type="text" name="yarali_itfaiye"></td></tr>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;


 
 

 
</fieldset>
<br>
<button style="width:200px;height:50px;color:red;background-color:#4f4042"  id="gonder" type="submit" name="gonder" ><em><strong><big>Formu Gönder</big></strong></em></button>

</form>
</div>
</body>

</html>
















