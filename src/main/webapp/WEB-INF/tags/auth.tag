<%@ tag description="Authentication layout" pageEncoding="UTF-8"%>

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
        <main class="d-flex flex-column justify-content-center align-items-center">
            <div style="width: 400px;">
                <h1 class="text-center mb-5">SpringBlog</h1>

                <jsp:doBody />
            </div>
        </main>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    </body>
</html>
