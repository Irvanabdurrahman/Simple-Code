<?php
echo "<h2>&raquo; MENAMPILKAN BINTANG PERSEGI</h2><p>";
$n=10;
for($a=1;$a<=$n;$a++){
	for($b=1;$b<=$n;$b++){
		if($a==1||$b==1||$a==$n||$b==$n){
			echo " *";
		}else{
			echo " ";
		}
	}
	echo "<br>";
}
?>