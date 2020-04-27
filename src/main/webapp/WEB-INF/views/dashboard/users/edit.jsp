<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Editar usuario</title>
    </jsp:attribute>

    <jsp:body>
        <div class="d-flex justify-content-between align-items-center">
            <h3 class="mb-0">Usuarios > Editar</h3>
            <a href="/dashboard/users" class="btn btn-link">Cancelar</a>
        </div>

        <hr>

        <c:if test="${successMessage != null && !successMessage.isEmpty()}">
            <div class="alert alert-success alert-dismissible fade show">
                <button type="button" class="close" data-dismiss="alert">
                    <span>&times;</span>
                </button>
                ${successMessage}
            </div>
        </c:if>

        <spring:hasBindErrors name="userForm">
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

        <form action="/dashboard/users/${user.getId()}" method="post" class="form">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <div class="form-group">
                <label for="user-first-name">Nombre:</label>
                <input type="text" name="firstName"
                    id="user-first-name" class="form-control"
                    value="${user.getFirstName()}">
            </div>

            <div class="form-group">
                <label for="user-last-name">Apellido:</label>
                <input type="text" name="lastName"
                    id="user-last-name" class="form-control"
                    value="${user.getLastName()}">
            </div>

            <div class="form-group">
                <label for="user-username">Username:</label>
                <input type="text" name="username"
                    id="user-username" class="form-control"
                    value="${user.getUsername()}">
            </div>

            <div class="form-group">
                <label for="user-password">Contraseña:</label>
                <input type="password" name="password"
                    id="user-password" class="form-control">
            </div>

            <p class="font-weight-bold">Roles:</p>
            <div class="form-row mb-5">
                <c:forEach items="${roles}" var="role">
                    <div class="col-xl-3.col-lg-3.col-md-3.col-12">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" name="roles"
                                id="role-${role.getId()}" class="custom-control-input"
                                value="${role.getId()}"
                                ${ user.hasRole(role.getName()) ?  'checked' : '' }>
                            <label for="role-${role.getId()}" class="custom-control-label">${role.getName()}</label>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="form-group text-center">
                <input type="submit" class="btn btn-primary" value="Guardar cambios">
            </div>
        </form>
    </jsp:body>
</t:dashboard>
