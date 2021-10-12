<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/19/2021
  Time: 7:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Service Provider SignUp | SORIS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/dashboard/assets/images/favicon.ico">

    <!-- owl.carousel css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/dashboard/assets/libs/owl.carousel/assets/owl.carousel.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/dashboard/assets/libs/owl.carousel/assets/owl.theme.default.min.css">

    <!-- Bootstrap Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body class="auth-body-bg">
<%--                        Model--%>
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

<%--                        Model--%>
<div class="modal fade" id="success" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel2">Success</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p><%=request.getAttribute("success")%></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success waves-effect waves-light" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="container-fluid p-0">
        <div class="row g-0">

            <div class="col-xl-9">
                <div class="auth-full-bg pt-lg-5 p-4">
                    <div class="w-100">
                        <div class="bg-overlay"></div>
                        <div class="d-flex h-100 flex-column">

                            <div class="p-4 mt-auto">
                                <div class="row justify-content-center">
                                    <div class="col-lg-7">
                                        <div class="text-center">

                                            <h4 class="mb-3"><i class="bx bxs-quote-alt-left text-primary h1 align-middle me-3"></i><span class="text-primary">5k</span>+ Satisfied clients</h4>

                                            <div dir="ltr">
                                                <div class="owl-carousel owl-theme auth-review-carousel" id="auth-review-carousel">
                                                    <div class="item">
                                                        <div class="py-3">
                                                            <p class="font-size-16 mb-4">" Fantastic theme with a ton of options. If you just want the HTML to integrate with your project, then this is the package. You can find the files in the 'dist' folder...no need to install git and all the other stuff the documentation talks about. "</p>

                                                            <div>
                                                                <h4 class="font-size-16 text-primary">Abs1981</h4>
                                                                <p class="font-size-14 mb-0">- Skote User</p>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="item">
                                                        <div class="py-3">
                                                            <p class="font-size-16 mb-4">" If Every Vendor on Envato are as supportive as Themesbrand, Development with be a nice experience. You guys are Wonderful. Keep us the good work. "</p>

                                                            <div>
                                                                <h4 class="font-size-16 text-primary">nezerious</h4>
                                                                <p class="font-size-14 mb-0">- Skote User</p>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end col -->

            <div class="col-xl-3">
                <div class="auth-full-page-content p-md-5 p-4">
                    <div class="w-100">

                        <div class="d-flex flex-column h-100">
                            <div class="mb-4 mb-md-5">
                                <a href="" class="d-block auth-logo">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-dark.png" alt="" height="18" class="auth-logo-dark">
                                    <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo-light.png" alt="" height="18" class="auth-logo-light">
                                </a>
                            </div>
                            <div class="my-auto">

                                <div>
                                    <h5 class="text-primary">SignUp Now</h5>
                                    <p class="text-muted">Get your free SORIS account now.</p>
                                </div>

                                <div class="mt-4">
                                    <form class="needs-validation custom-validation" novalidate  method="post" action="<%=request.getContextPath()%>/spSignUp">

                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Email</label>
                                            <input type="email" class="form-control" id="useremail" parsley-type="email" name="email" placeholder="Enter email" required>
                                            <div class="invalid-feedback">
                                                Please Enter Email
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="Userbrand" class="form-label">Brand Name</label>
                                            <input type="text" class="form-control" id="Userbrand" name="brand" placeholder="Enter Brand Name" required>
                                            <div class="invalid-feedback">
                                                Please Enter Brand Name
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="Usercontact" class="form-label">Contact Number</label>
                                            <input type="text" class="form-control" id="Usercontact" name="contact" placeholder="Enter Contact Number" required>
                                            <div class="invalid-feedback">
                                                Please Enter Contact Number
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="Useraddress" class="form-label">Address</label>
                                            <input type="text" class="form-control" id="Useraddress" name="address" placeholder="Enter Address" required>
                                            <div class="invalid-feedback">
                                                Please Enter Address
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="userpassword" class="form-label">Password</label>
                                            <input type="password" class="form-control" id="userpassword" name="pass" placeholder="Enter password" required>
                                            <div class="invalid-feedback">
                                                Please Enter Password
                                            </div>
                                        </div>

                                        <div>
                                            <p class="mb-0">By registering you agree to the SORIS <a href="#" class="text-primary">Terms of Use</a></p>
                                        </div>

                                        <div class="mt-4 d-grid">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit">SignUp</button>
                                        </div>

                                        <div class="mt-4 text-center">


                                        </div>

                                    </form>

                                    <div class="mt-5 text-center">
                                        <p>Already have an account ? <a href="<%=request.getContextPath()%>/auth/service-provider-signin.jsp" class="fw-medium text-primary"> SignIn</a> </p>
                                    </div>

                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container-fluid -->
</div>

<!-- JAVASCRIPT -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/metismenu/metisMenu.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/simplebar/simplebar.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/node-waves/waves.min.js"></script>

<!-- owl.carousel js -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/owl.carousel/owl.carousel.min.js"></script>

<!-- validation init -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/validation.init.js"></script>

<!-- auth-2-carousel init -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/auth-2-carousel.init.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/form-validation.init.js"></script>

<!-- App js -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/app.js"></script>
<% if (request.getAttribute("error") != null ){%>
<script>
    setTimeout(function(){ $('#errormodel').modal('show'); }, 100);

</script>
<%} if (request.getAttribute("success") != null) {%>
<script>
    setTimeout(function(){ $('#success').modal('show'); }, 100);

</script>
<% } %>
</body>
</html>
