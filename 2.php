<?php

$serveri = 'localhost';
$momxmarebeli = 'root';
$paroli = '';
$baza = 'test';

$dakavshireba = mysqli_connect($serveri, $momxmarebeli, $paroli, $baza);

if (!$dakavshireba)
{
    die("<p style='color:red; text-align:center; font-weight: bold;'>".'შეცდომა მონაცემთა ბაზასთან კავშირისას: '.mysqli_connect_error()."</p>");
}

echo ("<p style='color:blue; text-align:center; font-weight: bold;'>".'მონაცემთა ბაზასთან კავშირი წარმატებით დამყარდა!'."</p>");

?>