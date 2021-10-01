<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/19/2021
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.soris.SORIS_planing.sp.Service.controllers.serviceServlet" %>
<%@ page import="com.soris.SORIS_planing.sp.Service.models.service" %>
<%@ page import="com.soris.SORIS_planing.admin.dashboard.models.topServiceProviderModel" %>
<%@ page import="java.util.List" %>
<%@ page import="com.soris.SORIS_planing.admin.dashboard.models.topServiceModel" %>
<%@ page import="java.util.HashMap" %>

<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8"/>
    <title>SORIS Event Planning Platform</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
    <meta content="Themesbrand" name="author"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/dashboard/assets/images/favicon.ico">

    <!-- Bootstrap Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/bootstrap.min.css" id="bootstrap-style"
          rel="stylesheet" type="text/css"/>
    <!-- Icons Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/icons.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- App Css-->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/app.min.css" id="app-style" rel="stylesheet"
          type="text/css"/>

</head>

<body data-sidebar="dark">

<!-- <body data-layout="horizontal" data-topbar="dark"> -->

<!-- Begin page -->
<div id="layout-wrapper">


    <header id="page-topbar">
        <div class="navbar-header">
            <div class="d-flex">
                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="index.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo.svg"
                                         alt="" height="22">
                                </span>
                        <span class="logo-lg">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-dark.png"
                                         alt="" height="17">
                                </span>
                    </a>

                    <a href="index.html" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-light.svg"
                                         alt="" height="22">
                                </span>
                        <span class="logo-lg">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-light.png"
                                         alt="" height="19">
                                </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect"
                        id="vertical-menu-btn">
                    <i class="fa fa-fw fa-bars"></i>
                </button>


            </div>

            <div class="d-flex">

                <div class="dropdown d-inline-block d-lg-none ms-2">
                    <button type="button" class="btn header-item noti-icon waves-effect"
                            id="page-header-search-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="mdi mdi-magnify"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                         aria-labelledby="page-header-search-dropdown">

                        <form class="p-3">
                            <div class="form-group m-0">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search ..."
                                           aria-label="Recipient's username">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="dropdown d-inline-block">
                    <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="rounded-circle header-profile-user"
                             src="<%=request.getContextPath()%>/assets/dashboard/assets/images/users/avatar-1.jpg"
                             alt="Header Avatar">
                        <span class="d-none d-xl-inline-block ms-1" key="t-henry">Henry</span>
                        <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">

                        <a class="dropdown-item text-danger" href="#"><i
                                class="bx bx-power-off font-size-16 align-middle me-1 text-danger"></i> <span
                                key="t-logout">Logout</span></a>
                    </div>
                </div>

                <div class="dropdown d-inline-block">
                    <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                        <i class="bx bx-cog bx-spin"></i>
                    </button>
                </div>

            </div>
        </div>
    </header>

    <!-- ========== Left Sidebar Start ========== -->
    <div class="vertical-menu">

        <div data-simplebar class="h-100">

            <!--- Sidemenu -->
            <div id="sidebar-menu">
                <!-- Left Menu Start -->
                <ul class="metismenu list-unstyled" id="side-menu">
                    <li class="menu-title" key="t-menu">Menu</li>

                    <li>
                        <a href="javascript: void(0);" class="waves-effect">
                            <span key="t-dashboards">Dashboard</span>
                        </a>
                    </li>

                </ul>
            </div>
            <!-- Sidebar -->
        </div>
    </div>
    <!-- Left Sidebar End -->


    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->



    <div class="main-content">

        <div class="page-content">
            <div class="container-fluid">
<%--                <div class="col-md-3">--%>
<%--                    <div class="card mini-stats-wid">--%>
<%--                        <div class="card-body">--%>
<%--                            <div class="d-flex">--%>
<%--                                <div class="flex-grow-1">--%>
<%--                                    <p class="text-muted fw-medium">Service Providers</p>--%>
<%--                                    <h4 class="mb-0"><%=servicesCount%></h4>--%>
<%--                                </div>--%>

