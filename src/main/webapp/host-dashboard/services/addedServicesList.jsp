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
    <title>View Added Services - SORIS</title>
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
                        <span class="d-none d-xl-inline-block ms-1" key="t-henry"><%=session.getAttribute("username")%></span>
                        <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">

                        <a class="dropdown-item text-danger" href="<%=request.getContextPath()%>/logout?redirect=host"><i
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
                        <a href="<%=request.getContextPath()%>/eventList" class="waves-effect">
                            <span key="t-dashboards">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/host-dashboard/event/eventCreation.jsp" class="waves-effect">
                            <span key="t-dashboards">Create Event</span>
                        </a>
                    </li>

                    <li>
                        <a href="<%=request.getContextPath()%>/host-dashboard/services/servicesCategory.jsp" class="waves-effect">
                            <span key="t-dashboards">Add Services</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/selectedServices" class="waves-effect">
                            <span key="t-dashboards">View Selected Services</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/addFinance" class="waves-effect">
                            <span key="t-dashboards">Add Finance</span>
                        </a>
                    </li>

                    <li>
                        <a href="<%=request.getContextPath()%>/viewBudget" class="waves-effect">
                            <span key="t-dashboards">View Finance</span>
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
    <c:forEach var = "ser" items = "${servicelist}">
        <div class="modal fade ser_${ser.esid}" tabindex="-1" aria-labelledby="transaction-detailModalLabel" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="transaction-detailModalLabel">Service Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="mb-2">Product id: <span class="text-primary">${ser.esid}</span></p>
                        <p class="mb-4">Billing Name: <span class="text-primary">${ser.name}</span></p>
                        <p class="mb-4">Category: <span class="text-primary">${ser.category}</span></p>
                        <p class="mb-4">Total Price: <span class="text-primary">${ser.totalPrice}</span></p>

                        <div class="table-responsive">
                            <table class="table align-middle table-nowrap">
                                <thead>
                                <tr>
                                        <%--                  <th scope="col">Service Id</th>--%>
                                    <th scope="col">Service Name</th>
                                    <th scope="col">Service Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>

                                    <td>
                                        <div>
                                            <h5 class="text-truncate font-size-14">${ser.name}</h5>
                                            <p class="text-muted mb-0">${ser.description}</p>
                                        </div>
                                    </td>
                                    <td>${ser.qtyPrice}</td>
                                </tr>


                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>

    <c:forEach var="ser" items="${servicelist}">
        <div class="modal fade  delete_${ser.esid}" tabindex="-1" role="dialog" style="display: none;" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Delete Event</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are You sure you want to delete this service ?</p>
                    </div>
                    <div class="modal-footer">
                        <!--<button type="button" class="btn btn-primary">Delete Event</button>-->
                        <a href="<%=request.getContextPath()%>/deleteService?esid=${ser.esid}" class="text-danger" type="button"> <button type="button" class="btn btn-primary">Delete Service</button></a>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

    </c:forEach>
    <div class="main-content">

        <div class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title mb-4">Select Event</h5>

                                <form class="row gy-2 gx-3 align-items-center" method="post" action="<%=request.getContextPath()%>/selectedServices">

                                    <div class="col-sm-auto">
                                        <label class="visually-hidden" for="autoSizingSelect">Preference</label>
                                        <select class="form-select" id="autoSizingSelect" name="eid">
                                            <c:forEach var="names" items="${list}">
                                                <c:if test="${eid ==  names.key }">
                                                    <option value = "${names.key}" selected>${names.value}</option>
                                                </c:if>
                                                <c:if test="${eid !=  names.key }">
                                                    <option value = "${names.key}">${names.value}</option>
                                                </c:if>

                                            </c:forEach>

                                        </select>
                                    </div>

                                    <div class="col-sm-auto">
                                        <button type="submit" class="btn btn-primary w-md">View Services List</button>
                                    </div>
                                </form>
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->
                </div>


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Services List</h4>
                                <div class="table-responsive">
                                    <table class="table align-middle table-nowrap mb-0">
                                        <thead class="table-light">
                                        <tr>

                                            <th class="align-middle">Service ID</th>
                                            <th class="align-middle">Name</th>
                                            <th class="align-middle">Category</th>
                                            <th class="align-middle">Quantity</th>
                                            <th class="align-middle">Discount</th>
                                            <th class="align-middle">Quantity Price</th>
                                            <th class="align-middle">Total Price</th>
                                            <th class="align-middle">More Details</th>
                                            <th class="align-middle">Delete</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var = "ser" items = "${servicelist}">

                                            <tr>

                                                <td><a href="javascript: void(0);" class="text-body fw-bold">${ser.esid}</a> </td>
                                                <td>${ser.name}</td>
                                                <td>${ser.category}</td>
                                                <td>${ser.quantity}</td>
                                                <td>
                                                    <span class="badge badge-pill badge-soft-success font-size-11">${ser.discount}</span>
                                                </td>
                                                <td>${ser.qtyPrice}</td>
                                                <td>${ser.totalPrice}</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-sm btn-rounded waves-effect waves-light" data-bs-toggle="modal" data-bs-target=".ser_${ser.esid}">
                                                        View Details
                                                    </button>
                                                </td>
                                                <td>
                                                    <div class="d-flex gap-3">

                                                        <button type="button" class="btn btn-primary btn-sm btn-rounded" data-bs-toggle="modal" data-bs-target=".delete_${ser.esid}">
                                                            <i class="mdi mdi-delete font-size-18"></i>
                                                        </button>

                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- end table-responsive -->
                            </div>
                        </div>
                    </div>
                </div>











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