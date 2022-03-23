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

    ${Kim.value.navn} : ${Kim.value.saldo}
    <br>

</c:forEach>


</body>
</html>