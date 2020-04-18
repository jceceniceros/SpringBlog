<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:auth>
    <jsp:attribute name="title">
        <title>SpringBlog | Iniciar sesión</title>
    </jsp:attribute>

    <jsp:body>
        <div class="card">
            <div class="card-header text-center">
                Iniciar sesión
            </div>

            <div class="card-body">
                <c:if test="${error != null}">
                    <div class="alert alert-danger alert-dismissible fade show">
                        <button type="button" class="close" data-dismiss="alert">
                            <span>&times;</span>
                        </button>
                        ${error}
                    </div>
                </c:if>

                <c:if test="${message != null}">
                    <div class="alert alert-danger alert-dismissible fade show">
                        <button type="button" class="close" data-dismiss="alert">
                            <span>&times;</span>
                        </button>
                        ${message}
                    </div>
                </c:if>

                <c:if test="${successMessage != null && !successMessage.isEmpty()}">
                    <div class="alert alert-success alert-dismissible fade show">
                        <button type="button" class="close" data-dismiss="alert">
                            <span>&times;</span>
                        </button>
                        ${successMessage}
                    </div>
                </c:if>

                <form method="post" class="form">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

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

                    <input type="submit" class="btn btn-primary btn-block" value="Iniciar sesión">
                </form>
            </div>

            <div class="card-footer text-center">
                <a href="/auth/register">Crear cuenta</a>
            </div>
        </div>
    </jsp:body>
</t:auth>
