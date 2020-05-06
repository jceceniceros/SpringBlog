<%@ tag description="Blog main layout" pageEncoding="UTF-8"%>

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

        <script type="text/javascript" src="/scripts/manifest.js"></script>
        <script type="text/javascript" src="/scripts/vendor.js"></script>
        <script type="text/javascript" src="/scripts/app.js"></script>

        <jsp:invoke fragment="scripts" />
    </body>
</html>
