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
                        <th colspan="2">Update Employe</th>
                    </tr>
                </thead>
                <tbody>
                	<tr>
                        <td><label>ID</label></td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td><label>Fisrt Name</label></td>
                        <td><input type="text" name="firstname"/></td>
                    </tr>
                    <tr>
                        <td><label>Is Genius</label></td>
                        <td><input type="text" name="isgenius"/></td>
                        <td><input type="hidden" value="update" name="mode" /></td>
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