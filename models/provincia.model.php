<?php
require_once "../config/connection.config.php";
class Provincia extends Connection
{
  public static function mostrarDatosProvincia()
  {
    try {
      $sql = "SELECT nombre_provincia FROM provincias";
      $stmt = Connection::getConnection()->prepare($sql);
      $stmt->execute();
      return $stmt->fetchAll();
    } catch (PDOException $th) {
      echo $th->getMessage();
    }
  }
}
