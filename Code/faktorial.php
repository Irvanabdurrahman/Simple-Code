<?php
echo "<h2>&raquo; MENAMPILKAN FAKTORIAL</h2><p>";
	$a=10;
	echo $a. "! = ";
	for($i=$a;$i>=1;$i--){
		echo $i;
		if($i==1){
			echo '';
		}else{
			echo " * ";
		}
	}	

?>