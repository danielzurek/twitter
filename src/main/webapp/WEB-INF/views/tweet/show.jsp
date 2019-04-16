<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 11/04/19
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<%@ include file="/WEB-INF/views/jspf/header.jspf" %>
<br>
    <div class="form-group" style="width: 25%">
    <label for="userName">User</label></br>
        <fieldset disabled="disabled">
        <input type="text" class="form-control" id="userName" value="${tweet.user.firstName}&nbsp;${tweet.user.lastName}">
        <label for="contentTextArea">Content</label></br>
        <textarea class="form-control" id="contentTextArea" rows="8">${tweet.text}</textarea>
        </fieldset>
    </div>
    <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
</form>

<div id="comments"><%@ include file="/WEB-INF/views/comment/show.jsp"%></div>
<div id="commentAdd" style="margin-left: 2%"><%@ include file="/WEB-INF/views/comment/add.jsp"%>
</div>

</body>
</html>
