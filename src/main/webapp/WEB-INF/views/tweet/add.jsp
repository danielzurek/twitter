<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 10/04/19
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add tweet</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/jspf/header.jspf" %>
<form method="post">
    <%--<input type="hidden" name="user" value="1"/>--%>
    <div class="form-group" style="width: 25%">
        <label for="contentTextArea">Tweet content</label>
        <textarea class="form-control"  name="text" id="contentTextArea" rows="8"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<%--<form:form method="post" modelAttribute="tweet">--%>
    <%--<form:input path="user" value="1" type="hidden"/>--%>
    <%--<label>Content<form:input path="text" type="text"/></label>--%>
    <%--<input type="submit" value="Save">--%>
    <%--<div><form:errors path="*"/></div>--%>
<%--</form:form>--%>
</body>
</html>