<%--                                <div class="flex-shrink-0 align-self-center">--%>
<%--                                    <div class="mini-stat-icon avatar-sm rounded-circle bg-primary">--%>
<%--                                                            <span class="avatar-title">--%>
<%--                                                                <i class="bx bxs-business font-size-24"></i>--%>
<%--                                                            </span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--    <div class="page-content">--%>
<%--        <div class="container-fluid">--%>

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0 font-size-18">Services</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Services</a></li>
                                <li class="breadcrumb-item active">Services provider</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

    <!--Error modal-->
    <%--<div class="modal fade" id="errormodel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Successful Message</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p><%=request.getAttribute("error")%></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>--%>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-4">
                                    <div class="search-box me-2 mb-2 d-inline-block">
<%--                                        <div class="position-relative">--%>
<%--                                            <input type="text" class="form-control" placeholder="Search...">--%>
<%--                                            <i class="bx bx-search-alt search-icon"></i>--%>
<%--                                        </div>--%>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="text-sm-end">
                                        <a href="newService.jsp">
                                            <button type="button" class="btn btn-success btn-rounded waves-effect waves-light mb-2 me-2"><i class="mdi mdi-plus me-1"></i>
                                                Add New Service </button>
                                        </a>
                                    </div>
                                </div><!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <table class="table align-middle table-nowrap table-check">
                                    <thead class="table-light">
                                    <tr>
                                        <th class="align-middle">Service ID</th>
                                        <th class="align-middle">Service Name</th>
                                        <th class="align-middle">Category</th>
                                        <th class="align-middle">Price per QTY</th>
                                        <th class="align-middle">Discount</th>
                                        <th class="align-middle">Status</th>
                                        <th class="align-middle">View Details</th>
                                    </tr>
                                    </thead>

                                    <%--Open Table Body--%>
                                    <tbody>
                                    <c:forEach var = "ser" items = "${servicesDetails}">
                                        <c:set var="sID" value="${ser.sID}"></c:set>
                                        <c:set var="name" value="${ser.name}"></c:set>
                                        <c:set var="category" value="${ser.category}"></c:set>
                                        <c:set var="price" value="${ser.price}"></c:set>
                                        <c:set var="discount" value="${ser.discount}"></c:set>
                                        <c:set var="status" value="${ser.status}"></c:set>
                                        <c:set var="description" value="${ser.description}"></c:set>

                                        <c:url value="updateService.jsp" var="serUpdate">
                                            <c:param name="sID" value="${sID}"/>
                                            <c:param name="name" value="${name}"/>
                                            <c:param name="category" value="${category}"/>
                                            <c:param name="price" value="${price}"/>
                                            <c:param name="discount" value="${discount}"/>
                                            <c:param name="status" value="${status}"/>
                                            <c:param name="description" value="${description}"/>
                                        </c:url>

                                    <tr>
                                        <td><a href="javascript: void(0);" class="text-body fw-bold">${ser.sID}</a></td>
                                        <td>${ser.name}</td>
                                        <td>${ser.category}</td>
                                        <td>${ser.price}</td>
                                        <td><span class="badge badge-pill badge-soft-success font-size-11">${ser.discount}</span></td>
                                        <td>
                                            <c:if test='${ser.status == "pending"}'>
                                                <%--<i class="fab fa-cc-mastercard me-1"></i> ${ser.status}</td>--%>
                                                <span class="badge badge-pill badge-soft-warning font-size-12"> ${ser.status}</span>
                                            </c:if>
                                            <c:if test='${ser.status == "suspended"}'>
                                                <%--<i class="fab fa-cc-mastercard me-1"></i> ${ser.status}</td>--%>
                                                <span class="badge badge-pill badge-soft-danger font-size-12">${ser.status}</span>
                                            </c:if>
                                            <c:if test='${ser.status == "approved"}'>
                                                <%--<i class="fab fa-cc-mastercard me-1"></i> ${ser.status}</td>--%>
                                                <span class="badge badge-pill badge-soft-success font-size-12">${ser.status}</span>
                                            </c:if>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary btn-sm btn-rounded waves-effect waves-light" data-bs-toggle="modal" data-bs-target=".ser_${ser.sID}">
                                                View Details
                                            </button>
                                        </td>

                                        <%--<td>
                                            <a href="${serUpdate}" >
                                            <button type="button" class="btn btn-primary btn-sm btn-rounded waves-effect waves-light" data-bs-toggle="modal" data-bs-target=".ser_${ser.sID}">
                                                Update
                                            </button>
                                            </a>
                                        </td>--%>
                                    </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
