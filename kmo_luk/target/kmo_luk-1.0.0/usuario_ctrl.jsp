<%-- 
    Document   : juguetes_ctrl
    Created on : 14/09/2021, 7:13:43 a. m.
    Author     : Cielo Juliana
--%>
<%@page import="logica.ColeccionUsuario"%>
<%@page import="logica.Usuario"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <%
            String id = request.getParameter("txtId");
            String nombre = request.getParameter("txtNombre");
                        String accion = request.getParameter("btnSubmit");

            if (accion.equals("nuevo")) {
                Usuario j = new Usuario(nombre);
                ColeccionUsuario coleccion = new ColeccionUsuario();
                boolean guardado = coleccion.guardarUsuario(j);
                if (guardado == true) {
                    out.println("Usuario guardado exitosamente");
                } else {
                    out.println("Información del Usuario no se guardó.");
                }
            }
        %>
        <a href="usuarios_lista.jsp"><button type="submit" class="btn btn-primary" id="btnSubmit">Volver a la lista</button></a>
    </body>
</html>

