<%@ tag description="Authentication layout" pageEncoding="UTF-8"%>

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
        <main class="d-flex flex-column justify-content-center align-items-center">
            <div style="width: 400px;">
                <h1 class="text-center mb-5">SpringBlog</h1>

                <jsp:doBody />
            </div>
        </main>

        <script type="text/javascript" src="/scripts/manifest.js"></script>
        <script type="text/javascript" src="/scripts/vendor.js"></script>
        <script type="text/javascript" src="/scripts/app.js"></script>

        <jsp:invoke fragment="scripts" />

    </body>
</html>
