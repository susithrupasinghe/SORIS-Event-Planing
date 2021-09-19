<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
    <!-- Document Meta-->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- IE Compatibility Meta-->
    <meta name="author" content="zytheme"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content="Multi-purpose Business html5 landing page"/>
    <link href="assets/landing/assets/images/favicon/favicon.png" rel="icon"/>
    <!--  Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&amp;display=swap" rel="stylesheet" type="text/css"/>
    <!-- Stylesheets-->
    <link href="assets/landing/assets/css/vendor.css" rel="stylesheet"/>
    <link href="assets/landing/assets/css/style.css" rel="stylesheet"/>
    <!--
    Document Title
    =============================================
    -->
    <title>SORIS Event Planning Platform</title>
</head>
<body class="body-scroll">
<!--
Document Wrapper
=============================================
-->
<div class="wrapper clearfix" id="wrapper">
    <!--
    Header
    =============================================
    -->
    <header class="header header-transparent header-sticky">
        <nav class="navbar navbar-sticky navbar-expand-lg" id="primary-menu">
            <div class="container"> <a class="logo navbar-brand" href="index.html"><img class="logo logo-dark" src="assets/landing/assets/images/logo/logo-dark.png" alt="Leland Logo"/><img class="logo logo-light" src="assets/landing/assets/images/logo/logo-light.png" alt="Leland Logo"/></a>
                <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarContent" aria-expanded="false"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" data-scroll="scrollTo" href="#hero">Home</a></li>
                        <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#feature">Features</a></li>
                        <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#testimonials">Testimonials</a></li>
                        <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#cta">Start Now</a></li>
                    </ul>
                    <div class="module-container">
                        <!--module-btn-->
                        <div class="module module-cta"><a class="btn btn--white btn--arrows" href="javascript:void(0)" data-toggle="modal" data-target="#contactUsModal"> <span>contact us <i class="icon-right-arrow"></i></span></a></div>
                    </div>
                    <!-- End Module Container  -->
                </div>
                <!-- End .nav-collapse-->
            </div>
            <!-- End .container-->
        </nav>
        <!-- End .navbar-->
    </header>
    <!-- End Header-->
    <div class="modal fade" id="contactUsModal" tabindex="-1" role="dialog" aria-labelledby="contactUsModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="popup-contact-form">
                        <div class="heading heading-5">
                            <div class="heading-title">Start planning now </div>
                            <div class="heading-desc">Supporting call-to-actiongoes here</div>
                        </div>
                        <div class="contact-body">
                            <form class="contactForm mb-0" method="post" action="assets/landing/assets/php/contact.php">
                                <div class="row">
                                    <div class="col-12">
                                        <input class="form-control" type="text" name="contact-name" placeholder="your name" required="required"/>
                                    </div>
                                    <div class="col-12">
                                        <input class="form-control" type="text" name="contact-email" placeholder="your email" required="required"/>
                                    </div>
                                    <div class="col-12">
                                        <input class="form-control" type="text" name="contact-phone" placeholder="your phone" required="required"/>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn--block btn btn--primary btn--arrows mt-20 mb-20"><span>Start planning now <i class="icon-right-arrow"></i></span></button>
                                    </div>
                                    <div class="col-12">
                                        <p class="notice">Start by trying our service for 30 days free triar no credit card required.</p>
                                    </div>
                                    <div class="col-12">
                                        <div class="contact-result"></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- End .contact-body-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start hero #1-->
    <section class="hero bg-gradient" id="hero">
        <div class="bg-section"><img src="assets/landing/assets/images/background/bg-gradient.svg" alt="background"/></div>
        <div class="container">
            <div class="hero-cotainer text--center">
                <div class="row">
                    <div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2">
                        <div class="hero-content">
                            <div class="hero-headline">we are fully services event planing platform</div>
                            <div class="hero-bio">SORIS Offers you tools and services  to Successfully plan events of any type. you can manage your guest lists , plan your budget and schedule your events easily</div>
                            <div class="hero-action text-center"><a class="btn btn--primary btn--rounded btn--arrows mx-auto" href="javascript:void(0)" data-toggle="modal" data-target="#contactUsModal"><span>Start planning now <i class="icon-right-arrow"></i></span></a></div>
                        </div>
                    </div>
                </div>
                <!-- End .row-->
            </div>
            <!-- End .hero-content-->
        </div>
        <!-- End .container	-->
        <div class="mockup">
            <div class="container">
                <div class="row">
                    <div class="col"><img class="img-fluid" src="assets/landing/assets/images/illustration/illustration-1.png" alt="illustration vector"/></div>
                </div>
            </div>
        </div>
    </section>
    <!-- End #hero   -->
    <!-- Start Clients-->
    <section class="clients" id="clients">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 offset-md-3 col-lg-6 offset-lg-3">
                    <div class="heading text--center">
                        <p class="heading-desc"> Trusted by the world’s most innovative businesses – big and small </p>
                    </div>
                </div>
                <!-- End .col-lg-6 -->
            </div>
            <!-- End .row  -->
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12">
                    <div class="owl-carousel " data-slide="5" data-slide-res="3" data-autoplay="true" data-nav="false" data-dots="false" data-space="30" data-loop="true" data-speed="800">
                        <!--  Client #1   -->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-1.png" alt="client-pic"/></div>
                        <!--  Client #2   -->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-2.png" alt="client-pic"/></div>
                        <!--  Client #3-->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-3.png" alt="client-pic"/></div>
                        <!--  Client #4-->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-4.png" alt="client-pic"/></div>
                        <!--  Client #5-->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-5.png" alt="client-pic"/></div>
                        <!--  Client #6-->
                        <div class="client"><img src="assets/landing/assets/images/clients/client-6.png" alt="client-pic"/></div>
                    </div>
                </div>
                <!-- End .row-->
            </div>
            <div class="divider-2"></div>
        </div>
        <!-- End .container-->
    </section>
    <!-- End #clients-->
    <!-- Start Feature #1-->
    <section class="features text-center" id="feature">
        <div class="container">
            <div class="row clearfix">
                <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                    <div class="heading heading-1 text--center">
                        <h2 class="heading-title">We help you to Plan Your Event</h2>
                        <p class="heading-desc">Proper Planning Is the most important step in any event's success. using SORIS event Planning you can create a unique plan for any one of your events to ensure a engaging and fulfilling event for your guests.</p>
                    </div>
                </div>
                <!-- End .col-lg-6 -->
            </div>
            <!-- End .row  -->
            <div class="row">
                <!-- Panel #1  -->
                <div class="col-12 col-md-12 col-lg-4 ">
                    <div class="feature-panel">
                        <div class="feature-icon"><i class="flaticon-archive-3"></i></div>
                        <div class="feature-content">
                            <h3>Safe storages</h3>
                            <p>Store your guest details, event details and other information safely on the platform </p>
                        </div>
                    </div>
                    <!-- .feature-panel end  -->
                </div>
                <!-- .col-md-12 end  -->
                <!-- Panel #2  -->
                <div class="col-12 col-md-12 col-lg-4 ">
                    <div class="feature-panel active">
                        <div class="feature-icon"><i class="flaticon-albums"></i></div>
                        <div class="feature-content">
                            <h3>Multiple Events</h3>
                            <p>Easily handle multiple events in different stages of planning</p>
                        </div>
                    </div>
                    <!-- .feature-panel end  -->
                </div>
                <!-- .col-md-12 end  -->
                <!-- Panel #3  -->
                <div class="col-12 col-md-12 col-lg-4 ">
                    <div class="feature-panel">
                        <div class="feature-icon"><i class="flaticon-fingerprint"></i></div>
                        <div class="feature-content">
                            <h3>All your plans on a fingertip </h3>
                            <p>Access your plans easily on a multi-platform website supporting different devices</p>
                        </div>
                    </div>
                    <!-- .feature-panel end  -->
                </div>
                <!-- .col-md-12 end  -->
            </div>
            <!-- End .row  -->
        </div>
        <!-- End .container  -->
    </section>
    <section class="services bg-gray" id="services">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="service-card pt-40">
                        <div class="heading heading-2">
                            <h2 class="heading-title">We already worked with<br/>Thousands of event hosts and service providers</h2>
                            <p class="heading-desc">SORIS is working together with wide variety of vendors in order to provide services for a growing number of Event planners</p>
                        </div>
                        <div class="counters-card">
                            <div class="counters"><i class="flaticon-settings-6"></i>
                                <div class="counters-content"><span class="counting">500</span><span class="type">Service Providers</span></div>
                            </div>
                            <div class="counters"><i class="flaticon-user-3"></i>
                                <div class="counters-content"><span class="counting">1500</span><span class="type">Event Host</span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6"><img class="img-fluid service-img" src="assets/landing/assets/images/illustration/illustration-2.png" alt="vector"/></div>
            </div>
        </div>
    </section>
    <div class="bg-gray">
        <div class="container">
            <div class="divider-1"></div>
        </div>
    </div>
    <section class="services bg-gray" id="services2">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6"><img class="img-fluid service-img" src="assets/landing/assets/images/illustration/illustration-3.png" alt="vector"/></div>
                <div class="col-12 col-md-6">
                    <div class="service-card pt-30">
                        <div class="heading heading-2">
                            <h2 class="heading-title">Working Together To Deliver Value <br/>To Your Event</h2>
                            <p class="heading-desc">Our  partners Supply many of the services necessary to host a event.</p>
                        </div>
                        <ul class="list-unstyled service-list pr-60">
                            <li><span class="icon-tick-inside-circle"></span> Each one of our partners are verified by the platform staff.</li>
                            <li><span class="icon-tick-inside-circle"></span> You can find contact details of our partners directly from platform.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Start Testimonials-->
    <section class="testimonials bg-gray" id="testimonials">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12">
                    <div class="owl-carousel carousel-dots carousel-navs " data-slide="1" data-slide-res="1" data-autoplay="false" data-nav="true" data-dots="true" data-space="0" data-loop="true" data-speed="800">
                        <!--  Testimonial #1   -->
                        <div class="testimonial-panel">
                            <div class="testimonial-body">
                                <div class="testimonial-icon"><span class="icon-left-quotes-sign"></span></div>
                                <p>" This should be used to tell a story and include any testimonials you might have about your product or service for your clients "</p>
                                <div class="testimonial-author">
                                    <div class="testimonial-img"><img src="assets/landing/assets/images/testimonials/avatar-1.png" alt="avatar author"/></div>
                                    <p>Vera Duncan @Envato Inc.</p>
                                </div>
                            </div>
                        </div>
                        <!--  Testimonial #2 -->
                        <div class="testimonial-panel">
                            <div class="testimonial-body">
                                <div class="testimonial-icon"><span class="icon-left-quotes-sign"></span></div>
                                <p>" This should be used to tell a story and include any testimonials you might have about your product or service for your clients "</p>
                                <div class="testimonial-author">
                                    <div class="testimonial-img"><img src="assets/landing/assets/images/testimonials/avatar-2.png" alt="author"/></div>
                                    <p>Vera Duncan @Envato Inc.</p>
                                </div>
                            </div>
                        </div>
                        <!--  Testimonial #3 -->
                        <div class="testimonial-panel">
                            <div class="testimonial-body">
                                <div class="testimonial-icon"><span class="icon-left-quotes-sign"></span></div>
                                <p>" This should be used to tell a story and include any testimonials you might have about your product or service for your clients "</p>
                                <div class="testimonial-author">
                                    <div class="testimonial-img"><img src="assets/landing/assets/images/testimonials/avatar-3.png" alt="author"/></div>
                                    <p>Vera Duncan @Envato Inc.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End .container  -->
    </section>
    <!-- End #testimonials -->
    <!--
    CTA #1
    =============================================
    -->
    <section class="cta text-center" id="cta">
        <div class="bg-section"><img src="assets/landing/assets/images/background/bg-gradient-2.svg" alt="background"/></div>
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2 text-center">
                    <h3>Whatever the event, we always deliver a plan.</h3>
                    <p>Join us and create  plans for your memorable events.</p><a class="btn btn--primary btn--arrows mx-auto" href="javascript:void(0)" data-toggle="modal" data-target="#contactUsModal"> <span>get started now <i class="icon-right-arrow"></i></span></a>
                </div>
                <!-- End .col-md-12-->
            </div>
            <!-- End .row-->
        </div>
        <!-- End .container-->
    </section>
    <!-- End #cta-->
    <!--
    Footer #5
    =============================================
    -->
    <footer class="footer footer-5" id="footer">
        <!--
        Copyrights
        =============================================
        -->
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12 text--center">
                    <div class="footer--copyright"><span>2020 &copy; SORIS</a>. All rights reserved.</span></div>
                </div>
            </div>
        </div>
        <!-- End .container  -->
    </footer>
</div>
<!-- End #wrapper   -->
<!--
Footer Scripts
=============================================
-->
<script src="assets/landing/assets/js/vendor/jquery-3.4.1.min.js"></script>
<script src="assets/landing/assets/js/vendor.js"></script>
<script src="assets/landing/assets/js/functions.js"></script>
</body>
</html>