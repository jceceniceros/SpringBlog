<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Todos los artículos</title>
    </jsp:attribute>

    <jsp:body>
        <div class="d-flex justify-content-between align-items-center">
            <h3 class="mb-0">Artículos > Ver todo</h3>
            <a href="/dashboard/articles/create" class="btn btn-outline-primary">Crear nuevo artículo</a>
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
                    <th class="text-center">Título</th>
                    <th class="text-center">Acciones</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${articles}" var="article">
                    <tr>
                        <td class="text-center">
                            ${article.getId()}
                        </td>
                        <td>
                            ${article.getTitle()}
                        </td>
                        <td class="text-center">
                            <a href="/dashboard/articles/${article.getId()}"
                                class="btn btn-primary btn-sm">Editar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </jsp:body>
</t:dashboard>
