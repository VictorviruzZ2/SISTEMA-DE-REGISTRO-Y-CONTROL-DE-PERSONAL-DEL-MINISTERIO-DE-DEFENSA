<?php

include("conexion.php");
$con=conectar();

$cedula=$_POST['cedula'];
$carmil=$_POST['carmil'];
$fuerza=$_POST['fuerza'];
$anoegre=$_POST['annoegre'];
$anoser=$_POST['annoser'];
$presentacion=$_POST['presentacion'];
$cargo=$_POST['cargo'];
$permiso=$_POST['permiso'];


$sql="UPDATE empleado SET  carmil='$carmil',fuerza='$fuerza',annoegre='$anoegre',annoser='$anoser',presentacion='$presentacion',cargo='$cargo',permiso='$permiso' WHERE cedula='$cedula'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: alumno.php");
    }
?>