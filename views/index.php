<!DOCTYPE html>
<html lang="en">

<head>
  <title>Challenge - PROVEDATOS</title>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <!-- Toastr Libraries CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
  <div class="container-md">
    <div class="row justify-context-center p-5">
      <div class="card text-center">
        <div class="card-header">Modulos de Empleados</div>
        <div class="card">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Cedula</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="">
                    <td>
                      <div class="mb-3">
                        <input type="text" class="form-control" name="nombre" id="nombre" />
                      </div>
                    </td>
                    <td>
                      <div class="mb-3">
                        <input type="text" class="form-control" name="cedula" id="cedula" />
                      </div>
                    </td>
                    <td>
                      <div class="mb-3">
                        <button type="button" class="btn btn-info text-white" onclick="app.buscar()">
                          Buscar
                        </button>

                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>

          </div>
        </div>
        <div class="card-body">
          <div class="table table-responsive">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">Nombres</th>
                  <th scope="col">Cedula</th>
                  <th scope="col">Periodo laborable (dias)</th>
                </tr>
              </thead>
              <tbody id="tbody"></tbody>
              <footer>
                <tr>
                  <td colspan="3">Solo se muestran 20 registros</td>
                </tr>
              </footer>

            </table>
          </div>
          <a href="./form.php" class="btn btn-success btn-sm">Crear</a>
          <a href="./report.php" class="btn btn-warning btn-sm text-white">Reporte</a>
          <a href="./index.php" class="btn btn-danger btn-sm">Salir</a>
        </div>
        <div class="card-footer text-muted">
          @CopyRight: Carlos Choca Sanchez
        </div>
      </div>
    </div>
  </div>

  <!-- Jquery Libraries -->
  <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
  <!-- Scripts -->
  <script src="../scripts/index.js"></script>
  <!-- Toastr Libraries -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>