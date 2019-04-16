<%--
  Created by IntelliJ IDEA.
  User: Edu
  Date: 31.03.2019
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/jspf/head_config.jspf"%>
    <title>Twitter App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/jspf/header.jspf"%>
    <%--<%@ include file="/WEB-INF/views/jspf/account.jsp"%>--%>

    <%@ include file="/WEB-INF/views/jspf/tweet/newest_tweets.jspf"%>

    <%@ include file="/WEB-INF/views/jspf/footer.jspf"%>
</body>
</html>
