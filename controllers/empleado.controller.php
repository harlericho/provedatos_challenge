<?php
require_once "../models/empleado.model.php";
$arrrayName =  array(
  'nombres' => $_POST['nombres'],
  'apellidos' => $_POST['apellidos'],
  'cedula' => $_POST['cedula'],
  'fecha_nacimiento' => $_POST['fechaNacimiento'],
  'email' => $_POST['email'],
  'observacion' => $_POST['observa'],
  'fecha_ingreso' => $_POST['fechaIngreso'],
  'cargo' => $_POST['cargo'],
  'departamento' => $_POST['departamento'],
  'jornada' => $_POST['jornada'],
  'observacion1' => $_POST['observa1'],
  'sueldo' => $_POST['sueldo'],
  'provincia' => $_POST['provincia']
);
echo json_encode(Empleado::guardarDatosEmpelados($arrrayName));
