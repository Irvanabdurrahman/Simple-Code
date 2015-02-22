<?php
echo "<h2>&raquo; MENAMPILKAN KELIPATAN TIGA DAN LIMA</h2></p>";
for ($i=1;$i<=100;$i++){
	if(($i%3==0)&&($i%5==0)){
		echo "<b>KELIPATAN TIGA DAN LIMA = </b>";
	}else if($i%3==0){
		echo "<b>KELIPATAN TIGA = </b>";
	}else if($i%5==0){
		echo "<b>KELIPATAN LIMA = </b>";
	}
	echo "Nilai ".$i."</br>";
}
?>