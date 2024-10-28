<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
 String usuario = null;
 String tipoUsuario = null;
%>


<!DOCTYPE html>
    
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nombre de nuestro home banking</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    #menu-toggle1:checked + label + #menu {
        display: block;
        z-index: 1000; 
        opacity: 1; 
    }
    #menu-toggle2:checked + label + #menu {
        display: block;
        z-index: 1000; 
        opacity: 1; 
    }
</style>
</head>
<body class="bg-success">
<header class="text-secondary fixed-top w-100 bg-light shadow" style="background-color: green;">
  <div class="container d-flex flex-wrap p-3 flex-column flex-md-row align-items-center">
      <nav class="flex-lg-grow-1 d-flex flex-wrap align-items-center text-base ml-md-auto" >
      <input type="hidden" class="mr-3 hover:text-success">
    </nav>
    <a class="d-flex order-first order-lg-0 flex-grow-1 flex-lg-grow-0 title-font font-weight-medium align-items-center text-success justify-content-center mb-3 mb-md-0">
     <%-- deberiamos poner un loguito o alguna imagen --%>
      <span class="ml-3 h4 text-black">el nombre elegido</span>
    </a>
    <div class="flex-lg-grow-1 d-flex justify-content-end ml-3 ml-lg-0">
     <% if (usuario == null) { %>
      <a href="Login.jsp" class="btn btn-outline-success border-0 py-1 px-3 focus:outline-none hover:bg-green rounded text-base mt-3 mt-md-0">Log in</a>
      <% } %>
       <%/*
      <div class="relative d-inline-block text-left ml-3">
           <a href="MenuAdmin.jsp" class="btn btn-light border-0 py-1 px-3 focus:outline-none hover:bg-light rounded text-base mt-3 mt-md-0"></a>
      </div>
      un menu */ %>
      <div class="relative d-inline-block text-left ml-3">
        <input type="checkbox" class="d-none" id="menu-toggle1"/>
       
          <label for="menu-toggle1" class="btn btn-outline-success shadow-sm px-2 py-1 text-sm font-weight-medium text-dark hover-bg-light-green cursor-pointer">
 		 Menú 
 		 <i class="bi bi-arrow-down-short"></i>

        </label>
  
        <div class="dropdown-menu dropdown-menu-right mt-2 w-100 rounded shadow-lg bg-white" id="menu">
          <div class="py-1">

            <a href="MenuAdmin.jsp" class="dropdown-item border-bottom border-success text-dark">Menú</a>
            <a href="ServletAdminCliente?btnAgregarCliente" class="dropdown-item text-dark">Agregar Cliente</a>
            <a href="ServletAdminCliente?btnAdminClientes" class="dropdown-item text-dark">Administrar clientes</a>
            <a href="ServletAdminCuentas?btnAgregarCuenta" class="dropdown-item text-dark">Agregar Cuenta</a>
            <a href="ServletAdminCuentas?btnAdminCuentas" class="dropdown-item text-dark">Administrar cuentas</a>
            <a href="ServletAdminPrestamos?btnPrestamos" class="dropdown-item text-dark">Préstamos</a>
            <a href="ServletReportes?btnReportes" class="dropdown-item text-dark">Reportes</a>
            <form action="ServletSesion" method="post">
            <button type="submit" name="btnCerrarSesion" value="true" class="dropdown-item text-dark">Cerrar Sesión</button>
            </form>
          </div>
        </div>
         <%/*
              <div class="relative d-inline-block text-left ml-3">
           <a href="MenuCliente.jsp" class="btn btn-light border-0 py-1 px-3 focus:outline-none hover:bg-light rounded text-base mt-3 mt-md-0"></a>
      </div>
       u otro */%>
      <div class="relative d-inline-block text-left ml-3">
        <input type="checkbox" class="d-none" id="menu-toggle2"/>
        <label for="menu-toggle2"class="btn btn-outline-success shadow-sm px-2 py-1 text-sm font-weight-medium text-dark hover-bg-light-green cursor-pointer">
  Menú 
  <i class="bi bi-arrow-down-short"></i>        
        </label>

        <div class="dropdown-menu dropdown-menu-right mt-2 w-100 rounded shadow-lg bg-white" id="menu">
          <div class="py-1">
            <a href="MenuCliente.jsp" class="dropdown-item border-bottom border-success text-dark">Menú</a>
            <a href="ServletCliente?btnPerfil"  class="dropdown-item text-dark">Perfil</a>
            <a href="ServletCliente?btnCuentas" class="dropdown-item text-dark">Cuentas</a>
            <a href="ServletTransferenciasCliente?btnTransferencias"  class="dropdown-item text-dark">Transferencias</a>
            <a href="ServletAdminPrestamos?btnSolicitarPrestamos"class="dropdown-item text-dark">Solicitar Préstamo</a>
            <a href="ServletPagoPrestamos?btnPagoDePrestamos" class="dropdown-item text-dark">Pago de Préstamos</a>
            <form action="ServletSesion" method="post">
            <button type="submit" name="btnCerrarSesion" value="true" class="dropdown-item text-dark">Cerrar Sesión</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var checkbox = document.getElementById("menu-toggle1");
        var menu = document.getElementById("menu");
        
        checkbox.addEventListener("change", function() {
            if (this.checked) {
                menu.classList.add("show");
            } else {
                menu.classList.remove("show");
            }
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var checkbox = document.getElementById("menu-toggle2");
        var menu = document.getElementById("menu");
        
        checkbox.addEventListener("change", function() {
            if (this.checked) {
                menu.classList.add("show");
            } else {
                menu.classList.remove("show");
            }
        });
    });
</script>

</body>
</html>



       


