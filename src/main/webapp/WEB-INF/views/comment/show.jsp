<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 12/04/19
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
    <title>Tweet details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" style="margin-left: 1%">
    <div class="row">
        <div class="col-md-8">
            <div class="page-header">
                <h3><small class="pull-right"></small> Comments </h3>
            </div>
            <div class="comments-list">
<c:forEach items="${comments}" var="comment">
    <div class="media">
        <p class="pull-right"><small>${comment.created}</small></p>
        <a class="media-left" href="#">
            <img src="http://lorempixel.com/40/40/people/1/">
        </a>
        <div class="media-body">

            <h4 class="media-heading user_name">${comment.user.firstName}&nbsp;${comment.user.lastName}</h4>
            <p>${comment.commentText}</p>
        </div>
    </div>
</c:forEach>
            </div>
        </div>
    </div>
</div>


<%--<%@ include file="/WEB-INF/views/comment/add.jsp"%>--%>
</body>
</html>
