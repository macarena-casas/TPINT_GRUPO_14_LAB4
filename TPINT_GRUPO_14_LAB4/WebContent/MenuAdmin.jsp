<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%



 String usuario = null;
 String tipoUsuario = null;
 

if (session != null && session.getAttribute("usuario") != null && session.getAttribute("tipoUsuario") != null) {
	usuario = (String) session.getAttribute("usuario");
	tipoUsuario = (String) session.getAttribute("tipoUsuario");
}



%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <%//aca puede ir imagen o logo %>
    <title>Men� de administrador</title>
    <style>
        .content-background {
         
            background-size: cover;
        }
        .menu-container {
            background: rgba(243, 244, 246, 0.9); 
            padding: 2rem;
            border-radius: 0.5rem;
        }
    </style>
</head>
<body>

    <jsp:include page="NavBar.jsp" />
    
    <div class="bg-white pt-3">
        <div class="content-background min-vh-100 d-flex align-items-center justify-content-center">
            <section class="text-gray-600 body-font min-vh-100 d-flex align-items-center justify-content-center w-100">
                <div class="container px-5 py-5 mx-auto d-flex flex-column align-items-center">
                    <div class="menu-container w-100 md:w-50 lg:w-33">
                        <h1 class="title-font font-medium text-3xl text-gray-900 text-center">Hola <%=usuario %> !</h1>
                        <br>
                        <p class="leading-relaxed mt-4 text-center">Bienvenido/a al men� de administrador de Emerald</p>
                        <br>
                        <div class="button-container space-y-4">
                            <form action="ServletAdminCliente" method="get"> 
                                <div class="mb-3">
                                    <button type="submit" name="btnAgregarCliente" value="true" class="btn btn-success btn-lg btn-block">Agregar Cliente</button>
                                </div>
                                <div class="mb-3">
                                    <button type="submit" name="btnAdminClientes" value="true" class="btn btn-success btn-lg btn-block">Administrar Clientes</button>
                                </div>
                            </form>
                            <form action="ServletAdminCuentas" method="get">
                                <div class="mb-3">
                                    <button type="submit" name="btnAgregarCuenta" value="true" class="btn btn-success btn-lg btn-block">Agregar Cuenta</button>
                                </div>
                                <div class="mb-3">
                                    <button type="submit" name="btnAdminCuentas" value="true" class="btn btn-success btn-lg btn-block">Administrar Cuentas</button>
                                </div>
                            </form>
                            <form action="ServletAdminPrestamos" method="get"> 
                                <div class="mb-3">
                                    <button type="submit" name="btnPrestamos" value="true" class="btn btn-success btn-lg btn-block">Pr�stamos</button>
                                </div>
                            </form>
                            <form action="ServletReportes" method="get"> 
                                <div class="mb-3">
                                    <button type="submit" name="btnReportes" value="true" class="btn btn-success btn-lg btn-block">Reportes</button>
                                </div>  
                            </form>                
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <jsp:include page="Footer.jsp" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
