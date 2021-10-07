<%@ page import="com.soris.SORIS_planing.admin.dashboard.models.topServiceProviderModel" %>
<%@ page import="java.util.List" %>
<%@ page import="com.soris.SORIS_planing.admin.dashboard.models.topServiceModel" %>
<%@ page import="java.util.HashMap" %><%--
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
    <title>Admin dashabord - SORIS</title>
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
<%
    int serviceProvidersCount = (int) request.getAttribute("spCount");
    int hostUserCount = (int) request.getAttribute("hostCount");
    int servicesCount = (int) request.getAttribute("serviceCount");
    int eventCount = (int) request.getAttribute("eventCount");
    HashMap<String, Integer> serviceSummery = (HashMap<String, Integer>) request.getAttribute("serviceSummery");
    List<topServiceProviderModel> topServiceProviderlist = (List<topServiceProviderModel>) request.getAttribute("topSpList");
    List<topServiceModel> topServicelist = (List<topServiceModel>) request.getAttribute("topServices");

%>
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
                        <span class="d-none d-xl-inline-block ms-1"
                              key="t-henry"><%=session.getAttribute("username")%></span>
                        <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">

                        <a class="dropdown-item text-danger" href="<%=request.getContextPath()%>/logout?redirect=admin"><i
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
                        <a href="<%=request.getContextPath()%>/adminHome" class="waves-effect">
                            <span key="t-dashboards">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/adminServices" class="waves-effect">
                            <span key="t-dashboards">Services</span>
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


                <div class="row">
                    <div class="col-md-3">
                        <div class="card mini-stats-wid">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="flex-grow-1">
                                        <p class="text-muted fw-medium">Service Providers</p>
                                        <h4 class="mb-0"><%=serviceProvidersCount%>
                                        </h4>
                                    </div>

                                    <div class="flex-shrink-0 align-self-center">
                                        <div class="mini-stat-icon avatar-sm rounded-circle bg-primary">
                                                            <span class="avatar-title">
                                                                <i class="bx bxs-business font-size-24"></i>
                                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card mini-stats-wid">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="flex-grow-1">
                                        <p class="text-muted fw-medium">Host Users</p>
                                        <h4 class="mb-0"><%=hostUserCount%>
                                        </h4>
                                    </div>

                                    <div class="flex-shrink-0 align-self-center ">
                                        <div class="avatar-sm rounded-circle bg-primary mini-stat-icon">
                                                            <span class="avatar-title rounded-circle bg-primary">
                                                                <i class="bx bx-user-check font-size-24"></i>
                                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card mini-stats-wid">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="flex-grow-1">
                                        <p class="text-muted fw-medium">Services</p>
                                        <h4 class="mb-0"><%=servicesCount%>
                                        </h4>
                                    </div>

                                    <div class="flex-shrink-0 align-self-center">
                                        <div class="avatar-sm rounded-circle mini-stat-icon">
                                                            <span class="avatar-title rounded-circle bg-warning">
                                                                <i class="bx bxs-shopping-bag font-size-24"></i>
                                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card mini-stats-wid">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="flex-grow-1">
                                        <p class="text-muted fw-medium">Event Count</p>
                                        <h4 class="mb-0"><%=eventCount%>
                                        </h4>
                                    </div>

                                    <div class="flex-shrink-0 align-self-center">
                                        <div class="avatar-sm rounded-circle bg-primary mini-stat-icon">
                                                            <span class="avatar-title rounded-circle bg-success">
                                                                <i class="bx bx-football font-size-24"></i>
                                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Summery of Services</h4>

                                <div class="text-center">
                                    <div class="mb-4">
                                        <i class="bx bx-map-pin text-primary display-4"></i>
                                    </div>
                                    <h3><%=serviceSummery.get("pending")%>
                                    </h3>
                                    <p>Waiting for Approval</p>
                                </div>

                                <div class="table-responsive mt-4">
                                    <table class="table align-middle table-nowrap">
                                        <tbody>
                                        <tr>
                                            <td style="width: 30%">
                                                <p class="mb-0">Waiting for Approval</p>
                                            </td>
                                            <td style="width: 25%">
                                                <h5 class="mb-0"><%=serviceSummery.get("pending")%>
                                                </h5></td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-primary rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("pending")/serviceSummery.get("total").floatValue()))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Approved</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("approved")%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-success rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("approved")/serviceSummery.get("total").floatValue()))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Rejected</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("rejected")%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("rejected")/serviceSummery.get("total").floatValue()))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Suspended</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("suspended")%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("suspended")/serviceSummery.get("total").floatValue()))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Top Service Providers</h4>

                                <div class="text-center">
                                    <div class="mb-4">
                                        <i class="bx bx-map-pin text-primary display-4"></i>
                                    </div>
                                    <h3><%= topServiceProviderlist.get(0).getCount()%>
                                    </h3>
                                    <p><%= topServiceProviderlist.get(0).getBrandName()%></p>
                                </div>

                                <div class="table-responsive mt-4">
                                    <table class="table align-middle table-nowrap">
                                        <tbody>
                                        <tr>
                                            <td style="width: 30%">
                                                <p class="mb-0"><%= topServiceProviderlist.get(0).getBrandName()%></p>
                                            </td>
                                            <td style="width: 25%">
                                                <h5 class="mb-0"><%= topServiceProviderlist.get(0).getCount()%>
                                                </h5></td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-primary rounded" role="progressbar"
                                                         style="width: <%=(topServiceProviderlist.get(0).getCount()/ (float) serviceProvidersCount)*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServiceProviderlist.get(1).getBrandName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServiceProviderlist.get(1).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-success rounded" role="progressbar"
                                                         style="width: <%=(topServiceProviderlist.get(1).getCount()/ (float) serviceProvidersCount)*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServiceProviderlist.get(2).getBrandName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServiceProviderlist.get(2).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=(topServiceProviderlist.get(2).getCount()/ (float) serviceProvidersCount)*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServiceProviderlist.get(3).getBrandName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServiceProviderlist.get(3).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=(topServiceProviderlist.get(3).getCount()/ (float) serviceProvidersCount)*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Top Services</h4>

                                <div class="text-center">
                                    <div class="mb-4">
                                        <i class="bx bx-map-pin text-primary display-4"></i>
                                    </div>
                                    <h3><%= topServicelist.get(0).getCount()%>
                                    </h3>
                                    <p><%= topServicelist.get(0).getName()%></p>
                                </div>

                                <div class="table-responsive mt-4">
                                    <table class="table align-middle table-nowrap">
                                        <tbody>
                                        <tr>
                                            <td style="width: 30%">
                                                <p class="mb-0"><%= topServicelist.get(0).getName()%></p>
                                            </td>
                                            <td style="width: 25%">
                                                <h5 class="mb-0"><%= topServicelist.get(0).getCount()%>
                                                </h5></td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-primary rounded" role="progressbar"
                                                         style="width: <%=((topServicelist.get(0).getCount()/(float)servicesCount))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServicelist.get(1).getName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServicelist.get(1).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-success rounded" role="progressbar"
                                                         style="width: <%=((topServicelist.get(1).getCount()/(float)servicesCount))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServicelist.get(2).getName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServicelist.get(2).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((topServicelist.get(2).getCount()/(float)servicesCount))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><%= topServicelist.get(3).getName()%></p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%= topServicelist.get(3).getCount()%>
                                                </h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((topServicelist.get(3).getCount()/(float)servicesCount))*100%>%"
                                                         aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
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