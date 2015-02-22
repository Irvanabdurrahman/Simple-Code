<?php
$n=10;
for($a=$n;$a>=1;$a--){
	for($b=$n;$b>=$a;$b--)
	echo "  ";{
		for($b=$a;$b>=1;$b--)
		echo "* ";
		echo "</br>";		
	}
}
for($a=2;$a<=$n;$a++){
	for($b=$a;$b<=$n;$b++){
		echo " ";
	}{
		for($b=1;$b<=$a;$b++)
		echo "* ";
		echo "<br>";
	}
}
?>