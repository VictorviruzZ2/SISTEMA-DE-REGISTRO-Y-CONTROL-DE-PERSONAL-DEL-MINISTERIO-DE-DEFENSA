<?php require 'conexion1.php';
class accesos extends conexion {
	function __construct() {
		parent::__construct();

		return $this;
	}

	public function create_pass($pass) {
		return password_hash($pass, PASSWORD_DEFAULT);
	}
	
	/** encriptado llave
	* @param integer $length
	* @param integer $only_numbers
	* @return string 
	*/
	function key_hash($length =8 ,$only_numbers = false)
	{
		$chars = ($only_numbers) ? '0123456789' :
		'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		$count = mb_strlen($chars);
		echo ("ayuuuuuuda".$count);
		for($i = 0,$result='';$i<$length; $i++){
			$index =rand(0,$count - 1);
			$result .=mb_substr($chars,$index,1);
		}
		return $result;
	}
	public function login() {
		$data = (count(func_get_args()) > 0) ? func_get_args()[0] : func_get_args();

		$sql = "SELECT usuarios.correo, usuarios.pass FROM usuarios WHERE correo = ?;";
		$consulta = $this->prepare($sql);

		$consulta->bind_param('s', $correo);
		$correo = $data['correo'];
		$pass = $data['pass'];
		$this->execute($consulta);
		$consulta->bind_result($correo, $pass_db);
		$consulta->fetch();

		if(password_verify($pass, $pass_db)) {
			$info = array(
				'estado' => true,
				'correo' => $correo,
				'pass' => $pass
			);
		} else {
			$info = array(
				'estado' => false,
				'mensaje' => 'El usuario o contraseña es incorrecto'
			);
		}

		return json_encode($info);
	}
}
$accesos = new accesos;
?>