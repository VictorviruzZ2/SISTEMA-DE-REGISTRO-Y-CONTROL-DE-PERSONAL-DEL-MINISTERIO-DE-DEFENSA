<?php

include("conexion.php");
$con=conectar();

$cedula=$_POST['cedula'];
$carmil=$_POST['carmil'];
$fuerza=$_POST['fuerza'];
$annoegre=$_POST['annoegre'];
$annoser=$_POST['annoser'];
$presentacion=$_POST['presentacion'];
$cargo=$_POST['cargo'];
$permiso=$_POST['permiso'];


$sql="UPDATE empleado SET  cedula='$cedula',carmil='$carmil',fuerza='$fuerza',annoegre='$annoegre',annoser='$annoser',presentacion='$presentacion',cargo='$cargo',permiso='$permiso' WHERE cedula='$cedula'";
$query=mysqli_query($con,$sql);


    if($query){
        Header("Location: alumno.php");
    }
?>