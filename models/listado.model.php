<?php
require_once "../config/connection.config.php";
class Empleado extends Connection
{
  public static function mostrarDatosEmpleados()
  {
    try {
      $sql = "SELECT CONCAT(nombres, ' ', apellidos) AS nombre_completo, cedula, fecha_ingreso, DATEDIFF(NOW(), fecha_ingreso) AS dias_desde_ingreso FROM empleados LIMIT 20";
      $stmt = Connection::getConnection()->prepare($sql);
      $stmt->execute();
      return $stmt->fetchAll();
    } catch (PDOException $th) {
      echo $th->getMessage();
    }
  }
  public static function buscarDatos($data)
  {
    try {
      $sql = "SELECT CONCAT(nombres, ' ', apellidos) AS nombre_completo, cedula, fecha_ingreso, DATEDIFF(NOW(), fecha_ingreso) AS dias_desde_ingreso FROM empleados WHERE cedula = :cedula OR nombres LIKE :nombres";
      $stmt = Connection::getConnection()->prepare($sql);
      $stmt->bindParam(":cedula", $data['cedula'], PDO::PARAM_STR);
      $stmt->bindParam(":nombres", $data['nombres'], PDO::PARAM_STR);
      $stmt->execute();
      return $stmt->fetchAll();
    } catch (PDOException $th) {
      echo $th->getMessage();
    }
  }
}
