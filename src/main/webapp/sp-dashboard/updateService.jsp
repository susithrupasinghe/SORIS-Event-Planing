<%--
  Created by IntelliJ IDEA.
  User: Shavidini
  Date: 9/22/2021
  Time: 1:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <title>SORIS Event Planning Platform</title>
</head>
<body>

<%
    String sID = request.getParameter("sID");
    String name = request.getParameter("name");
    String category = request.getParameter("category");
    String price = request.getParameter("price");
    String discount = request.getParameter("discount");
    String description = request.getParameter("description");
%>

<form action="<%=request.getContextPath()%>/UpdateServiceServlet" method="post">
    <lable for="sID">Service ID</lable>
    <input type="text" name="sID" id="sID" value="<%=sID%>" readonly>

    <label for="servicetname">Service Name</label>
    <input id="servicetname" name="servicetname" type="text" value="<%= name%>" class="form-control">

    <div class="mb-3">
        <label class="control-label">Category</label>
        <select class="form-control select2" name="Category" >
            <option>Select</option>
            <option value="Fashion" name = "Category">Fashion</option>
            <option value="Electronic" name = "Category">>Electronic</option>
        </select>
    </div>

    <label for="price">Price</label>
    <input id="price" name="price" type="text" value="<%= price%>" class="form-control">
    <br>
    <label for="Discount">Discount</label>
    <input id="Discount" name="Discount" type="text" value="<%= discount%>" class="form-control">
    <br>
    <label for="servicedesc">Service Description</label>
    <textarea class="form-control" id="servicedesc" value="<%= description%>" rows="5"></textarea>
    <br>
    <div class="d-flex flex-wrap gap-2">
        <button type="submit" class="btn btn-primary waves-effect waves-light">Save Changes</button>
        <button type="button" class="btn btn-secondary waves-effect waves-light">Cancel</button>
    </div>
</form>
</body>
</html>
