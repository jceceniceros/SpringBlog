<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/styles/app.css">

        <title>SpringBlog | Mostrar usuarios</title>
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
                                    <a href="#" class="nav-link active">Ver todos los usuarios</a>
                                </li>
                                <li class="nav-item">
                                    <a href="/dashboard/users/create" class="nav-link">Crear nuevo usuario</a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-xl-9 col-lg-9 col-md-9 col-12 mb-5">
                            <h2>Todos los usuarios</h2>

                            <hr>

                            <c:if test="${successMessage != null}">
                                <div class="alert alert-success alert-dismissible fade show">
                                    <button type="button" class="close" data-dismiss="alert">
                                        <span>&times;</span>
                                    </button>
                                    ${successMessage}
                                </div>
                            </c:if>

                            <table class="table table-hover table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">Nombre</th>
                                        <th class="text-center">Username</th>
                                        <th class="text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${users}" var="user">
                                        <tr>
                                            <td class="text-center">
                                                <c:out value="${user.getId()}" />
                                            </td>
                                            <td>
                                                <c:out value="${user.getFullname()}" />
                                            </td>
                                            <td>
                                                <c:out value="${user.getUsername()}" />
                                            </td>
                                            <td class="text-center">
                                                <a href="/dashboard/users/${user.getId()}" class="btn btn-primary">Editar</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

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
