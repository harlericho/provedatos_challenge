<?php
require_once "../config/connection.config.php";
class Report extends Connection
{
  public static function mostrarDatosReporte()
  {
    try {
      $sql = "SELECT nombres, apellidos, cedula, fecha_nacimiento, email, fecha_ingreso, cargo, departamento, sueldo, provincia, jornada FROM empleados";
      $stmt = Connection::getConnection()->prepare($sql);
      $stmt->execute();
      return $stmt->fetchAll();
    } catch (PDOException $th) {
      echo $th->getMessage();
    }
  }
}
