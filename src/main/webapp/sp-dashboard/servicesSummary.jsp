<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="com.soris.SORIS_planing.sp.Service.models.topServicesModel" %>
<%@ page import="com.soris.SORIS_planing.sp.Service.models.service" %>
<%--
  Created by IntelliJ IDEA.
  User: Shavidini
  Date: 10/1/2021
  Time: 1:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<%
    int servicesCount = (int) request.getAttribute("serviceCount");
    HashMap<String, Integer> serviceSummery = (HashMap<String, Integer>) request.getAttribute("serviceSummery");
    HashMap<String, Integer> serviceCatSummery = (HashMap<String, Integer>) request.getAttribute("catSumOfServices");
    List<topServicesModel> topServiceslist = (List<topServicesModel>) request.getAttribute("topServices");
    String address = (String) request.getAttribute("address");
    String contactno = (String) request.getAttribute("contactno");
    String email = (String) request.getAttribute("email");
%>


<head>
    <meta charset="utf-8"/>
    <link href="<%=request.getContextPath()%>/assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <title>SORIS Event Planning Platform</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description"/>
    <meta content="Themesbrand" name="author"/>

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
                              key="t-henry"><%=session.getAttribute("username")%>
                        </span>
                        <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-end">

                        <a class="dropdown-item text-danger" href="<%=request.getContextPath()%>/logout?redirect=sp"><i
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
                        <a href="<%=request.getContextPath()%>/spServicesSummary" class="waves-effect">
                            <span key="t-dashboards">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/servicesListDetails" class="waves-effect">
                            <span key="t-dashboards">Services</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/sp-dashboard/newService.jsp" class="waves-effect">
                            <span key="t-dashboards">Add New Services</span>
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

                    <%--<div class="col-xl-8">--%>
                        <%--<div class="row">--%>
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/users/avatar-1.jpg" alt="" class="avatar-md rounded-circle img-thumbnail">
                                                    </div>
                                                    <div class="flex-grow-1 align-self-center">
                                                        <div class="text-muted">
                                                            <p class="mb-2">Welcome</p>
                                                            <h5 class="mb-1"><%=session.getAttribute("username")%></h5>
                                                            <p class="mb-0"><%=email%></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-4">
                                                <div class="d-flex">
                                                    <div class="flex-grow-1 align-self-center">
                                                        <div class="text-muted">
                                                            <h6 class="mb-1">Address:</h6>
                                                            </h6><p class="mb-2"><%=address%></p>
                                                            <h6 class="mb-1">Contact number:</h6>
                                                            </h6><p class="mb-2"><%=contactno%></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-4">
                                                <div class="d-flex">
                                                <div class="text-lg-center mt-4 mt-lg-0">
                                                    <div class="flex-grow-1 align-self-center">
                                                        <div class="text-muted">
                                                            <div>
                                                                <b><h5 >Total Services</h5></b>
                                                                <h5 class="mb-0"><%=servicesCount%></h5>
                                                            </div>
                                                        </div>
                                                        <a href="<%=request.getContextPath()%>/sp-dashboard/newService.jsp" target="_blank">
                                                            <button class="btn btn-primary" type="button" >
                                                                <i class="bx bxs-cog align-middle me-1"></i> Add New Service
                                                            </button>
                                                        </a>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div>
                        </div>
                <!-- end row -->
                    </div>

                    <%--summary of services--%>
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">Service Status</h4>

                                    <div class="text-center">
                                        <div class="mb-4">
                                            <i class="bx bx-map-pin text-primary display-4"></i>
                                        </div>
                                        <h3><%=serviceSummery.get("pending")%></h3>
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
                                    <h4 class="card-title mb-4">Service Categories</h4>

                                    <div class="text-center">
                                        <div class="mb-4">
                                            <i class="bx bx-map-pin text-primary display-4"></i>
                                        </div>
                                    </div>

                                    <div class="table-responsive mt-4">
                                        <table class="table align-middle table-nowrap">
                                            <tbody>
                                            <tr>
                                                <td style="width: 30%">
                                                    <p class="mb-0">Foods</p>
                                                </td>
                                                <td style="width: 25%">
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Foods")%>
                                                    </h5></td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-primary rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Foods")/serviceCatSummery.get("total").floatValue()))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30%">
                                                    <p class="mb-0">Entertainment</p>
                                                </td>
                                                <td style="width: 25%">
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Entertainment")%>
                                                    </h5></td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-primary rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Entertainment")/serviceCatSummery.get("total").floatValue()))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0">Transport</p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Transport")%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-success rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Transport")/serviceCatSummery.get("total").floatValue()))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0">Decorations</p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Decorations")%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-warning rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Decorations")/serviceCatSummery.get("total").floatValue()))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0">Gifts</p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Gifts")%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-warning rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Gifts")/serviceCatSummery.get("total").floatValue()))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0">Others</p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%=serviceCatSummery.get("Others")%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-warning rounded" role="progressbar"
                                                             style="width: <%=((serviceCatSummery.get("Others")/serviceCatSummery.get("total").floatValue()))*100%>%"
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

                        <%--top services list--%>
                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">Top Services</h4>

                                    <div class="text-center">
                                        <div class="mb-4">
                                            <i class="bx bx-map-pin text-primary display-4"></i>
                                        </div>
                                        <h3><%= topServiceslist.get(0).getCount()%>
                                        </h3>
                                        <p><%= topServiceslist.get(0).getName()%></p>
                                    </div>

                                    <div class="table-responsive mt-4">
                                        <table class="table align-middle table-nowrap">
                                            <tbody>
                                            <tr>
                                                <td style="width: 30%">
                                                    <p class="mb-0"><%= topServiceslist.get(0).getName()%></p>
                                                </td>
                                                <td style="width: 25%">
                                                    <h5 class="mb-0"><%= topServiceslist.get(0).getCount()%>
                                                    </h5></td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-primary rounded" role="progressbar"
                                                             style="width: <%=((topServiceslist.get(0).getCount()/(float)servicesCount))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0"><%= topServiceslist.get(1).getName()%></p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%= topServiceslist.get(1).getCount()%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-success rounded" role="progressbar"
                                                             style="width: <%=((topServiceslist.get(1).getCount()/(float)servicesCount))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0"><%= topServiceslist.get(2).getName()%></p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%= topServiceslist.get(2).getCount()%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-warning rounded" role="progressbar"
                                                             style="width: <%=((topServiceslist.get(2).getCount()/(float)servicesCount))*100%>%"
                                                             aria-valuenow="" aria-valuemin="0"
                                                             aria-valuemax="100"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p class="mb-0"><%= topServiceslist.get(3).getName()%></p>
                                                </td>
                                                <td>
                                                    <h5 class="mb-0"><%= topServiceslist.get(3).getCount()%>
                                                    </h5>
                                                </td>
                                                <td>
                                                    <div class="progress bg-transparent progress-sm">
                                                        <div class="progress-bar bg-warning rounded" role="progressbar"
                                                             style="width: <%=((topServiceslist.get(3).getCount()/(float)servicesCount))*100%>%"
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

    <%--Pop-up--%>
        <% if (request.getAttribute("error") != null ){%>
    <script>
        setTimeout(function(){ $('#errormodel').modal('show'); }, 100);
    </script>
        <%}%>
</body>

</html>