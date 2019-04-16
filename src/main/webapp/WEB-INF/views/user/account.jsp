<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ include file="/WEB-INF/views/jspf/header.jspf" %>
<p class='main-menu'>
	<c:choose>
		<c:when test="${sessionScope.loggedInUser == null}">
			<a href="${pageContext.servletContext.contextPath}/user/register">Register</a>
			<a href="${pageContext.servletContext.contextPath}/user/login">Login</a>
		</c:when>
		<c:otherwise>
			<p>
				You are signed in as: ${loggedInUser.email} <a
					href="${pageContext.servletContext.contextPath}/user/logout">Logout</a>
			</p>
		</c:otherwise>
	</c:choose>
</p>