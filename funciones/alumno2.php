<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM empleado";
    $query=mysqli_query($con, $sql) or die( mysqli_error($con));

    $row=mysqli_fetch_array($query); 
?>
<!DOCTYPE html>
<html lang="en"> 
    <head>
        <title> REGISTRO DEL PERSONAL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-3">
                            <h1>Ingrese datos </h1> 
                                <form action="insertar.php" method="POST">

                                    <input type="text" class="form-control mb-3" name="cedula" placeholder="Cedula de Identidad">
                                    <input type="text" class="form-control mb-3" name="carmil" placeholder="Carnet Militar">
                                    <input type="text" class="form-control mb-3" name="fuerza" placeholder="Fuerza">
                                    <input type="text" class="form-control mb-3" name="annoegre" placeholder="Años de Egreso">
                                    <input type="text" class="form-control mb-3" name="annoser" placeholder="Año de Servicio">
                                    <input type="text" class="form-control mb-3" name="presentacion" placeholder="Fecha de Presentacion">
                                    <input type="text" class="form-control mb-3" name="cargo" placeholder="Cargo Ministerio">
                                    <input type="text" class="form-control mb-3" name="permiso" placeholder="Permiso">
                                    

                                    
                                    <input type="submit" class="btn btn-primary">
                                </form>
                        </div>

                        <div class="col-md-8">
                            <table style="width:500%" border="2" class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                        <th style="width:5%">Cedula de Identidad</th>
                                        <th style="width:5%">Carnet Militar</th>
                                        <th style="width:5%">Fuerza</th>
                                        <th style="width:5%">Años de Egreso</th>
                                        <th style="width:5%">Año de Servicio</th>
                                        <th style="width:5%">Fecha de Presentacion</th>
                                        <th style="width:5%">Cargo Ministerio</th>
                                        <th style="width:5%">Permiso</th>
                                        
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                                $permiso;
                                                    if(1 == $row['permiso']){
                                                        $permiso = 'SI';
                                                    }else{
                                                        $permiso= 'NO';
                                                    }
                                        ?>
                                            <tr>
                                                <th style="width: 900px"><?php  echo $row['cedula']?></th>
                                                <th><?php  echo $row['carmil']?></th>
                                                <th><?php  echo $row['fuerza']?></th>
                                                <th><?php  echo $row['annoegre']?></th>
                                                <th><?php  echo $row['annoser']?></th>  
                                                <th><?php  echo $row['presentacion']?></th>  
                                                <th><?php  echo $row['cargo']?></th>
                                                <th><?php  echo $permiso?></th>  
                                                <th><a href="actualizar.php?id=<?php echo $row['cedula'] ?>" class="btn btn-info">Editar</a></th>
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                        </div>
                    </div>  
            </div>
    </body>
</html>