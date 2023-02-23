<?php
include('../class/accesos.php');
include("conexion2.php");
$con=conectar2();

if(isset($_POST['submit'])) {
	$correo = $_POST['correo'];
	$pass = $_POST['pass'];
	$params = array(
		'correo'=>$correo, 
		'pass'=>$pass
	);
	$sql="SELECT cargo FROM cargos WHERE correo like '$correo'";
	$query=mysqli_query($con,$sql);
	$row = mysqli_fetch_array($query);
	$cargo = $row['cargo'];
	$login = json_decode($accesos->login($params));
	if ($login->estado == true) {
		if('Administrador' == $cargo){
			include('alumno.php');
		}else{
			if('Moderador' == $cargo){
				include('alumno2.php');
			}else{
				if('Usuario' == $cargo){
					include('alumno3.php');
				}else{
					echo '<p>Ocurrio un error.</p>';
				}
			}
		}
	} else {
		echo '<p>Ocurrio un error.</p>';
		echo $login->mensaje;
	}
	
}
?>