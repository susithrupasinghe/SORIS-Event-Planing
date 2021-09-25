<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/19/2021
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

<%--<%--%>

<%--    int servicesCount = (int)request.getAttribute("serviceCount");--%>

<%--//    HashMap<String,Integer> serviceSummery = (HashMap<String,Integer>)request.getAttribute("serviceSummery");--%>
<%--//    List<topServiceProviderModel> topServiceProviderlist = (List<topServiceProviderModel>) request.getAttribute("topSpList");--%>
<%--//    List<topServiceModel> topServicelist = (List<topServiceModel>) request.getAttribute("topServices");--%>

<%--%>--%>

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
                                            <button type="button" class="btn btn-success btn-rounded waves-effect waves-light mb-2 me-2"><i class="mdi mdi-plus me-1"></i> Add New Service</button>
                                        </a>

                                    </div>
                                </div><!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <table class="table align-middle table-nowrap table-check">
                                    <thead class="table-light">
                                    <tr>
                                        <th style="width: 20px;" class="align-middle">
<%--                                            <div class="form-check font-size-16">--%>
<%--                                                <input class="form-check-input" type="checkbox" id="checkAll">--%>
<%--                                                <label class="form-check-label" for="checkAll"></label>--%>
<%--                                            </div>--%>
                                        </th>
                                        <th class="align-middle">Service ID</th>
                                        <th class="align-middle">Service Name</th>
                                        <th class="align-middle">Category</th>
                                        <th class="align-middle">Price</th>
                                        <th class="align-middle">Discount</th>
                                        <th class="align-middle">Description</th>
                                        <th class="align-middle">Service Status</th>
<%--                                        <th class="align-middle">Update Service</th>--%>
                                        <th class="align-middle"><center>Action</center></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
<%--                                            <div class="form-check font-size-16">--%>
<%--                                                <input class="form-check-input" type="checkbox" id="orderidcheck01">--%>
<%--                                                <label class="form-check-label" for="orderidcheck01"></label>--%>
<%--                                            </div>--%>
                                        </td>
                                        <td><a href="javascript: void(0);" class="text-body fw-bold">#SK2540</a> </td>
                                        <td>Neal Matthews</td>
                                        <td>
                                            07 Oct, 2019
                                        </td>
                                        <td>
                                            $400
                                        </td>
                                        <td>
                                            <span class="badge badge-pill badge-soft-success font-size-12">Paid</span>
                                        </td>
                                        <td>
                                            <i class="fab fa-cc-mastercard me-1"></i> Mastercard
                                        </td>

                                        <td>
                                            <span class="badge bg-success font-size-10">Completed</span>
                                        </td>

                                        <td>
                                            <div class="d-flex gap-3">
<%--                                                <button type="button" class="btn btn-primary btn-sm btn-rounded" data-bs-toggle="modal" data-bs-target=".orderdetailsModal">--%>
<%--                                                    Update Details--%>
<%--                                                </button><br>--%>
<%--                                                <button type="button" class="btn btn-primary btn-sm btn-rounded" data-bs-toggle="modal" data-bs-target=".orderdetailsModal">--%>
<%--                                                    Delete Service--%>
<%--                                                </button>--%>

                                                <a href="javascript:void(0);" class="text-success"><i class="mdi mdi-pencil font-size-18"></i></a>
                                                <a href="javascript:void(0);" class="text-danger"><i class="mdi mdi-delete font-size-18"></i></a>
                                            </div>
                                        </td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div>
<%--                            <ul class="pagination pagination-rounded justify-content-end mb-2">--%>
<%--                                <li class="page-item disabled">--%>
<%--                                    <a class="page-link" href="javascript: void(0);" aria-label="Previous">--%>
<%--                                        <i class="mdi mdi-chevron-left"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                                <li class="page-item active"><a class="page-link" href="javascript: void(0);">1</a></li>--%>
<%--                                <li class="page-item"><a class="page-link" href="javascript: void(0);">2</a></li>--%>
<%--                                <li class="page-item"><a class="page-link" href="javascript: void(0);">3</a></li>--%>
<%--                                <li class="page-item"><a class="page-link" href="javascript: void(0);">4</a></li>--%>
<%--                                <li class="page-item"><a class="page-link" href="javascript: void(0);">5</a></li>--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="javascript: void(0);" aria-label="Next">--%>
<%--                                        <i class="mdi mdi-chevron-right"></i>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
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

</div>
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

<%--    <c:url value="updateService.jsp" var="serUpdate">--%>
<%--        <c:param name="sID" value="${sID}"/>--%>
<%--        <c:param name="name" value="${sID}"/>--%>
<%--        <c:param name="category" value="${sID}"/>--%>
<%--        <c:param name="price" value="${sID}"/>--%>
<%--        <c:param name="discount" value="${sID}"/>--%>
<%--        <c:param name="description" value="${sID}"/>--%>
<%--    </c:url>--%>

<%--    <a href="${serUpdate}" >--%>
<%--        <input type="button" name="update" value="update service data">--%>
<%--    </a>--%>

<%--</body>--%>
<%--</html>--%>
