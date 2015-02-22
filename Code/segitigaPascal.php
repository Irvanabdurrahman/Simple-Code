<?php
echo "<h2>&raquo; MENAMPILKAN SEGITIGA PASCAL</h2><p>";
$hasil='';
$n = 10;
for($i=1;$i<=$n;$i++){
	for($j=1;$j<=$i;$j++){
		if($j==1 || $j==$i){
			$value[$i][$j] = 1;
		}else{
			$value[$i][$j] = $value[$i-1][$j] + $value[$i-1][$j-1];
		}
		$hasil .= $value[$i][$j]." ";
	}
	$hasil .= "<br>";
}
echo "<center><pre>".$hasil."</pre></center>";
?>