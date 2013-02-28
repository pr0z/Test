<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
    	<p><%= "Hello World, today :" + new java.util.Date() %></p>
        <p>Ceci est une page générée depuis une JSP.</p>
        <p>
            ${test}
            ${param.auteur}
            ${auteur}
        </p>
        <p>
            Récupération du bean :
            ${firstEmp.prenom}
            ${firstEmp.nom}
        </p>
        <p>
            Récupération de la liste :
            
        </p>
        <p>
            Récupération du jour du mois :
            <%
            Integer jourDuMois = (Integer) request.getAttribute( "day" );
            if ( jourDuMois % 2 == 0 ){
                out.println("Jour pair : " + jourDuMois);
            } else {
                out.println("Jour impair : " + jourDuMois);
            }
            %>
        </p>
    </body>
</html>