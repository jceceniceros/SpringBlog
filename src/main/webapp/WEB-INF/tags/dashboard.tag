<%@ tag description="Dashboard layout" pageEncoding="UTF-8"%>

<%@attribute name="title" fragment="true" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="/styles/app.css">

        <jsp:invoke fragment="title" />
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

                    <hr>
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a href="#" class="nav-link">Articulos</a>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">Usuarios</a>
                        </li>
                    </ul>
                    <hr>

                    <jsp:doBody />

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
