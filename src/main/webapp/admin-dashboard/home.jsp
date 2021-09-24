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
    int serviceProvidersCount = (int)request.getAttribute("spCount");
    int hostUserCount = (int)request.getAttribute("hostCount");
    int servicesCount = (int)request.getAttribute("serviceCount");
    int eventCount = (int)request.getAttribute("eventCount");
    HashMap<String,Integer> serviceSummery = (HashMap<String,Integer>)request.getAttribute("serviceSummery");
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
                    <li>
                        <a href="javascript: void(0);" class="waves-effect">
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
                                        <h4 class="mb-0"><%=serviceProvidersCount%></h4>
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
                                        <h4 class="mb-0"><%=hostUserCount%></h4>
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
                                        <h4 class="mb-0"><%=servicesCount%></h4>
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
                                        <h4 class="mb-0"><%=eventCount%></h4>
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
                </div>

                <div class="row">
                    <div class="col-xl-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">Summery of Services</h4>

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
                                                <h5 class="mb-0"><%=serviceSummery.get("pending")%></h5></td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-primary rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("pending")/serviceSummery.get("total").floatValue()))*100%>%" aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Approved</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("approved")%></h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-success rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("approved")/serviceSummery.get("total").floatValue()))*100%>%" aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Rejected</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("rejected")%></h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("rejected")/serviceSummery.get("total").floatValue()))*100%>%" aria-valuenow="" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p class="mb-0">Suspended</p>
                                            </td>
                                            <td>
                                                <h5 class="mb-0"><%=serviceSummery.get("suspended")%></h5>
                                            </td>
                                            <td>
                                                <div class="progress bg-transparent progress-sm">
                                                    <div class="progress-bar bg-warning rounded" role="progressbar"
                                                         style="width: <%=((serviceSummery.get("suspended")/serviceSummery.get("total").floatValue()))*100%>%" aria-valuenow="" aria-valuemin="0"
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
                                <div class="clearfix">

                                    <h4 class="card-title mb-4">Top Service Providers</h4>
                                </div>

                                <div class="text-muted text-center">
                                    <p class="mb-2"><%=topServiceProviderlist.get(0).getBrandName()%></p>
                                    <h4><%=topServiceProviderlist.get(0).getCount()%></h4>

                                </div>

                                <div class="table-responsive mt-4">
                                    <table class="table align-middle mb-0">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1"><%=topServiceProviderlist.get(0).getBrandName()%></h5>
                                                <p class="text-muted mb-0"><%=topServiceProviderlist.get(0).getCount()%></p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-1" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexchartsfxravzp9"
                                                         class="apexcharts-canvas apexchartsfxravzp9 apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1166" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1168"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1167">
                                                                    <clipPath id="gridRectMaskfxravzp9">
                                                                        <rect id="SvgjsRect1170" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMaskfxravzp9">
                                                                        <rect id="SvgjsRect1171" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1172" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1173">
                                                                        <g id="SvgjsG1174" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1175"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1177">
                                                                            <g id="SvgjsG1179"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1180"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 0 1 44.98383193561228 43.972649328109725"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(232,80,91,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="133" data:value="37"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 0 1 44.98383193561228 43.972649328109725"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1178"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1181" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1182" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1169" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">37 %</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1"><%=topServiceProviderlist.get(1).getBrandName()%></h5>
                                                <p class="text-muted mb-0"><%=topServiceProviderlist.get(1).getCount()%></p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-2" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexcharts0jcvgwja"
                                                         class="apexcharts-canvas apexcharts0jcvgwja apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1183" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1185"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1184">
                                                                    <clipPath id="gridRectMask0jcvgwja">
                                                                        <rect id="SvgjsRect1187" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMask0jcvgwja">
                                                                        <rect id="SvgjsRect1188" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1189" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1190">
                                                                        <g id="SvgjsG1191" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1192"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1194">
                                                                            <g id="SvgjsG1196"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1197"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 9.888613802535662 33.90925746625116"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(52,195,143,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="259" data:value="72"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 9.888613802535662 33.90925746625116"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1195"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1198" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1199" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1186" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">72 %</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1"><%=topServiceProviderlist.get(2).getBrandName()%></h5>
                                                <p class="text-muted mb-0"><%=topServiceProviderlist.get(2).getCount()%></p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-3" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexchartsdz4xsfuw"
                                                         class="apexcharts-canvas apexchartsdz4xsfuw apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1200" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1202"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1201">
                                                                    <clipPath id="gridRectMaskdz4xsfuw">
                                                                        <rect id="SvgjsRect1204" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMaskdz4xsfuw">
                                                                        <rect id="SvgjsRect1205" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1206" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1207">
                                                                        <g id="SvgjsG1208" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1209"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1211">
                                                                            <g id="SvgjsG1213"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1214"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 25.043551407226317 49.87922951394725"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(244,106,106,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="194" data:value="54"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 25.043551407226317 49.87922951394725"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1212"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1215" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1216" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1203" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">54 %</h5>
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
                                <div class="clearfix">

                                    <h4 class="card-title mb-4">Top Selling product</h4>
                                </div>

                                <div class="text-muted text-center">
                                    <p class="mb-2">Product A</p>
                                    <h4>$ 6385</h4>

                                </div>

                                <div class="table-responsive mt-4">
                                    <table class="table align-middle mb-0">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1">Product A</h5>
                                                <p class="text-muted mb-0">Neque quis est</p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-1" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexchartsfxravzp9"
                                                         class="apexcharts-canvas apexchartsfxravzp9 apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1166" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1168"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1167">
                                                                    <clipPath id="gridRectMaskfxravzp9">
                                                                        <rect id="SvgjsRect1170" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMaskfxravzp9">
                                                                        <rect id="SvgjsRect1171" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1172" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1173">
                                                                        <g id="SvgjsG1174" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1175"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1177">
                                                                            <g id="SvgjsG1179"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1180"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 0 1 44.98383193561228 43.972649328109725"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(232,80,91,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="133" data:value="37"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 0 1 44.98383193561228 43.972649328109725"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1178"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1181" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1182" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1169" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">37 %</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1">Product B</h5>
                                                <p class="text-muted mb-0">Quis autem iure</p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-2" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexcharts0jcvgwja"
                                                         class="apexcharts-canvas apexcharts0jcvgwja apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1183" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1185"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1184">
                                                                    <clipPath id="gridRectMask0jcvgwja">
                                                                        <rect id="SvgjsRect1187" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMask0jcvgwja">
                                                                        <rect id="SvgjsRect1188" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1189" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1190">
                                                                        <g id="SvgjsG1191" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1192"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1194">
                                                                            <g id="SvgjsG1196"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1197"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 9.888613802535662 33.90925746625116"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(52,195,143,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="259" data:value="72"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 9.888613802535662 33.90925746625116"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1195"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1198" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1199" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1186" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">72 %</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h5 class="font-size-14 mb-1">Product C</h5>
                                                <p class="text-muted mb-0">Sed aliquam mauris.</p>
                                            </td>

                                            <td style="position: relative;">
                                                <div id="radialchart-3" class="apex-charts" style="min-height: 61px;">
                                                    <div id="apexchartsdz4xsfuw"
                                                         class="apexcharts-canvas apexchartsdz4xsfuw apexcharts-theme-light"
                                                         style="width: 60px; height: 61px;">
                                                        <svg id="SvgjsSvg1200" width="60" height="61"
                                                             xmlns="http://www.w3.org/2000/svg" version="1.1"
                                                             xmlns:xlink="http://www.w3.org/1999/xlink"
                                                             xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                                             xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                                             style="background: transparent;">
                                                            <g id="SvgjsG1202"
                                                               class="apexcharts-inner apexcharts-graphical"
                                                               transform="translate(0, 0)">
                                                                <defs id="SvgjsDefs1201">
                                                                    <clipPath id="gridRectMaskdz4xsfuw">
                                                                        <rect id="SvgjsRect1204" width="66" height="62"
                                                                              x="-3" y="-1" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                    <clipPath id="gridRectMarkerMaskdz4xsfuw">
                                                                        <rect id="SvgjsRect1205" width="64" height="64"
                                                                              x="-2" y="-2" rx="0" ry="0" opacity="1"
                                                                              stroke-width="0" stroke="none"
                                                                              stroke-dasharray="0" fill="#fff"></rect>
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="SvgjsG1206" class="apexcharts-radialbar">
                                                                    <g id="SvgjsG1207">
                                                                        <g id="SvgjsG1208" class="apexcharts-tracks">
                                                                            <g id="SvgjsG1209"
                                                                               class="apexcharts-radialbar-track apexcharts-track"
                                                                               rel="1">
                                                                                <path id="apexcharts-radialbarTrack-0"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"
                                                                                      fill="none" fill-opacity="1"
                                                                                      stroke="rgba(242,242,242,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.678048780487805"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 29.99642420350187 9.512195433998325"></path>
                                                                            </g>
                                                                        </g>
                                                                        <g id="SvgjsG1211">
                                                                            <g id="SvgjsG1213"
                                                                               class="apexcharts-series apexcharts-radial-series"
                                                                               seriesName="seriesx1" rel="1"
                                                                               data:realIndex="0">
                                                                                <path id="SvgjsPath1214"
                                                                                      d="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 25.043551407226317 49.87922951394725"
                                                                                      fill="none" fill-opacity="0.85"
                                                                                      stroke="rgba(244,106,106,0.85)"
                                                                                      stroke-opacity="1"
                                                                                      stroke-linecap="butt"
                                                                                      stroke-width="5.853658536585366"
                                                                                      stroke-dasharray="0"
                                                                                      class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
                                                                                      data:angle="194" data:value="54"
                                                                                      index="0" j="0"
                                                                                      data:pathOrig="M 30 9.512195121951216 A 20.487804878048784 20.487804878048784 0 1 1 25.043551407226317 49.87922951394725"></path>
                                                                            </g>
                                                                            <circle id="SvgjsCircle1212"
                                                                                    r="17.64878048780488" cx="30"
                                                                                    cy="30"
                                                                                    class="apexcharts-radialbar-hollow"
                                                                                    fill="transparent"></circle>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                                <line id="SvgjsLine1215" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke="#b6b6b6" stroke-dasharray="0"
                                                                      stroke-width="1"
                                                                      class="apexcharts-ycrosshairs"></line>
                                                                <line id="SvgjsLine1216" x1="0" y1="0" x2="60" y2="0"
                                                                      stroke-dasharray="0" stroke-width="0"
                                                                      class="apexcharts-ycrosshairs-hidden"></line>
                                                            </g>
                                                            <g id="SvgjsG1203" class="apexcharts-annotations"></g>
                                                        </svg>
                                                        <div class="apexcharts-legend"></div>
                                                    </div>
                                                </div>
                                                <div class="resize-triggers">
                                                    <div class="expand-trigger">
                                                        <div style="width: 91px; height: 86px;"></div>
                                                    </div>
                                                    <div class="contract-trigger"></div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-muted mb-1">Sales</p>
                                                <h5 class="mb-0">54 %</h5>
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