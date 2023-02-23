<?php

include("conexion.php");
$con=conectar();

$cedula=$_GET['id'];

$sql="DELETE FROM empleado WHERE cedula='$cedula'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: alumno.php");
    }
?>
