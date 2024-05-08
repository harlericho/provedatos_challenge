<?php
require_once "../models/listado.model.php";
$arrayName = array(
  'nombres' => $_POST['nombres'],
  'cedula' => $_POST['cedula']
);
echo json_encode(Empleado::buscarDatos($arrayName));
