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
    <title>Host User SignUp | SORIS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/dashboard/assets/images/favicon.ico">
    <!-- Bootstrap Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<%=request.getContextPath()%>/assets/dashboard/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body>
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

<div class="account-pages my-5 pt-sm-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-5">
                <div class="card overflow-hidden">
                    <div class="bg-primary bg-soft">
                        <div class="row">
                            <div class="col-7">
                                <div class="text-primary p-4">
                                    <h5 class="text-primary">Free Host User SignUp</h5>
                                    <p>Get your free SORIS account now.</p>
                                </div>
                            </div>
                            <div class="col-5 align-self-end">
                                <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/profile-img.png" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div class="card-body pt-0">
                        <div>
                            <a href="">
                                <div class="avatar-md profile-user-wid mb-4">
                                            <span class="avatar-title rounded-circle bg-light">
                                                <img src="<%=request.getContextPath()%>/assets/dashboard/assets/images/logo.svg" alt="" class="rounded-circle" height="34">
                                            </span>
                                </div>
                            </a>
                        </div>
                        <div class="p-2">
                            <form class="needs-validation custom-validation" novalidate method="post" action="<%=request.getContextPath()%>/hostSignUp">

                                <div class="mb-3">
                                    <label for="userfname" class="form-label">First Name</label>
                                    <input type="text" class="form-control" id="userfname" name="fname" placeholder="Enter First Name" required>
                                    <div class="invalid-feedback">
                                        Please Enter First Name
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="userlname" class="form-label">Last Name</label>
                                    <input type="text" class="form-control" id="userlname" name="lname" placeholder="Enter Last Name" required>
                                    <div class="invalid-feedback">
                                        Please Enter Last Name
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="useremail" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="useremail" name="email" placeholder="Enter Email" required>
                                    <div class="invalid-feedback">
                                        Please Enter Email
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="userpassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="userpassword" name="pass" placeholder="Enter password" required>
                                    <div class="invalid-feedback">
                                        Please Enter Password
                                    </div>
                                </div>

                                <div class="mt-4 d-grid">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit">SignUp</button>
                                </div>

                                <div class="mt-4 text-center">
                                    <p class="mb-0">By registering you agree to the SORIS <a href="#" class="text-primary">Terms of Use</a></p>
                                </div>

                                <div class="mt-4 text-center">
                                    <p>Already have an account ? <a href="<%=request.getContextPath()%>/auth/host-user-signin.jsp" class="fw-medium text-primary"> Login</a> </p>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
                <div class="mt-5 text-center">

                    <div>

                        <p>© <script>document.write(new Date().getFullYear())</script> SORIS. </p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<!-- validation init -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/js/pages/validation.init.js"></script>
<!-- JAVASCRIPT -->
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/metismenu/metisMenu.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/simplebar/simplebar.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/dashboard/assets/libs/node-waves/waves.min.js"></script>
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
