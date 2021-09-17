<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5"> 
            <h3 class="mb-3">Registro de Usuarios</h3>
            <hr>
            <form method="post" action="usuario_ctrl.jsp">
                <div class="row mb-3">
                    <label for="txtId" class="col-form-label col-sm-2">Id</label>
                    <input type="text" class="col-form-control col-sm-10" id="txtId" name="txtId" value="">
                </div>
                <div class="row mb-3">
                    <label for="txtNombre" class="col-form-label col-sm-2">Nombre</label>
                    <input type="text" class="col-form-control col-sm-10" id="txtNombre" name="txtNombre" value="">
                </div>
		
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary" id="btnSubmit" name="btnSubmit" value="nuevo">Guardar</button>
                <button type="submit" class="btn btn-secondary" id="btnSubmit" name="btnSubmit" value="cancelar">Cancelar</button>
                </div>
            </form>
        </div>
    </body>
</html>
