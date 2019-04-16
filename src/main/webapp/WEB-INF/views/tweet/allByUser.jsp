<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 11/04/19
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>My tweets</title>
</head>
<body>
<%@ include file="/WEB-INF/views/jspf/header.jspf" %>
<h3>My tweets:</h3>
<c:if test="${empty tweetsByUser}">
    <h3>No tweets</h3>
</c:if>
<c:if test="${not empty tweetsByUser}">
<table>
    <tr>
        <th>Published by</th>
        <th>Content</th>
        <th>Created</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${tweetsByUser}" var="tweet">
        <tr>
            <td>${loggedInUser.firstName}</td>
            <td>${tweet.text}</td>
            <%--<td><fmt:formatDate value="${tweet.created}" pattern="dd-mm-yyyy hh:mm:ss"/></td>--%>
            <td>${tweet.created}</td>
            <td><a href="/tweet/show?id=${tweet.id}">Show tweet</a></td>
        </tr>
    </c:forEach>
    </c:if>
</table>

</body>
</html>
