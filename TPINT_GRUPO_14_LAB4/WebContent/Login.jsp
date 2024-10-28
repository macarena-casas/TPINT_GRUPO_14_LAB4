<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.0/font/bootstrap-icons.min.css" rel="stylesheet">
<style>
    .content-background {
        background: url('Svg/lines-2.svg') no-repeat;
        background-size: 70%;
    }
</style>
</head>
<body>

<jsp:include page="NavBar.jsp" />

<div class="bg-white pt-5">

<div class="content-background min-vh-100 d-flex align-items-center justify-content-center">

<section class="text-gray-600 body-font">
  <div class="container px-5 py-5 mx-auto d-flex flex-wrap align-items-center" style="margin-top: 7%;">
    <div class="col-lg-7 col-md-6 pr-md-5">
      <h1 class="font-weight-medium text-3xl text-dark">¡Hola! Te damos la bienvenida</h1>
      <br>
    </div>
    <div class="col-lg-5 col-md-6 rounded-lg p-4 d-flex flex-column ml-md-auto mt-4 mt-md-0" style="margin-top: 3%;background-color:#4caa67; ">
      <h2 class="text-dark text-lg font-weight-medium mb-4">Log in</h2>
     
     <form>
      <div class="form-group mb-3">
        <label for="username" class="text-sm text-gray-600">Usuario</label>
        <input type="text" id="username" name="username" class="form-control bg-white rounded border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary text-base outline-none text-dark py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
      </div>
      <div class="form-group mb-3">
        <label for="password" class="text-sm text-gray-600">Contraseña</label>
        <input type="password" id="password" name="password" class="form-control bg-white rounded border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary text-base outline-none text-dark py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
        <div class="form-check mt-2">
          <input type="checkbox" id="show-password" class="form-check-input">
          <label for="show-password" class="form-check-label text-sm text-gray-600">Ver contraseña</label>
        </div>
      </div>
     
       <button type="submit" name="btnIngresar" class="btn btn-outline-success text-white py-2 px-4 rounded text-lg">Ingresar</button>
     </form>
      <p class="text-xs text-gray-500 mt-3">No compartas ningun dato personal. Nadie del banco lo va a solicitar.</p>
    </div>
  </div>
</section>

</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var checkbox = document.getElementById("show-password");
        var passwordField = document.getElementById("password");
        
        checkbox.addEventListener("change", function() {
            if (this.checked) {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        });
    });
</script>

</div>

<jsp:include page="Footer.jsp" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


