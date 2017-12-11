<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="restraunt.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>Login</title>

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
                        <a class="navbar-brand" target="_blank" href="home.aspx" style="margin-top: 10px;"><i class="fa fa-flag-checkered fa-flip-horizontal"></i>FCI Project <strong></strong></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right" style="margin-top: 10px;">
                            <li><a href="home.aspx" target="_blank" class="page-scroll">Home</a></li>
                            <%--runat="server" onserverclick="aday_Click"--%>
                            <li><a href="home.aspx#works-section" target="_blank" class="page-scroll">Days</a></li>
                            <li><a href="home.aspx#team-section" target="_blank" class="page-scroll">Important Character</a></li>
                            <li><a href="home.aspx#contact-section" target="_blank" class="page-scroll">Reports</a></li>

                            <!--  added To Put Login -->
                            <li class="dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="img/7.png" class="img-circle" style="height: 40px; margin-top: -10px;" /><span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">

                                    <li><a href="home.aspx#home" target="_blank" >Home</a></li>
                                    <li><a href="home.aspx#works-section" target="_blank" >Days</a></li>
                                    <li><a href="home.aspx#team-section" target="_blank" >Important Character</a></li>
                                    <li><a href="home.aspx#contact-section" target="_blank" >Reports</a></li>

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

            <!--<center>-->
		        <div id="log_in" class="col-xs-12" style="margin-top: 220px;text-align:center" >
			        <div  class="row">
				        
				        <!-- Below To make The Content Center -->
				        <div class="center-block" style="width: 40%;height: auto;background-color: rgba(88, 80, 80, 0.55);border-radius: 20px;">
					
					        <!-- text up-->
					        <div style="color: white;font-size: 30px;padding-top: 5px;">
					        تسجيل الدخول
					        </div>
				
					        <!--for login-->
					        <div class="row" style="padding-top: 5%">
						        <div class="col-md-4 col-xs-12" style="float: right">
							        <label style="color: white;font-size: 20px;">البريد الإلكترونى</label>
						        </div>
						        <div class="col-md-8 col-xs-12" style="float: left">
                                    <input required="required" id="txtbox1" runat="server" style="height: 40px; width: 90%; padding-left: 5px; border-radius: 10px; border: 0px; background-color: rgba(167, 149, 149, 0.55); font-size: 18px; color: #f3ca2f;" type="text" value="" placeholder="البريد الإلكترونى" />
						        </div>
						
					        </div>
					        <br/>
					        <div class="row" style="padding-bottom: 5%;">
						        <div class="col-md-4 col-xs-12" style="float: right">
							        <label style="color: white;font-size: 20px;" >كلمة السر</label>
						        </div>
						        <div class="col-md-8 col-xs-12" style="float: left">
                                    <input required="required" id="txtbox2" runat="server" style="height: 40px; width: 90%; padding-left: 5px; border-radius: 10px; border: 0px; background-color: rgba(167, 149, 149, 0.55); font-size: 18px; color: #f3ca2f;" type="password" value="" placeholder="كلمة السر" />
						        </div>
						
					        </div>
					
					
				        <!--<div  style="color: white;font-size: 25px;padding-bottom: 10px;background-color: rgba(8, 8, 8, 0.75);width: 25%;">-->
					
					        <!--button for Enter-->
					        <input id="btn1" runat="server" onserverclick="btn1_Click" style="color: white;font-size: 25px;margin-bottom: 10px;background-color: rgba(8, 8, 8, 0.75);border-radius: 15px;border: 0;width: 35%;" type="button" value="دخول" />
				
				
				        </div>
						
				
				
				        <!--</div>-->
			        </div>
			
		        </div>
	        <!--</center>-->

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
