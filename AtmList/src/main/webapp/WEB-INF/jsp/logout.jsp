<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true"%>

<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<!DOCTYPE html>
<html>
<head>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="_csrf" content="" />
        <meta name="_csrf_header" content="${_csrf.headerName}" />
        <title>ING ATM</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/lib/angular.min.js" type="text/javascript"></script>
        <script src="${cp}/resources/js/atm.js"></script>
    </head>
</head>
<body ng-app="atm">
	<h4>${greeting}</h4>
        <div th:if="${param.logout}">
            You have been logged out.
        </div>
            
        <div ng-controller="ctrl" context-path="${cp}">
                <p>
                    <button ng-click="go('home')" >Home</button>
                </p>
        </div>
</body>
</html>