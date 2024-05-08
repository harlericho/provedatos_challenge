const app = new (function () {
  this.tbody = document.getElementById("tbody");
  this.nombre = document.getElementById("nombre");
  this.cedula = document.getElementById("cedula");

  this.listado = () => {
    fetch("../controllers/listado.controller.php")
      .then((res) => res.json())
      .then((data) => {
        toastr.success("Bienvenido!", "Aviso!");
        this.tbody.innerHTML = "";
        data.forEach((item) => {
          this.tbody.innerHTML += `
            <tr>
              <td>${item.nombre_completo}</td>
              <td>${item.cedula}</td>
              <td>${item.dias_desde_ingreso}</td>
            </tr>
          `;
        });
      })
      .catch((error) => console.log(error));
  };
  this.buscar = () => {
    if (this.nombre.value === "" && this.cedula.value === "") {
      this.listado();
      return;
    }
    const form = new FormData();
    form.append("nombres", this.nombre.value);
    form.append("cedula", this.cedula.value);
    // Hacer un filtro de busqueda y que se actualice el this.listado()
    fetch("../controllers/buscar.controller.php", {
      method: "POST",
      body: form,
    })
      .then((res) => res.json())
      .then((data) => {
        this.tbody.innerHTML = "";
        data.forEach((item) => {
          toastr.info("Dato encontrado", "Aviso!");
          this.tbody.innerHTML += `
            <tr>
              <td>${item.nombre_completo}</td>
              <td>${item.cedula}</td>
              <td>${item.dias_desde_ingreso}</td>
            </tr>
          `;
        });
      })
      .catch((error) => console.log(error));
  };
})();
app.listado();
