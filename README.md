# Prueba de Challenge de programación.

## Provedatos

Computer Version:

[![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/es-es/windows/windows-11?r=1)
[![Linux](https://img.shields.io/badge/Linux-FF6600?style=for-the-badge&logo=linux&logoColor=white)](https://ubuntu.com/)
[![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)](https://www.apple.com/la/mac/)

> <strong> Este ejemplo ha sido desarrollado en PHP - JAVASCRIPT</strong>

<img src="preview.png" width="450" alt="proyect"/>
<img src="preview1.png" width="450" alt="proyect"/>
<img src="preview2.png" width="450" alt="proyect"/>

[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)
[![Javascript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)](https://www.javascript.com/)
[![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)
[![Git](https://img.shields.io/badge/Git-E34F26?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![Linux](https://img.shields.io/badge/Linux-FF6600?style=for-the-badge&logo=linux&logoColor=white)](https://www.linux.org/)
[![Windows](https://img.shields.io/badge/Windows-017AD7?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/es-es/windows/windows-11?r=1)
[![IDE](https://img.shields.io/badge/Visual_studio_code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)](https://code.visualstudio.com/)

## 💻 Pre requirementos

<img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white" />
<img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" />

Debe tener instalado los siguientes requisitos.

- Tener un servidor local (Xampp, Lamp o Laragon).
- Debe tener la version minimo de PHP 7.4 y MYSQL 5.7.

## 📫 Iniciar el proyecto

<img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white" />

Al iniciar el proyecto, usted debe ejecutar el script de la base de datos, que se encuentra en la ruta del proyecto, esto lo debe ejecutar en su servidor local MYSQL:

1. Importar el script que esta en la ubicacion del proyecto:
   > data/scriptcompleto.sql

<img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white" />

2. Usted debe realizar el cambio de la cadena de conexion en la ruta:

   > config/connection.config.php

   ```
   public $host = 'localhost';
   public $dbname = 'db_empleados';
   public $port = "3306";
   public $user = 'root';
   public $password = '';
   public $driver = 'mysql';
   ```

## 🚀 Iniciar el servidor de php:

Usted puede iniciar el servicio de php por localhost o por una servidor local especifico.

- Si usted elige una ruta especifica, puede iniciar en un terminal o linea de comando desde la raiz del proyecto y escribir: php -S 127.0.0.1:7000
  > [http:/127.0.0.1:7000](http://127.0.0.1:7000)

<div align="center">

### Realizado por:

![](https://avatars.githubusercontent.com/u/42042270?s=48&v=4)

## Carlos Choca Sanchez
