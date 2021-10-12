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
    String sID = (String) request.getAttribute("sID");
    String name = (String) request.getAttribute("name");
    String category = (String) request.getAttribute("category");
    String price = (String) request.getAttribute("price");
    String discount = (String) request.getAttribute("discount");
    /*String status = (String) request.getAttribute("discount");*/
    String description = (String) request.getAttribute("description");
    String images = (String) request.getAttribute("images");
%>

<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <link href="<%=request.getContextPath()%>/assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <title>SORIS Event Planning Platform</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />

    <!-- select2 css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body data-sidebar="dark">


<!-- Begin page -->
<div id="layout-wrapper">
    <header id="page-topbar">
        <div class="navbar-header">
            <div class="d-flex">
                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo.svg"
                                         alt="" height="22">
                                </span>
                        <span class="logo-lg">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-dark.png"
                                         alt="" height="17">
                                </span>
                    </a>

                    <a class="logo logo-light">
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

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                            <h4 class="mb-sm-0 font-size-18">Update Service</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Service Provider</a></li>
                                    <li class="breadcrumb-item active">Update Service</li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <!--modal-->
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

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="card-title">Basic Information</h4>
                                <p class="card-title-desc">Update the service from the selected category</p>

                                <form action="<%=request.getContextPath()%>/spUpdateService" method="post" class="custom-validation" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-3">
                                                <label for="name">Service Name</label>
                                                <input id="name" name="name" type="text" data-parsley-maxlength="50" class="form-control" placeholder="Service Name" value="<%= name%>" required>
                                            </div>

                                            <div class="mb-3">
                                                <label for="price">Price</label>
                                                <input id="price" name="price" type="text" class="form-control" data-parsley-type="number" data-parsley-min="0" placeholder="Price" value="<%= price%>" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="Discount">Discount</label>
                                                <input id="Discount" name="Discount" type="text" class="form-control" data-parsley-type="number" data-parsley-min="0" placeholder="Discount" value="<%= discount%>" required>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="mb-3">
                                                <div class="mb-3">
                                                    <label for="category">Service category</label>
                                                    <input id="category" name="category" type="text" class="form-control" placeholder="Category" value="<%= category%>" readonly>
                                                </div>
                                            </div>

                                            <div class="mb-3">
                                                <label for="servicedesc">Service Description</label>
                                                <textarea class="form-control" id="servicedesc" name="servicedesc" rows="5" data-parsley-maxlength="255" placeholder="Service Description" required><%= description%></textarea>
                                            </div>

                                        </div>
                                    </div>


                                    <%--Upload Image--%>
                                    <div class="card-body">
                                        <h4 class="card-title mb-3">Service Images</h4>

                                        <div class="fallback">
                                            <input  type="file" name="image" multiple required/>
                                        </div>

                                        <div class="dz-message needsclick">
                                            <div class="mb-3">
                                                <i class="display-4 text-muted bx bxs-cloud-upload"></i>
                                            </div>

                                            <h4>Drop files here or click to upload.</h4>
                                        </div>
                                    </div>

                                    <input type="hidden" id="sID" name="sID" value="<%= sID%>">

                                    <div class="d-flex flex-wrap gap-2">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light">Update Your Service</button>
                                        <button type="button" class="btn btn-secondary waves-effect waves-light" ><a href="<%=request.getContextPath()%>/servicesListDetails">Cancel</a></button>
                                    </div>
                            </div>
                            </form>

                        </div>

                        <%--</div>--%>
                    </div>
                </div>
                <!-- end row -->

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

<%--validation--%>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/form-validation.init.js"></script>

<%--Pop-up--%>
<% if (request.getAttribute("error") != null ){%>
<script>
    setTimeout(function(){ $('#errormodel').modal('show'); }, 100);
</script>
<%}%>

</body>
</html>
