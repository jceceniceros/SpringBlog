<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/styles/app.css">

        <title>SpringBlog | Crear nuevo usuario</title>
    </head>

    <body>
        <main>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                    <div class="container">
                        <a href="#" class="navbar-brand">SpringBlog</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div id="navbar-collapse" class="collapse navbar-collapse">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a href="#" class="nav-link">Home</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>

            <section>
                <div class="container">
                    <div class="text-center my-3">
                        <h1>Panel de administración</h1>
                    </div>

                    <ul class="nav nav-tabs my-4">
                        <li class="nav-item">
                            <a href="#" class="nav-link">Articulos</a>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link active">Usuarios</a>
                        </li>
                    </ul>

                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-12 mb-5">
                            <ul class="nav nav-pills flex-column">
                                <li class="nav-item">
                                    <a href="/dashboard/users" class="nav-link">Ver todos los usuarios</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">Crear nuevo usuario</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xl-9 col-lg-9 col-md-9 col-12 mb-5">
                            <h2 class>Crear nuevo usuario</h2>

                            <hr>

                            <form action="/dashboard/users" method="post"
                                class="form">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                                <div class="form-group">
                                    <label for="user-first-name">Nombre:</label>
                                    <input type="text" name="firstName"
                                        id="user-first-name" class="form-control" value="">
                                </div>

                                <div class="form-group">
                                    <label for="user-last-name">Apellido</label>
                                    <input type="text" name="lastName"
                                        id="user-last-name" class="form-control" value="">
                                </div>

                                <div class="form-group">
                                    <label for="user-username">Username</label>
                                    <input type="text" name="username"
                                        id="user-username" class="form-control" value="">
                                </div>

                                <div class="form-group">
                                    <label for="user-password">Contraseña</label>
                                    <input type="password" name="password"
                                        id="user-password" class="form-control" value="">
                                </div>

                                <div class="form-group text-center">
                                    <input type="submit" class="btn btn-primary" value="Enviar">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>

            <footer>
                <div class="container">
                    <p>&copy; Company 2017-2020</p>
                </div>
            </footer>
        </main>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    </body>
</html>
