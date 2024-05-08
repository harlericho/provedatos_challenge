<?php
require_once "../models/listado.model.php";
echo json_encode(Empleado::mostrarDatosEmpleados());
