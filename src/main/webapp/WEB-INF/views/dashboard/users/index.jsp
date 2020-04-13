<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Mostrar usuarios</title>
    </jsp:attribute>

    <jsp:body>
        <section>
            <div class="d-flex justify-content-between align-items-center">
                <h2 class="mb-0">Usuarios > Todos los usuarios</h2>
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
                                <c:out value="${user.getId()}" />
                            </td>
                            <td>
                                <c:out value="${user.getFullname()}" />
                            </td>
                            <td>
                                <c:out value="${user.getUsername()}" />
                            </td>
                            <td class="text-center">
                                <a href="/dashboard/users/${user.getId()}" class="btn btn-primary">Editar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </jsp:body>
</t:dashboard>
