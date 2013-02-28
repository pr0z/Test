<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>JINSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.name or empty param.firstname or empty param.isgenius}">
            <c:redirect url="insert.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/basesJEE"
                           user="root"  password="unzziped"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO Employe(nomEmploye, prenomEmploye, isGenius) VALUES (?,?,?);
            <sql:param value="${param.name}" />
            <sql:param value="${param.firstname}" />
            <sql:param value="${param.isgenius}" />
        </sql:update>
     	<c:if test="${result>=1}">
            <c:redirect url="firstjdbc" />
        </c:if>
 
 
    </body>
</html>