<?php
require_once "../models/report.model.php";
echo json_encode(Report::mostrarDatosReporte());
