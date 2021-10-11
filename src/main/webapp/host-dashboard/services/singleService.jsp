<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.soris.SORIS_planing.host.services.models.serviceModel" %>
<%@ page import="com.soris.SORIS_planing.host.services.models.spModel" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/19/2021
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    serviceModel service = (serviceModel)request.getAttribute("service");
    spModel serviceprovider =  (spModel)request.getAttribute("sp");

%>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8"/>
    <title>Dashboard | Skote - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
    <meta content="Themesbrand" name="author"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/dashboard/assets/images/favicon.ico">

    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css">

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


    <%--    Model here --%>
    <div class="modal fade" id="errormodel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Something wrong</h5>
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
    </div>

    <div class="main-content">

        <div class="page-content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="product-detai-imgs">
                                            <div class="row">
                                                <div class="col-md-2 col-sm-3 col-4">
                                                    <div class="nav flex-column nav-pills " id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                                        <a class="nav-link active" id="product-1-tab" data-bs-toggle="pill" href="#product-1" role="tab" aria-controls="product-1" aria-selected="true">

                                                            <img src="data:image/jpeg;base64,<%=service.getImages()%>" alt="" class="img-fluid mx-auto d-block rounded">

                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="col-md-7 offset-md-1 col-sm-9 col-8">
                                                    <div class="tab-content" id="v-pills-tabContent">
                                                        <div class="tab-pane fade show active" id="product-1" role="tabpanel" aria-labelledby="product-1-tab">
                                                            <div>

                                                                <img src="data:image/jpeg;base64,<%=service.getImages()%>" alt="" class="img-fluid mx-auto d-block">

                                                            </div>
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-6">
                                        <div class="mt-4 mt-xl-3">
                                            <a href="javascript: void(0);" class="text-primary"><%=service.getCategory()%></a>
                                            <h4 class="mt-1 mb-3"><%=service.getName()%></h4>


                                            <h6 class="text-success text-uppercase"><%=service.getDiscount()%> % Off</h6>
                                            <h5 class="mb-4">Price :  <b><%=service.getPrice()%> LKR</b></h5>
                                            <p class="text-muted mb-4"><%=service.getDescription()%></p>

                                            <form method="post" action="<%=request.getContextPath()%>/addToBudget">
                                            <div class="col-sm-3">
                                                <input data-toggle="touchspin" type="text" name="count" value="1">
                                                <input type="hidden" name="sid" value="<%=service.getSid()%>">

                                                <label for="eventsel">Event : </label>
                                                <div id="eventsel" class="app-search d-none d-lg-block" style="width: 300px;">


                                                    <div class="position-relative">
                                                        <select class="form-select" name="eid" required>
                                                            <option value="" disabled selected>Select your Event</option>
                                                            <c:forEach var = "event" items = "${events}">
                                                                <c:if test="${event.key ==  eid }">
                                                                    <option value="${event.key}" selected>${event.value}</option>
                                                                </c:if>
                                                                <c:if test="${event.key != eid}">
                                                                    <option value="${event.key}">${event.value}</option>
                                                                </c:if>
                                                            </c:forEach>
                                                        </select>

                                                    </div>
                                                </div>

                                            </div>

                                                <div class="col-sm-3">
<%--                                            <div class="text-center">--%>
                                                <button type="submit" class="btn btn-primary waves-effect waves-light mt-2 me-1">
                                                    <i class="bx bx-cart me-2"></i> Add to Budget
                                                </button>
<%--                                            </div>--%>

                                                </div>
                                                <br>
                                                <br>
                                                <h4 class="mb-4">Contact No :  <b><%=serviceprovider.getContactno()%></b></h4>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="mt-5">
                                    <h5 class="mb-3">Service Provider Details :</h5>

                                    <div class="table-responsive">
                                        <table class="table mb-0 table-bordered">
                                            <tbody>
                                            <tr>
                                                <th scope="row" style="width: 400px;">Brand Name</th>
                                                <td><%=serviceprovider.getBrandname()%></td>

                                            </tr>
                                            <tr>
                                                <th scope="row">Address</th>
                                                <td><%=serviceprovider.getAddress()%></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Email</th>
                                                <td><%=serviceprovider.getEmail()%></td>
                                            </tr>
                                            <tr>

                                                <th scope="row">Contact No</th>
                                                <td><%=serviceprovider.getContactno()%></td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- end Specifications -->

                            </div>
                        </div>
                        <!-- end card -->
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

<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/select2/js/select2.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/@chenfengyuan/datepicker/datepicker.min.js"></script>



<!-- apexcharts -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/apexcharts/apexcharts.min.js"></script>

<!-- dashboard init -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/dashboard.init.js"></script>

<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/form-advanced.init.js"></script>
<!-- App js -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/app.js"></script>

<% if (request.getAttribute("error") != null ){%>
<script>
    setTimeout(function(){ $('#errormodel').modal('show'); }, 100);

</script>
<%}%>
</body>

</html>