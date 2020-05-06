<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:dashboard>
    <jsp:attribute name="title">
        <title>SpringBlog | Editar artículo</title>
    </jsp:attribute>

    <jsp:attribute name="scripts">
        <script type="text/javascript" src="/scripts/vendor/editor/editor.js"></script>
        <script src="/scripts/dashboard/articles/editor.js"></script>
    </jsp:attribute>

    <jsp:body>
        <div class="d-flex justify-content-between align-items-center">
            <h3 class="mb-0">Artículos > Editar</h3>
            <a href="/dashboard/articles" class="btn btn-link">Cancelar</a>
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

        <spring:hasBindErrors name="articleForm">
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

        <form action="/dashboard/articles/${article.getId()}" method="post" class="form">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <div class="form-group">
                <label for="article-title">Título:</label>
                <input type="text" name="title"
                    id="article-title" class="form-control"
                    value="${article.getTitle()}">
            </div>

            <div class="form-group">
                <label for="article-body">Contenido:</label>
                <textarea name="body"
                    id="article-body" class="form-control"
                    rows="50">${article.getBody()}</textarea>
            </div>

            <div class="form-group">
                <label for="article-image-url">URL de imagen:</label>
                <input type="text" name="imageUrl"
                    id="article-image-url" class="form-control"
                    value="${article.getImageUrl()}">
            </div>

            <div class="form-group text-center">
                <input type="submit" class="btn btn-primary" value="Guardar cambios">
            </div>
        </form>
    </jsp:body>
</t:dashboard>
