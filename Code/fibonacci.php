<?php
echo "<h2>&raquo; MENAMPILKAN DERET FIBONACCI</h2><p>";
$n = 10;
$a = 1;
$b = 1;
echo "$a $b ";
for ($i=0;$i<=$n;$i++){
            $jml = $a + $b;
            echo "$jml ";
            $a = $b;
            $b = $jml;
            }
?>