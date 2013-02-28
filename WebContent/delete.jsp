<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert employe</title>
    </head>
    <body>
        <form action="firstjdbc" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Delete Employe</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Identifiant de l'employé</label></td>
                        <td><input type="text" name="id"/></td>
                        <td><input type="hidden" value="delete" name="mode" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td>	
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>