const app = new (function () {
  this.tbody = document.getElementById("tbody");

  //Usando DataTables
  this.report = () => {
    fetch("../controllers/report.controller.php")
      .then((res) => res.json())
      .then((data) => {
        toastr.info("Reporte de empleados", "Aviso!");
        let html = "";
        data.forEach((e) => {
          html += `
          <tr>
            <td>${e.nombres}</td>
            <td>${e.apellidos}</td>
            <td>${e.cedula}</td>
            <td>${e.fecha_nacimiento}</td>
            <td>${e.email}</td>
            <td>${e.fecha_ingreso}</td>
            <td>${e.cargo}</td>
            <td>${e.departamento}</td>
            <td>${e.sueldo}</td>
            <td>${e.provincia}</td>
            <td>${e.jornada == 1 ? "Diurna" : "Nocturna"}</td>
          </tr>
        `;
        });
        this.tbody.innerHTML = html;
        $("#dataTable").DataTable({
          language: {
            lengthMenu: "Mostrar _MENU_ registros por página",
            zeroRecords: "No se encontraron resultados en su búsqueda",
            searchPlaceholder: "Buscar registros",
            search: "Buscar:",
            info: "Mostrando registros de _START_ al _END_ de un total de  _TOTAL_ registros",
            infoEmpty: "No existen registros",
            infoFiltered: "(filtrado de un total de _MAX_ registros)",
            loadingRecords: "Cargando...",
            processing: "Procesando...",
            paginate: {
              first: "Primero",
              last: "Último",
              next: "Siguiente",
            },
          },
        });
      });
  };
})();
app.report();
