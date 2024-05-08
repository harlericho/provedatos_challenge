<?php
require_once "../models/provincia.model.php";
echo json_encode(Provincia::mostrarDatosProvincia());
