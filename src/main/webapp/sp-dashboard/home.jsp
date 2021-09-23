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

        <c:set var="sID" value="${ser.sID}" />
        <c:set var="name" value="${ser.name}" />
        <c:set var="category" value="${ser.category}" />
        <c:set var="price" value="${ser.price}" />
        <c:set var="discount" value="${ser.discount}" />
        <c:set var="description" value="${ser.description}" />

        ${ser.sID}
        ${ser.name}
        ${ser.category}
        ${ser.price}
        ${ser.discount}
        ${ser.description}
    </c:forEach>

    <c:url value="UpdateService.jsp" var="serUpdate">
        <c:param name="sID" value="${sID}"/>
        <c:param name="name" value="${sID}"/>
        <c:param name="category" value="${sID}"/>
        <c:param name="price" value="${sID}"/>
        <c:param name="discount" value="${sID}"/>
        <c:param name="description" value="${sID}"/>
    </c:url>

    <a href="${serUpdate}" >
        <input type="button" name="update" value="update service data">
    </a>

</body>
</html>
