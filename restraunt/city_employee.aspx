<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="city_employee.aspx.cs" Inherits="restraunt.city_employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>City Employee</title>

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css"/>

    <!-- Slider
        ================================================== -->
    <link href="css/owl.carousel.css" rel="stylesheet" media="screen"/>
    <link href="css/owl.theme.css" rel="stylesheet" media="screen"/>

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.min.css"/>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'/>
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
</head>
<body style="background:url('img/header-bg.jpg') fixed;">
    <form id="form1" runat="server">
        <div>

            <div id="preloader">
                <div id="status">
                    <img src="img/preloader.gif" height="64" width="64" alt="" />
                </div>
            </div>

            <!-- Navigation ==========================================-->
            <nav id="menu" class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                        <a class="navbar-brand" href="#" style="margin-top: 10px;"><i class="fa fa-flag-checkered fa-flip-horizontal"></i>FCI Project <strong></strong></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right" style="margin-top: 10px;">
                            <li><a href="homeuser.aspx#home" class="page-scroll">Home</a></li>
                            <li><a href="homeuser.aspx#works-section" class="page-scroll">Days</a></li>
                            <li><a href="homeuser.aspx#team-section" class="page-scroll">Important Character</a></li>
                            <li><a href="homeuser.aspx#contact-section" class="page-scroll">Reports</a></li>

                            <!--  added To Put Login -->
                            <li class="dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="img/7.png" class="img-circle" style="height: 40px; margin-top: -10px;" /><span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">

                                    <li><a href="homeuser.aspx#home" >Home</a></li>
                                    <li><a href="homeuser.aspx#works-section" >Days</a></li>
                                    <li><a href="homeuser.aspx#team-section" >Important Character</a></li>
                                    <li><a href="homeuser.aspx#contact-section" >Reports</a></li>
                                    <li role="separator" class="divider"></li>

                                    <li><a runat="server" onserverclick="logout_Click">logout</a></li>

                                </ul>
                            </li>
                            <!---------------------->

                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

            <!-- Container -->

            <!-- Services Section -->
            <div id="services-section-city-employee" class="text-center">
                <div class="container">
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width:23%;background-color:#f7dc6f;height:4px;border-radius:15px;"/>
                        <h2>City <strong>Employee</strong></h2>
                        <!-- hr -->
                        <hr style="width:23%;background-color:#f7dc6f;height:4px;border-radius:15px;"/>
                        <div class="clearfix"></div>
                        <span style="font-size:22px;color:#ffc801;font-family:initial;"> It’s Your Permission For The System</span>
                    </div>

                    <div class="space"></div>
                    
                    <div class="row">
                        <!--<div class="col-md-3 col-sm-6 service wow fadeInUp" data-wow-delay="200ms">
                            <i class="fa fa-desktop"></i>
                            <h4><strong>Show All Money <br /> For All Books</strong></h4>
                            <p style="color:#d4ec73">Lorem ipsum dolor sit amet placerat facilisis felis mi in tempus eleifend pellentesque natoque etiam.</p>
                        </div>-->
                        <div class="col-md-4 col-sm-6 service wow fadeInUp" data-wow-delay="400ms">
                            <a runat="server" onserverclick="student_info_Click"><i class="fa fa-gears"></i></a>
                            <h4><strong>Student Info <br />  <br /> </strong></h4>
                            <p style="color:#d4ec73">Lorem ipsum dolor sit amet placerat facilisis felis mi in tempus eleifend pellentesque.</p>
                        </div>
                        <div class="col-md-4 col-sm-6 service wow fadeInUp" data-wow-delay="600ms">
                            <a runat="server" onserverclick="check_for_reseve_Click"><i class="fa fa-bullhorn"></i></a>
                            <h4><strong>Check For Reseve <br />  <br /> </strong></h4>
                            <p style="color:#d4ec73">Lorem ipsum dolor sit amet placerat facilisis felis mi in tempus eleifend pellentesque natoque etiam.</p>
                        </div>
                        <div class="col-md-4 col-sm-6 service wow fadeInUp" data-wow-delay="800ms">
                            <a runat="server" onserverclick="reseve_Click"><i class="fa fa-rocket"></i></a>
                            
                            <h4><strong>Reseve <br />  <br /> </strong></h4>
                            <p style="color:#d4ec73">Lorem ipsum dolor sit amet placerat facilisis felis mi in tempus eleifend pellentesque natoque.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.js"></script>
    <script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
    <script type="text/javascript" src="js/contact_me.js"></script>
    <script type="text/javascript" src="js/owl.carousel.js"></script>

    <!-- Javascripts
        ================================================== -->
    <script type="text/javascript" src="js/main.js"></script>

</body>
</html>
