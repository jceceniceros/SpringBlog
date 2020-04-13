<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Editar usuario</title>
    </jsp:attribute>

    <jsp:body>
        <section>
            <h2 class>Editar usuario</h2>

            <hr>

            <c:if test="${successMessage != null && !successMessage.isEmpty()}">
                <div class="alert alert-success alert-dismissible fade show">
                    <button type="button" class="close" data-dismiss="alert">
                        <span>&times;</span>
                    </button>
                    ${successMessage}
                </div>
            </c:if>

            <form action="/dashboard/users/${user.getId()}" method="post" class="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                <div class="form-group">
                    <label for="user-first-name">Nombre:</label>
                    <input type="text" name="firstName"
                        id="user-first-name" class="form-control"
                        value="${user.getFirstName()}">
                </div>

                <div class="form-group">
                    <label for="user-last-name">Apellido</label>
                    <input type="text" name="lastName"
                        id="user-last-name" class="form-control"
                        value="${user.getLastName()}">
                </div>

                <div class="form-group">
                    <label for="user-username">Username</label>
                    <input type="text" name="username"
                        id="user-username" class="form-control"
                        value="${user.getUsername()}">
                </div>

                <div class="form-group">
                    <label for="user-password">Password</label>
                    <input type="text" name="password"
                        id="user-password" class="form-control">
                </div>

                <div class="form-group text-center">
                    <input type="submit" class="btn btn-primary" value="Guardar cambios">

                    <a href="/dashboard/users" class="btn btn-link">Cancelar</a>
                </div>
            </form>
        </section>
    </jsp:body>
</t:dashboard>
