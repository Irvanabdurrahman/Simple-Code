<?php
echo "Menampilkan Nilai Faktorial<br>";
$n=5;
$j=1;
echo $n. "! = ";
for($i=$n;$i>=1;$i--){
	echo " $i";
	$j=$i*$j;
	if($i<=1){
		echo " = ".$j;
	}else{
		echo " * ";
	}
	
}
?>