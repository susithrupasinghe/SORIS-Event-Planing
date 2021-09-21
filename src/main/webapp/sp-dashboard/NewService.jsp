<%--
  Created by IntelliJ IDEA.
  User: Shavidini
  Date: 9/21/2021
  Time: 2:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <title>SORIS Event Planning Platform</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/NewServiceServlet" method="get">
    <label for="servicetname">Service Name</label>
    <input id="servicetname" name="servicetname" type="text" class="form-control">

    <div class="mb-3">
        <label class="control-label">Category</label>
        <select class="form-control select2">
            <option>Select</option>
            <option value="FA" name = "Category">Fashion</option>
            <option value="EL" name = "Category">>Electronic</option>
        </select>
    </div>

    <label for="price">Price</label>
    <input id="price" name="price" type="text" class="form-control">
    <br>
    <label for="Discount">Discount</label>
    <input id="Discount" name="Discount" type="text" class="form-control">
    <br>
    <label for="servicedesc">Service Description</label>
    <textarea class="form-control" id="servicedesc" rows="5"></textarea>
    <br>
    <div class="d-flex flex-wrap gap-2">
        <button type="submit" class="btn btn-primary waves-effect waves-light">Save Changes</button>
        <button type="button" class="btn btn-secondary waves-effect waves-light">Cancel</button>
    </div>
</form>
</body>
</html>
