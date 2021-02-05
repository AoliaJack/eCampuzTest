<?php
$i = 1;
for ($i; $i<=50; $i++) {
    if(($i%3 == 0) && ($i%5 == 0)) {
        echo "Foo Bar <br>";
    }
    else if ($i%3 == 0) {
        echo "Foo <br>";
    }
    else if ($i%5 == 0) {
        echo "Bar <br>";
    }
    
    else {
        echo $i . "<br>";
    }
}