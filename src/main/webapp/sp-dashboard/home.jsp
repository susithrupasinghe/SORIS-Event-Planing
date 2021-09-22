<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/19/2021
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <title>SORIS Event Planning Platform</title>
</head>
<body>
    <c:forEach var = "ser" items = "${servDetails}">
        ${ser.sID}
        ${ser.name}
        ${ser.category}
        ${ser.price}
        ${ser.discount}
        ${ser.description}
    </c:forEach>
</body>
</html>
