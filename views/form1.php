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
        <div class="card-header mt-3 text-bg-info text-white">CREAR EMPLEADO NUEVO</div>
        <div class="card text-center">
          <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs">
              <li class="nav-item">
                <a class="nav-link" aria-current="true" href="#">Datos personales</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="true" href="#">Datos laborales</a>
              </li>
            </ul>
          </div>
          <div class="card-body">
            <form action="javascript:void(0)" method="post" id="form1">
              <div class="row g-3">
                <div class="col-6">
                  <label for="fechaing" class="form-label">Fecha Ingreso</label>
                  <input type="date" class="form-control" id="fechaing" name="fechaing" autofocus required>
                </div>
                <div class="col-6">
                  <label for="cargo" class="form-label">Cargo</label>
                  <input type="text" class="form-control" id="cargo" name="cargo" required>
                </div>
              </div>
              <div class="row g-3">
                <div class="col-6">
                  <label for="departamento" class="form-label">Departamento</label>
                  <input type="text" class="form-control" id="departamento" name="departamento" required>
                </div>
                <div class="col-6">
                  <label for="provincia" class="form-label">Provincia</label>
                  <div id="selector"></div>
                  <!-- <select id="disabledSelect" name="disabledSelect" class="form-select">
                    <option>--Seleccione--</option>
                  </select> -->
                </div>
              </div>
              <div class="row g-3">
                <div class="col-6">
                  <label for="sueldo" class="form-label">Sueldo</label>
                  <input type="number" class="form-control" id="sueldo" name="sueldo" required>
                </div>
                <div class="col-6">
                  <label for="jornada" class="form-label mt-3">Jornada parcial</label>
                  <br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Si</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                    <label class="form-check-label" for="inlineRadio2">No</label>
                  </div>
                </div>
              </div>
              <div class="col-12">
                <label for="observa1" class="form-label">Observaciones</label>
                <textarea class="form-control" placeholder="Comentario" id="observa1" name="observa1" required></textarea>
              </div>

            </form>
          </div>
        </div>

        <div class="card-body">
          <button class="btn btn-success btn-sm" onclick="app.guardar()">Guardar</button>
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
  <script src="../scripts/form.js"></script>
  <!-- Toastr Libraries -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>

</html>