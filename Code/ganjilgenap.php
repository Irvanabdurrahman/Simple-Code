<?php
echo "<h2>&raquo; MENENTUKAN BILANGAN GANJIL DAN GENAP</h2></p>";
for($i=1;$i<=100;$i++){
	if($i%2==0){
		echo "<b>GENAP</b> ";
	}else{
		echo "<b>GANJIL</b> ";
	}
	echo $i. "</br>";

}
?>