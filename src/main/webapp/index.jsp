<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Se din konti!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<h1>Konti liste</h1>

<c:forEach items="${applicationScope.Konti}" var="element">

    ${element.value.navn} : ${element.value.saldo}
    <br>

</c:forEach>





<h1>Her kan du logge ind på din konti</h1>

<h1>${requestScope.fejl }</h1>

<form action="ServletLogin">
    <label for="fname">Navn:</label><br>
    <input type="text" id="fname" name="navn" value="navn"><br>
    <label for="lname">Kodeord: </label><br>
    <input type="password" id="lname" name="kode" value="hemmelig"><br><br>
    <input type="submit" value="Login">
</form>



</body>
</html>