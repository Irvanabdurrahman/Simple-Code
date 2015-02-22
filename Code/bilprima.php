<?php
echo "<h2>&raquo; MENAMPILKAN BILANGAN PRIMA</h2><p>";
for($i=1;$i<=100;$i++){
	 $a = 0;
     for($j=1;$j<=$i;$j++){
        if($i % $j == 0){
                   $a++;
        }
     }
        if($a == 2){
                echo $i. "</br>";
     }
}
?>