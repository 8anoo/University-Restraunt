﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="restraunt.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>Home</title>

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css" />

    <!-- Slider
        ================================================== -->
    <link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />

    <!-- Stylesheet
        ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.min.css" />
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
    <style>
        @media only screen and (max-width: 396px) {

            .intro-text H1 {
                font-size: 40px;
            }
        }
    </style>

</head>
<body>
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
                        <a class="navbar-brand" href="home.aspx" style="margin-top: 10px;"><i class="fa fa-flag-checkered fa-flip-horizontal"></i>FCI Project <strong></strong></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right" style="margin-top: 10px;">
                            <li><a href="#home" class="page-scroll">Home</a></li>
                            <li><a href="#works-section" class="page-scroll">Days</a></li>
                            <li><a href="#team-section" class="page-scroll">Important Character</a></li>
                            <li><a href="#contact-section" class="page-scroll">Reports</a></li>

                            <!--  added To Put Login -->
                            <li class="dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="img/7.png" class="img-circle" style="height: 40px; margin-top: -10px;" /><span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">

                                    <!--<li><a href="#home" >Home</a></li>-->
                                    <li><a href="#works-section" >Days</a></li>
                                    <li><a href="#team-section" >Important Character</a></li>
                                    <li><a href="#contact-section" >Reports</a></li>
                                    <li role="separator" class="divider"></li>

                                    <!--   -->
                                     <%--runat="server" onserverclick="Button1_Click" --%>
                                    <li><a target="_blank" href="login.aspx">Login</a></li>
                                </ul>
                            </li>
                            <!---------------------->

                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>

            <!-- Header -->
            <!--   -->
            <header class="text-center" name="home">
                <div class="intro-text">
                    <h1 class="wow fadeInDown">CENTRAL <strong><span class="color">RESTRAUNT</span></strong></h1>
                    <p class="wow fadeInDown">WELCOME TO OUR WEBSITE</p>
                    <a href="#works-section" class="btn btn-default btn-lg page-scroll wow fadeInUp" data-wow-delay="200ms">Dys Of Week</a>
                </div>
            </header>


            <!-- Days Section -->
            <div id="works-section" class="text-center">
                <div class="container">
                    <!-- Container -->
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <h2>Days Of <strong>Week</strong></h2>
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <div class="clearfix"></div>
                        <p>This Chapter Talks About The Food In Each Day Of The Week...</p>
                    </div>

                    <div class="categories">
                        <ul class="cat">
                            <li>
                                <ol class="type">
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter="*" class="active">All</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d1">Saterday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d2">Sunday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d3">Monday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d4">Tusday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d5">Wednesday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d6">Thursday</a></li>
                                    <li style="margin-bottom: 20px;"><a href="#" data-filter=".d7">Friday</a></li>
                                </ol>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>

                    <div class="row">

                        <div class="portfolio-items">
                            <div class="col-sm-6 col-md-3 col-lg-3 d1">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="200ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Saterday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/01.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d2">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="400ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Sunday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/02.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d3">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="600ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Monday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/03.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d4">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="800ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Tusday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/04.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d5">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="1000ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Wednesday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/05.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d6">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="1200ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Thursday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/06.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3 col-lg-3 d7">
                                <div class="portfolio-item wow fadeInUp" data-wow-delay="1400ms">
                                    <div class="hover-bg">
                                        <a href="#portfolioModal7" class="portfolio-link" data-toggle="modal">
                                            <div class="hover-text">
                                                <h4>Friday</h4>
                                                Show
                                        <div class="clearfix"></div>
                                                <i class="fa fa-plus"></i>
                                            </div>
                                            <img src="img/portfolio/07.jpg" class="img-responsive" alt="Project Title" />
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- Important_Character Section -->
            <div id="team-section" class="text-center">
                <div class="container">
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width: 30%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <h2>Important <strong>Character</strong></h2>
                        <!-- hr -->
                        <hr style="width: 30%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <div class="clearfix"></div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diamcommodo nibh ante facilisis.</p>
                    </div>
                    <div id="row">
                        <div class="col-md-3 col-sm-6 team wow fadeInUp" data-wow-delay="200ms">
                            <div class="thumbnail">
                                <img src="img/team/01.jpg" alt="..." class="img-circle team-img" />
                                <div class="caption">
                                    <h3>Jessica Wally</h3>
                                    <p>CEO / Founder</p>
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 team wow fadeInUp" data-wow-delay="400ms">
                            <div class="thumbnail">
                                <img src="img/team/02.jpg" alt="..." class="img-circle team-img" />
                                <div class="caption">
                                    <h3>Mike Sloan</h3>
                                    <p>Web Designer</p>
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 team wow fadeInUp" data-wow-delay="600ms">
                            <div class="thumbnail">
                                <img src="img/team/03.jpg" alt="..." class="img-circle team-img" />
                                <div class="caption">
                                    <h3>Michele Doe</h3>
                                    <p>Web Designer</p>
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 team wow fadeInUp" data-wow-delay="800ms">
                            <div class="thumbnail">
                                <img src="img/team/04.jpg" alt="..." class="img-circle team-img" />
                                <div class="caption">
                                    <h3>Larry Evans</h3>
                                    <p>Project Manager</p>
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Reports Section -->
            <div id="contact-section" class="text-center">
                <div class="container">
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width: 18%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <h2><strong>Roport </strong>Us</h2>
                        <!-- hr -->
                        <hr style="width: 18%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <p>Send Here The Problem You See In The Restraunt , It Will Sent To The President Of Restraunt...</p>
                    </div>
                    <div class="col-md-8 col-md-offset-2 wow fadeInUp" data-wow-delay="200ms">
                        <div class="col-md-4">
                            <i class="fa fa-map-marker fa-2x"></i>
                            <p>
                                University<br />
                                El Minya
                            </p>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-envelope-o fa-2x"></i>
                            <p>mahmoud.ghanam96@gmail.com</p>
                        </div>
                        <div class="col-md-4">
                            <i class="fa fa-phone fa-2x"></i>
                            <p>+20 109 402 5755</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-8 col-md-offset-2 wow fadeInUp" data-wow-delay="400ms">
                        <h3>Leave us a message</h3>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" id="name" class="form-control" placeholder="Name" required="required" style="border-radius: 10px;" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" id="email" class="form-control" placeholder="Email" required="required" style="border-radius: 10px;" />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" required="required" style="border-radius: 10px;"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div id="success"></div>
                            <button type="submit" class="btn btn-default">Send Message</button>

                        </form>
                        <div class="social">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-github"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div id="footer">
                <div class="container">
                    <p>Copyright © Template. Design by <a href="http://www.templategarden.com" rel="nofollow">Mahmoud Abo Ghanam</a></p>
                </div>
            </div>

            <!-- Portfolio Modals -->
            <!-- Use the modals below to showcase details about your portfolio projects! -->
            <!-- Portfolio Modal 1 -->
            <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/01-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 2 -->
            <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/02-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 3 -->
            <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/03-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 4 -->
            <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/04-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 5 -->
            <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/05-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 6 -->
            <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/06-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 7 -->
            <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/07-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Modal 8 -->
            <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>Project Title</h2>
                                    <p class="item-intro">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="img/portfolio/08-preview.jpg" alt="">
                                    <p>Lorem ipsum dolor sit amet, sea essent iisque iudicabit te, pro no justo delicata inimicus, et oblique docendi laboramus eum. Ei minim fabulas pertinacia pro, graeco urbanitas reformidans quo id. Error congue tacimates ei vis, facer facete ius cu, audiam prodesset pri ut. Id semper fuisset vel, has dolorum menandri eu.</p>
                                    <ul class="list-inline">
                                        <li><strong>Client</strong>: John Doe</li>
                                        <li><strong>Category</strong>: Web Design</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Close Project</button>
                                </div>
                            </div>
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
