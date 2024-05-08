<?php
require_once "../config/connection.config.php";
class Empleado extends Connection
{
  public static function guardarDatosEmpelados($data)
  {
    try {
      $sql = "INSERT INTO empleados (nombres, apellidos, cedula, fecha_nacimiento, email, observacion, fecha_ingreso, cargo, departamento, jornada, observacion1, sueldo, provincia)
      VALUES (:nombres, :apellidos, :cedula, :fecha_nacimiento, :email, :observacion, :fecha_ingreso, :cargo, :departamento, :jornada, :observacion1, :sueldo, :provincia)";
      $stmt = Connection::getConnection()->prepare($sql);
      $stmt->bindParam(":nombres", $data['nombres'], PDO::PARAM_STR);
      $stmt->bindParam(":apellidos", $data['apellidos'], PDO::PARAM_STR);
      $stmt->bindParam(":cedula", $data['cedula'], PDO::PARAM_STR);
      $stmt->bindParam(":fecha_nacimiento", $data['fecha_nacimiento'], PDO::PARAM_STR);
      $stmt->bindParam(":email", $data['email'], PDO::PARAM_STR);
      $stmt->bindParam(":observacion", $data['observacion'], PDO::PARAM_STR);
      $stmt->bindParam(":fecha_ingreso", $data['fecha_ingreso'], PDO::PARAM_STR);
      $stmt->bindParam(":cargo", $data['cargo'], PDO::PARAM_STR);
      $stmt->bindParam(":departamento", $data['departamento'], PDO::PARAM_STR);
      $stmt->bindParam(":jornada", $data['jornada'], PDO::PARAM_STR);
      $stmt->bindParam(":observacion1", $data['observacion1'], PDO::PARAM_STR);
      $stmt->bindParam(":sueldo", $data['sueldo'], PDO::PARAM_STR);
      $stmt->bindParam(":provincia", $data['provincia'], PDO::PARAM_STR);
      $stmt->execute();
      return true;
    } catch (PDOException $th) {
      echo $th->getMessage();
    }
  }
}
