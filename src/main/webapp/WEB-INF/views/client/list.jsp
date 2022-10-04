<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Home</title>
    </head>

    <style type="text/css">
        .btn-link {
            border: none;
            outline: none;
            background: none;
            cursor: pointer;
            color: #0000EE;
            text-decoration: underline;
            font-family: inherit;
            font-size: inherit;
        }

        td,tr {
            border: 1px solid black;
        }
    </style>
    <body>

        <h1>Home</h1>
        <a href="register">Register new client</a>

        <table>
            <tbody>
                <tr>
                    <td>Name</td>
                    <td>Date of Birth</td>
                    <td>Phone number</td>
                    <td>Email</td>
                    <td></td>
                    <td></td>

                </tr>
                <c:forEach items="${clients}" var="client">
                    <tr>
                        <td><c:out value="${client.nombre}"/></td>
                        <td><c:out value="${client.fecha_nacimiento}"/></td>
                        <td><c:out value="${client.celular}"/></td>
                        <td><c:out value="${client.correo}"/></td>
                        <td><a href="delete/${client.id_client}">Delete</a> </td>
                        <td><a href="update/${client.id_client}">Update</a> </td>
                    </tr>
            </c:forEach>
        </tbody>
    </table>
        
    </body>
</html>