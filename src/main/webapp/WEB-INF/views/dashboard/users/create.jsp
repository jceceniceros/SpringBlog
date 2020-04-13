<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Crear nuevo usuario</title>
    </jsp:attribute>

    <jsp:body>
        <section>
            <h2 class>Crear nuevo usuario</h2>

            <hr>

            <form action="/dashboard/users" method="post" class="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                <div class="form-group">
                    <label for="user-first-name">Nombre:</label>
                    <input type="text" name="firstName"
                        id="user-first-name" class="form-control"
                        value="">
                </div>

                <div class="form-group">
                    <label for="user-last-name">Apellido</label>
                    <input type="text" name="lastName"
                        id="user-last-name" class="form-control"
                        value="">
                </div>

                <div class="form-group">
                    <label for="user-username">Username</label>
                    <input type="text" name="username"
                        id="user-username" class="form-control"
                        value="">
                </div>

                <div class="form-group">
                    <label for="user-password">Contraseña</label>
                    <input type="password" name="password"
                        id="user-password" class="form-control"
                        value="">
                </div>

                <spring:hasBindErrors name="userForm">
                    <div class="alert alert-danger">
                        <ul class="mb-0">
                            <c:forEach var="error" items="${errors.allErrors}">
                                <li>${error.defaultMessage}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </spring:hasBindErrors>

                <div class="form-group text-center">
                    <input type="submit" class="btn btn-primary" value="Enviar">
                </div>
            </form>
        </section>
    </jsp:body>
</t:dashboard>

