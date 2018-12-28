<?php

require("is_analizi.php");
if(!$baglan){ 
	die("Bağlantı Başarısız".mysqli_connect_error());
}
else
{
	echo "Bağlantı Başarılı";
}
$gonder = $_POST["gonder"];
if(isset($gonder)){
		
		$kayit_no = $_POST['kayit_no'];
		$sira_no = $_POST['sira_no'];
		$telefon = $_POST['telefon'];
		$yangin_tur_id=$_POST['yangin_tur_id'];
		$yangin_sinif_id=$_POST['yangin_sinif_id'];
		$yangin_sebep_id=$_POST['yangin_sebep_id'];
		$yapi_sekil_id=$_POST['yapi_sekil_id'];
		$kullanim_sekil_id=$_POST['kullanim_sekil_id'];
		$olay_tarihi=$_POST['olay_tarihi'];
		$kayit_tarihi=$_POST['kayit_tarihi'];
		$bildirim_alan=$_POST['bildirim_alan'];
		$bildirim_saati=$_POST['bildirim_saati'];
		$yangin_sahibi=$_POST['yangin_sahibi'];
		$yangin_kontrol_saati=$_POST['yangin_kontrol_saati'];
		$olay_durumu=$_POST['olay_durumu'];
		$hasar_durumu=$_POST['hasar_durumu'];
		$cikis_nedeni=$_POST['cikis_nedeni'];
		$arac_gerec_kaybi=$_POST['arac_gerec_kaybi'];
		$yangin_teslim_edilis=$_POST['yangin_teslim_edilis'];
		$elektrik_ariza_gelis=$_POST['elektrik_ariza_gelis'];
		$acil_servis_gelis=$_POST['acil_servis_gelis'];
		$emniyet_gelis=$_POST['emniyet_gelis'];
		$dogalgaz_gelis=$_POST['dogalgaz_gelis'];
		$sirket_adi=$_POST['sirket_adi'];
		$bedel=$_POST['bedel'];
		$ust_amir=$_POST['ust_amir'];
		$ekip_amir=$_POST['ekip_amir'];
		$itfaiye_bolge_amir=$_POST['itfaiye_bolge_amir'];
		$itfaiye_er=$_POST['itfaiye_er'];
		$itfaiye_birim_amir=$_POST['itfaiye_birim_amir'];
		$bildirilen_adres=$_POST['bildirilen_adres'];
		$olen_halk=$_POST['olen_halk'];
		$olen_itfaiye=$_POST['olen_itfaiye'];
		$yarali_halk=$_POST['yarali_halk'];
		$yarali_itfaiye=$_POST['yarali_itfaiye'];
		
		$ilce_id=$_POST['ilce_id'];
		$mahalle_id=$_POST['mahalle_id'];
		$sokak_id=$_POST['sokak_id'];
		
		
		//$amir=$_POST['amir'];
		$cikis_saati=$_POST['cikis_saati'];
		$varis_saati=$_POST['varis_saati'];
		$personel_sayisi=$_POST['personel_sayisi'];
		$ekip_donus_tarihi=$_POST['ekip_donus_tarihi'];
		$ekip_donus_saati=$_POST['ekip_donus_saati'];
		$ana_ekip_id=$_POST['ana_ekip_id'];
		$kayit_no = $_POST['kayit_no'];
		$ana_arac_sayisi=$_POST['ana_arac_sayisi'];
		$ana_plaka_no=$_POST['ana_plaka_no'];
		$ana_ekip_id=$_POST['ana_ekip_id'];
		
		
		$kayit_no = $_POST['kayit_no'];
		$yardimci_ekip_id=$_POST['yardimci_ekip_id'];
		//$yard_amir=$_POST['yard_amir'];
		$yard_cikis_saati=$_POST['yard_cikis_saati'];
		$yard_varis_saati=$_POST['yard_varis_saati'];
		$yard_personel_sayisi=$_POST['yard_personel_sayisi'];
		$yard_ekip_donus_tarihi=$_POST['yard_ekip_donus_tarihi'];
		$yard_ekip_donus_saati=$_POST['yard_ekip_donus_saati'];
		$yardimci_ekip_id=$_POST['yardimci_ekip_id'];
		$yardimci_arac_sayisi=$_POST['yardimci_arac_sayisi'];
		$yardimci_plaka_no=$_POST['yardimci_plaka_no'];
		
		
		$kayit_no = $_POST['kayit_no'];
		$sondurme_tur_id=$_POST['sondurme_tur_id'];
		$miktar=$_POST['miktar'];
		
		
		$sql= "INSERT INTO `yangin` (`kayit_no`, `yangin_tur_id`, `yangin_sinif_id`, `yangin_sebep_id`, `yapi_sekil_id`, `kullanim_sekil_id`, `sira_no`, `olay_tarihi`,`kayit_tarihi`,`bildirim_alan`, `bildirim_saati`, `telefon`, `yangin_sahibi`, `yangin_kontrol_saati`, `olay_durumu`, `hasar_durumu`, `cikis_nedeni`, `arac_gerec_kaybi`, `yangin_teslim_edilis`, `elektrik_ariza_gelis`, `acil_servis_gelis`, `emniyet_gelis`, `dogalgaz_gelis`,`bildirilen_adres`, `olen_halk`, `olen_itfaiye`, `yarali_halk`, `yarali_itfaiye`,`ilce_id`,`mahalle_id`,`sokak_id`,`ust_amir`,`ekip_amir`,`itfaiye_bolge_amir`,`itfaiye_er`,`itfaiye_birim_amir`) 
		
		VALUES ('$kayit_no','$yangin_tur_id', '$yangin_sinif_id', '$yangin_sebep_id', '$yapi_sekil_id', '$kullanim_sekil_id', '$sira_no','$olay_tarihi', '$kayit_tarihi', '$bildirim_alan','$bildirim_saati', '$telefon', '$yangin_sahibi', '$yangin_kontrol_saati', '$olay_durumu', '$hasar_durumu', '$cikis_nedeni', '$arac_gerec_kaybi', '$yangin_teslim_edilis','$elektrik_ariza_gelis','$acil_servis_gelis','$emniyet_gelis','$dogalgaz_gelis','$bildirilen_adres','$olen_halk', '$olen_itfaiye', '$yarali_halk', '$yarali_itfaiye','$ilce_id','$mahalle_id','$sokak_id','$ust_amir','$ekip_amir','$itfaiye_bolge_amir','$itfaiye_er','$itfaiye_birim_amir')";
		
		$sql1="INSERT INTO `ana_ekip` (`kayit_no`, `ana_ekip_id`, `cikis_saati`, `varis_saati`, `personel_sayisi`, `ekip_donus_tarihi`, `ekip_donus_saati`) 
		VALUES ('$kayit_no', '$ana_ekip_id', '$cikis_saati', '$varis_saati', '$personel_sayisi', '$ekip_donus_tarihi', '$ekip_donus_saati')";
		
		$sql2="INSERT INTO `ana_ekip_arac` (`ana_arac_sayisi`, `ana_plaka_no`, `ana_ekip_id`) VALUES ('$ana_arac_sayisi', '$ana_plaka_no', '$ana_ekip_id')";
		
		$sql3="INSERT INTO `yardimci_ekip` (`kayit_no`, `yard_cikis_saati`, `yard_varis_saati`, `yard_personel_sayisi`, `yard_ekip_donus_tarihi`, `yard_ekip_donus_saati`, `yardimci_ekip_id`) VALUES ('$kayit_no', '$yard_cikis_saati', '$yard_varis_saati', '$yard_personel_sayisi', '$yard_ekip_donus_tarihi', '$yard_ekip_donus_saati', '$yardimci_ekip_id')";
		
		$sql4="INSERT INTO `yardimci_ekip_arac` (`yardimci_ekip_id`, `yardimci_arac_sayisi`, `yardimci_plaka_no`) VALUES ('$yardimci_ekip_id', '$yardimci_arac_sayisi', '$yardimci_plaka_no')";
		
		$sql5="INSERT INTO `sondurme_turler` (`kayit_no`, `sondurme_tur_id`, `miktar`) VALUES ('$kayit_no', '$sondurme_tur_id', '$miktar')";
		
		
		$srg=mysqli_query($baglan,$sql) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg)>0){
			//	while($row=mysqli_fetch_array($srg)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
		$srg1=mysqli_query($baglan,$sql1) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg1)>0){
			//	while($row=mysqli_fetch_array($srg1)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
		$srg2=mysqli_query($baglan,$sql2) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg2)>0){
			//	while($row=mysqli_fetch_array($srg2)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
		$srg3=mysqli_query($baglan,$sql3) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg3)>0){
			//	while($row=mysqli_fetch_array($srg3)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
		$srg4=mysqli_query($baglan,$sql4) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg4)>0){
			//	while($row=mysqli_fetch_array($srg4)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
		$srg5=mysqli_query($baglan,$sql5) or die("MySQL error: " . mysqli_error($baglan));
		//if(mysqli_num_rows($srg5)>0){
			//	while($row=mysqli_fetch_array($srg5)){ 
			
				//}
		//}else{
			//	echo "Kayıt Bulunamadı";
				
		//}
			//if($sql){
              //  echo "Başarılı Bir Şekilde Eklendi !";
          //  }else{
                //echo "Bir Sorun Oluştu";
           // }
}
mysqli_close($baglan); 
?>


