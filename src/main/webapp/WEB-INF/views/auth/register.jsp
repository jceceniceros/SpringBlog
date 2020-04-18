<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:auth>
    <jsp:attribute name="title">
        <title>SpringBlog | Registro</title>
    </jsp:attribute>

    <jsp:body>
        <div class="card">
            <div class="card-header text-center">
                Crear cuenta
            </div>

            <div class="card-body">
                <spring:hasBindErrors name="registerForm">
                    <div class="alert alert-danger alert-dismissible fade show">
                        <button type="button" class="close" data-dismiss="alert">
                            <span>&times;</span>
                        </button>
                        <ul class="mb-0">
                            <c:forEach items="${errors.allErrors}" var="error">
                                <li>${error.defaultMessage}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </spring:hasBindErrors>

                <form method="post" class="form">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                    <div class="form-group">
                        <label for="first-name">Nombre:</label>
                        <input type="text" name="firstName"
                            id="first-name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="last-name">Apellido:</label>
                        <input type="text" name="lastName"
                            id="last-name" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" name="username"
                            id="username" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="password">Contraseña:</label>
                        <input type="password" name="password"
                            id="password" class="form-control">
                    </div>

                    <input type="submit" class="btn btn-primary btn-block" value="Crear cuenta">
                </form>
            </div>

            <div class="card-footer text-center">
                <a href="/auth/login">Iniciar sesión</a>
            </div>
        </div>
    </jsp:body>
</t:auth>
