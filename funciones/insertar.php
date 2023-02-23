<?php
include("conexion.php");
$con=conectar();

$cedula=$_POST['cedula'];
$carmil=$_POST['carmil'];
$fuerza=$_POST['fuerza'];
$codigo=$_POST['codigo'];
$especialidad=$_POST['especialidad'];
$anoser=$_POST['anoser'];
$anoegre=$_POST['anoegre'];
$presentacion=$_POST['presentacion'];
$cargo=$_POST['cargo'];
$desde=$_POST['desde'];
$hasta=$_POST['hasta'];
$motivo=$_POST['motivo'];
$observaciones=$_POST['observaciones'];

$sql="INSERT INTO empleado VALUES('$cedula','$carmil','$fuerza','$codigo','$especialidad','$anoser','$anoegre','$presentacion','$cargo','$desde','$hasta','$motivo','$observaciones')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: alumno.php");
    
}else {
}
?>