<%--            <!-- end row -->--%>
<%--        </div> <!-- container-fluid -->--%>
<%--    </div>--%>
<%--    <!-- End Page-content -->--%>

            </div>

        </div>
        <!-- End Page-content -->

        <%--Model--%>
        <c:forEach var = "ser" items = "${servicesDetails}">
        <div class="modal fade ser_${ser.sID}" tabindex="-1" aria-labelledby="transaction-detailModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="transaction-detailModalLabel">Service Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="mb-2">Product id: <span class="text-primary">${ser.sID}</span></p>
                        <p class="mb-4">Billing Name: <span class="text-primary">${ser.name}</span></p>

                        <div class="table-responsive">
                            <table class="table align-middle table-nowrap">
                                <thead>
                                <tr>
                                    <th scope="col">Service Name</th>
                                    <th scope="col">Service Price</th>
                                </tr>
                                </thead>

                                    <%-- Table body--%>
                                <tbody>
                                <tr>
                                    <td>
                                        <div>
                                            <h5 class="text-truncate font-size-14">${ser.name}</h5>
                                            <p class="text-muted mb-0">${ser.description}</p>
                                        </div>
                                    </td>
                                    <td>${ser.price}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <%--<a href="<%=request.getContextPath()%>/updateService.jsp?id=${ser.sID}&status=suspended"><button type="button" class="btn btn-primary" data-bs-dismiss="modal">Edit Your Service</button></a>--%>
                        <a href="<%=request.getContextPath()%>/updateServiceServlet?sID=${ser.sID}"><button type="button" class="btn btn-primary" data-bs-dismiss="modal">Edit Your Service</button></a>
                        <a href="<%=request.getContextPath()%>/deleteServiceServlet?sID=${ser.sID}"><button type="button" class="btn btn-primary" data-bs-dismiss="modal">Delete</button></a>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
            </c:forEach>

        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <script>document.write(new Date().getFullYear())</script>
                        © SORIS.
                    </div>
                    <div class="col-sm-6">
                        <div class="text-sm-end d-none d-sm-block">
                            Design & Develop by SORIS IT Division
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- end main content-->

<%--</div>--%>
<!-- END layout-wrapper -->


<!-- JAVASCRIPT -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/metismenu/metisMenu.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/simplebar/simplebar.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/node-waves/waves.min.js"></script>

<!-- apexcharts -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/apexcharts/apexcharts.min.js"></script>

<!-- dashboard init -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/dashboard.init.js"></script>

<!-- App js -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/app.js"></script>
</body>

<%--Pop-up--%>
<%--<% if (request.getAttribute("error") != null ){%>
<script>
    setTimeout(function(){ $('#errormodel').modal('show'); }, 100);
</script>
<%}%>--%>

</html>



<%--<html>--%>
<%--<head>--%>
<%--    <link href="../assets/landing/assets/images/favicon/favicon.png" rel="icon"/>--%>
<%--    <title>SORIS Event Planning Platform</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <c:forEach var = "ser" items = "${servicesDetails}">--%>

<%--        <c:set var="sID" value="${ser.sID}" />--%>
<%--        <c:set var="name" value="${ser.name}" />--%>
<%--        <c:set var="category" value="${ser.category}" />--%>
<%--        <c:set var="price" value="${ser.price}" />--%>
<%--        <c:set var="discount" value="${ser.discount}" />--%>
<%--        <c:set var="description" value="${ser.description}" />--%>

<%--        ${ser.sID}--%>
<%--        ${ser.name}--%>
<%--        ${ser.category}--%>
<%--        ${ser.price}--%>
<%--        ${ser.discount}--%>
<%--        ${ser.description}--%>
<%--    </c:forEach>--%>

<%--    <c:url value="updateService.jsp" var="serUpdate">
        <c:param name="sID" value="${sID}"/>
        <c:param name="name" value="${sID}"/>
        <c:param name="category" value="${sID}"/>
        <c:param name="price" value="${sID}"/>
        <c:param name="discount" value="${sID}"/>
        <c:param name="description" value="${sID}"/>
    </c:url>--%>

<%--    <a href="${serUpdate}" >
        <input type="button" name="update" value="update service data">
    </a>--%>

<%--</body>--%>
<%--</html>--%>
