<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM empleado WHERE cedula='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
                <div class="container mt-5">
                    <form action="update.php" method="POST">
                    
                    <input type="hidden" name="cedula" value="<?php echo $row['cedula']  ?>">
                                <input type="text" class="form-control mb-3" name="cedula" placeholder="CI" value="<?php echo $row['cedula']  ?>">
                                <input type="text" class="form-control mb-3" name="carmil" placeholder="Carnet Militar" value="<?php echo $row['carmil']  ?>">
                                <input type="text" class="form-control mb-3" name="fuerza" placeholder="Fuerza" value="<?php echo $row['fuerza']  ?>">
                                <input type="text" class="form-control mb-3" name="annoegre" placeholder="Año de Egreso" value="<?php echo $row['annoegre']  ?>">
                                
                                <input type="text" class="form-control mb-3" name="annoser" placeholder="Años de Servicio" value="<?php echo $row['annoser']  ?>">
        
                                <input type="text" class="form-control mb-3" name="presentacion" placeholder="Fecha de Presentacion" value="<?php echo $row['presentacion']  ?>">
                                <input type="text" class="form-control mb-3" name="cargo" placeholder="Cargo Ministerio" value="<?php echo $row['cargo']  ?>">
                                
                                <input type="text" class="form-control mb-3" name="permiso" placeholder="Permisos" value="<?php echo $row['permiso']  ?>">

                                
                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                    </form>
                    
                </div>
    </body>
</html>