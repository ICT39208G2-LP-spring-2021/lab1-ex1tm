<!DOCTYPE html>
<html>
<head>
<title>List of Students | Created By: Beka Narushvili</title>
<style>
table {border-style: outset;}
th {border: 1px solid black;}
td {border: 1px dotted black;}
</style>
</head>
<body>
<?php

$server = 'localhost';
$user = 'root';
$password = '';
$database = 'gtu_lms';

$connect = mysqli_connect($server, $user, $password, $database);

if ($connect->connect_error)
{
    die("<p style='color:red; text-align:center; font-weight: bold;'>".'შეცდომა მონაცემთა ბაზასთან კავშირისას: '.$connect->connect_error."</p>");
}

$records = 'SELECT FirstName, LastName, PersonalNumber FROM students';
$result = $connect->query($records);

if ($result->num_rows > 0)
{
    echo "<table><tr><th>First Name</th><th>Last Name</th><th>Personal Number</th></tr>";
 
    while($row = $result->fetch_assoc())
    {
        echo "<tr><td>" . $row["FirstName"]. "</td><td>" . $row["LastName"]. "</td><td>" . $row["PersonalNumber"]. "</td></tr>";
    }
    echo "</table>";
}

$connect->close();
?>

</body>
</html>