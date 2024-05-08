const app = new (function () {
  this.nombres = document.getElementById("nombres");
  this.apellidos = document.getElementById("apellidos");
  this.cedula = document.getElementById("cedula");
  this.fechaNacimiento = document.getElementById("fechanac");
  this.email = document.getElementById("email");
  this.observation = document.getElementById("observa");

  this.fechaIngreso = document.getElementById("fechaing");
  this.cargo = document.getElementById("cargo");
  this.departamento = document.getElementById("departamento");
  this.selector = document.getElementById("selector");
  this.sueldo = document.getElementById("sueldo");
  this.inlineRadio1 = document.getElementById("inlineRadio1");
  this.inlineRadio2 = document.getElementById("inlineRadio2");
  this.observation1 = document.getElementById("observa1");
  this.disabledSelect = document.getElementById("disabledSelect");

  this.continuar = () => {
    if (this.validation()) {
      // Guardar en localstorage
      localStorage.setItem("nombres", this.nombres.value);
      localStorage.setItem("apellidos", this.apellidos.value);
      localStorage.setItem("cedula", this.cedula.value);
      localStorage.setItem("fechaNacimiento", this.fechaNacimiento.value);
      localStorage.setItem("email", this.email.value);
      localStorage.setItem("observation", this.observation.value);
      window.location.href = "../views/form1.php";
    }
  };

  this.guardar = () => {
    if (this.validation1()) {
      let data = {
        // Obtener los datos del localstorage
        nombres: localStorage.getItem("nombres"),
        apellidos: localStorage.getItem("apellidos"),
        cedula: localStorage.getItem("cedula"),
        fechaNacimiento: localStorage.getItem("fechaNacimiento"),
        email: localStorage.getItem("email"),
        observa: localStorage.getItem("observation"),
        fechaIngreso: this.fechaIngreso.value,
        cargo: this.cargo.value,
        departamento: this.departamento.value,
        provincia: localStorage.getItem("provincia"),
        sueldo: this.sueldo.value,
        jornada: this.inlineRadio1.checked ? 1 : 0,
        observa1: this.observation1.value,
      };
      const form = new FormData();
      form.append("nombres", data.nombres);
      form.append("apellidos", data.apellidos);
      form.append("cedula", data.cedula);
      form.append("fechaNacimiento", data.fechaNacimiento);
      form.append("email", data.email);
      form.append("observa", data.observa);
      form.append("fechaIngreso", data.fechaIngreso);
      form.append("cargo", data.cargo);
      form.append("departamento", data.departamento);
      form.append("provincia", data.provincia);
      form.append("sueldo", data.sueldo);
      form.append("jornada", data.jornada);
      form.append("observa1", data.observa1);

      fetch("../controllers/empleado.controller.php", {
        method: "POST",
        body: form,
      })
        .then((res) => res.json())
        .then((data) => {
          if (data === true) {
            toastr.success("informacion guardada", "Aviso!");
            setTimeout(() => {
              window.location.href = "../views/index.php";
            }, 2000);
            this.limpiarlocalStorage();
          } else {
            toastr.error(data.message, "Aviso!");
          }
        })
        .catch((error) => console.log(error));
    }
  };
  //Carga de provincia en select disabledSelect
  this.cargaProvincias = () => {
    fetch("../controllers/provincia.controller.php")
      .then((res) => res.json())
      .then((data) => {
        let html =
          "  <select class='form-select' id='provincia' name='provincia' autofocus required>";
        html +=
          "<option disabled='selected' selected='selected'>Seleccione</option>";
        data.forEach((element) => {
          html +=
            "<option value='" +
            element.id +
            "'>" +
            element.nombre_provincia +
            "</option>";
        });
        html += "</select>";
        this.selector.innerHTML += html;
        const selectElement = document.getElementById("provincia");
        selectElement.addEventListener("change", function () {
          const selectedIndex = selectElement.selectedIndex;
          const selectedOptionText = selectElement.options[selectedIndex].text;
          // console.log(
          //   "Nombre de la provincia seleccionada:",
          //   selectedOptionText
          // );
          localStorage.setItem("provincia", selectedOptionText);
        });
      })
      .catch((error) => console.log(error));
  };

  //Limpiar los datos del localstorage
  this.limpiarlocalStorage = () => {
    localStorage.clear();
  };

  //validar email valido
  this.validarEmail = (email) => {
    const re = /\S+@\S+\.\S+/;
    return re.test(email);
  };
  //validar cedula valida
  this.validarCedula = (cedula) => {
    const re = /^[0-9]{10}$/;
    return re.test(cedula);
  };
  this.validation = () => {
    if (this.nombres.value === "") {
      toastr.warning("Datos nombres es obligatorio", "Aviso!");
      this.nombres.focus();
      return false;
    }
    if (this.apellidos.value === "") {
      toastr.warning("Datos apellidos es obligatorio", "Aviso!");
      this.apellidos.focus();
      return false;
    }
    if (this.cedula.value === "") {
      toastr.warning("Datos cedula es obligatorio", "Aviso!");
      this.cedula.focus();
      return false;
    }
    if (!this.validarCedula(this.cedula.value)) {
      toastr.error("Datos cedula no es valido", "Aviso!");
      this.cedula.focus();
      return false;
    }
    if (this.fechaNacimiento.value === "") {
      toastr.warning("Datos fecha de nacimiento es obligatorio", "Aviso!");
      this.fechaNacimiento.focus();
      return false;
    }
    if (this.email.value === "") {
      toastr.warning("Datos email es obligatorio", "Aviso!");
      this.email.focus();
      return false;
    }
    if (!this.validarEmail(this.email.value)) {
      toastr.error("Datos email no es valido", "Aviso!");
      this.email.focus();
      return false;
    }
    if (this.observation.value === "") {
      toastr.warning("Datos observacion es obligatorio", "Aviso!");
      this.observation.focus();
      return false;
    }
    return true;
  };
  this.validation1 = () => {
    if (this.fechaIngreso.value === "") {
      toastr.warning("Datos fecha de ingreso es obligatorio", "Aviso!");
      this.fechaIngreso.focus();
      return false;
    }
    if (this.cargo.value === "") {
      toastr.warning("Datos cargo es obligatorio", "Aviso!");
      this.cargo.focus();
      return false;
    }
    if (this.departamento.value === "") {
      toastr.warning("Datos departamento es obligatorio", "Aviso!");
      this.departamento.focus();
      return false;
    }
    if (
      localStorage.getItem("provincia") === null ||
      localStorage.getItem("provincia") === "Seleccione"
    ) {
      toastr.warning("Datos provincia es obligatorio", "Aviso!");
      this.selector.focus();
      return false;
    }
    if (this.sueldo.value === "") {
      toastr.warning("Datos sueldo es obligatorio", "Aviso!");
      this.sueldo.focus();
      return false;
    }
    if (!this.inlineRadio1.checked && !this.inlineRadio2.checked) {
      toastr.warning("Datos jornada es obligatorio", "Aviso!");
      this.inlineRadio1.focus();
      return false;
    }
    if (this.observation1.value === "") {
      toastr.warning("Datos observacion es obligatorio", "Aviso!");
      this.observation1.focus();
      return false;
    }
    return true;
  };
})();
app.cargaProvincias();
