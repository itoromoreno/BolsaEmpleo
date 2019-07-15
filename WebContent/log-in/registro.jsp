<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>REGISTRO</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/mi.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Registro</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Hola <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Que mas</a>
      <a class="nav-item nav-link" href="#">:D</a>
      
    </div>
  </div>
</nav>

    <main>
        <section class="contenedor" >
            <div class="container" >
                <div class="centrar">
                    <h2>Registro </h2>
                </div>
                <form>
                    <div class="form-group"><label for="name">Apellidos</label><input type="text" class="form-control item" id="nombre" /></div>
                    <div class="form-group"><label for="name">Nombres</label><input type="text" class="form-control item" id="apellido" /></div>
                    <div class="form-group"><label for="subject">Cédula</label><input type="text" class="form-control item" id="subject" /></div>
                    <div class="form-group"><label for="email">Dirección</label><input type="text" class="form-control" /></div>
                    <div class="form-group"><label for="message">Parroquia</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected>This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                    <div
                        class="form-group"><label for="message">Cantón</label><select class="form-control"><optgroup label="This is a group"><option value="12" selected>This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
            <div
                class="form-group"><label for="name">Nombre usuario</label><input type="text" class="form-control item" id="name" /></div>
                <div class="form-group"><label for="name">Contraseña</label><input class="form-control" type="password" /></div>
                <div class="form-group"><button class="btn btn-primary btn-block btn-lg" type="submit" style = "color: #fff; background-color: #0084da; border-color: #007ccd; border-radius: 20px;" >REGISTRAR</button></div>
                </form>
                </div>
        </section>
    </main>
    <footer class="page-footer"></footer>
</body>

</html>