<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Mostrar usuarios</title>
    </jsp:attribute>

    <jsp:body>
        <div class="d-flex justify-content-between align-items-center">
            <h3 class="mb-0">Usuarios > Ver todo</h3>
            <a href="/dashboard/users/create" class="btn btn-outline-primary">Crear nuevo usuario</a>
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

        <table class="table table-hover table-striped">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center">ID</th>
                    <th class="text-center">Nombre</th>
                    <th class="text-center">Username</th>
                    <th class="text-center">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td class="text-center">
                            ${user.getId()}
                        </td>
                        <td>
                            ${user.getFullname()}
                        </td>
                        <td>
                            ${user.getUsername()}
                        </td>
                        <td>
                            <div class="d-flex flex-row">
                                <a href="/dashboard/users/${user.getId()}"
                                    class="btn btn-primary btn-sm mr-2">Editar</a>

                                <form action="/dashboard/users/${user.getId()}/delete" method="post">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <button class="btn btn-danger btn-sm">Eliminar</a>
                                </form>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </jsp:body>
</t:dashboard>
