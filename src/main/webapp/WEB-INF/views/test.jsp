<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<%
    String action = (String) request.getAttribute("action");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>SpringBlog | Test View</title>
    </head>

    <body>
        <h1><%= action %></h1>
    </body>
</html>