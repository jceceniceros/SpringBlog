<%@ tag description="Blog main layout" pageEncoding="UTF-8"%>

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
                                    <a href="#" class="nav-link">Artículos</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>

            <section>
                <div class="container">
                    <jsp:doBody />
                </div>
            </section>

            <footer>
                <div class="container">
                    <div class="d-flex justify-content-between">
                        <p>&copy; SpringBlog 2020</p>

                        <a href="/dashboard">Administrar</a>
                    </div>

                </div>
            </footer>
        </main>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    </body>
</html>
