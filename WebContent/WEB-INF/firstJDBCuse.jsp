<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Tests JDBC</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
    </head>
    <body>
        <h1>Tests JDBC</h1>
        <a href="insert.jsp">Insert Record</a>&nbsp;<a href="delete.jsp">Delete Record</a>&nbsp;<a href="update.jsp">Update Record</a>
        <c:forEach items="${messages}" var="message" varStatus="item">
            <p>${item.count} . ${message}</p>
        </c:forEach>
        <p>
        	<h3>List employés, nb occurences : ${nbEmployes}</h3>
	        <c:forEach items="${lstEmployes}" var="employe" varStatus="item">
	            <p>
	               ${employe.getPrenom()}  
	               ${employe.getNom()}  
	               <c:choose>
					    <c:when test="${true == employe.isGenius()}">
					        (genius)
					    </c:when>
					    <c:otherwise>
							(dummie)
					    </c:otherwise>
					</c:choose>
	            </p>
	        </c:forEach>
	    </p>
    </body>
</html>