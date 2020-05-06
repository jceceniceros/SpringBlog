<%@ tag description="Dashboard layout" pageEncoding="UTF-8"%>

<%@ attribute name="title" fragment="true" required="true" %>
<%@ attribute name="styles" fragment="true" required="false" %>
<%@ attribute name="scripts" fragment="true" required="false" %>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="/styles/app.css">

        <jsp:invoke fragment="styles" />

        <jsp:invoke fragment="title" />
    </head>

    <body>
        <main>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                    <div class="container">
                        <a href="#" class="navbar-brand">SpringBlog Dashboard</a>

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <form action="/auth/logout" method="post">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <input type="submit" class="btn btn-primary btn-small btn-nav" value="Cerrar sesión">
                                </form>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <section>
                <div class="container">
                    <div class="my-3">
                        <h1>Panel de administración</h1>
                    </div>

                    <hr>
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a href="/dashboard/articles" class="nav-link">Artículos</a>
                        </li>

                        <li class="nav-item">
                            <a href="/dashboard/users" class="nav-link">Usuarios</a>
                        </li>
                    </ul>
                    <hr>

                    <section id="dashboard-body">
                        <jsp:doBody />
                    </section>
                </div>
            </section>

            <footer>
                <div class="container">
                    <p>&copy; Company 2017-2020</p>
                </div>
            </footer>
        </main>

        <script type="text/javascript" src="/scripts/manifest.js"></script>
        <script type="text/javascript" src="/scripts/vendor.js"></script>
        <script type="text/javascript" src="/scripts/app.js"></script>

        <jsp:invoke fragment="scripts" />
    </body>
</html>
