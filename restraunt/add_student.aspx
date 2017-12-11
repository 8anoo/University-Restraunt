<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_student.aspx.cs" Inherits="restraunt.add_student" %>

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

</head>
<body style="background: url('img/header-bg.jpg') fixed;">
    <form id="form1" runat="server">

        <div style="direction: ltr">

            <div id="preloader">
                <div id="status">
                    <img src="img/preloader.gif" height="64" width="64" alt="" />
                </div>
            </div>
            <!-- Navigation ==========================================-->
            <nav id="menu" class="navbar navbar-default navbar-fixed-top" style="background-color: #082334; border-color: #f3ca27; height: 70px; padding-top: 5px;">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                        <a class="navbar-brand" href="homeuser.aspx" style="margin-top: 10px;"><i class="fa fa-flag-checkered fa-flip-horizontal"></i>FCI Project <strong></strong></a>
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

                                    <!--<li><a href="#home" >Home</a></li>-->
                                    <li><a runat="server" onserverclick="viewaccount_Click">view account</a></li>

                                    <li role="separator" class="divider"></li>

                                    <li><a href="homeuser.aspx#works-section">Days</a></li>
                                    <li><a href="homeuser.aspx#team-section">Important Character</a></li>
                                    <li><a href="homeuser.aspx#contact-section">Reports</a></li>

                                    <li role="separator" class="divider"></li>

                                    <!--   -->
                                    <%--runat="server" onserverclick="Button1_Click" --%>
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

            <!-- << Header >> City Reseve -->
            <div id="services-section-city-employee" class="text-center" style="height: auto; padding-bottom: 0px; margin-bottom: 34px; padding-top: 50px;">
                <div class="container">
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <h2>Insert <strong>Student</strong></h2>
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <div class="clearfix"></div>
                        <span style="font-size: 22px; color: #ffc801; font-family: initial;">You Can Reseve Now By Student ID (National ID)</span>
                    </div>
                </div>
            </div>

        </div>

        <div style="margin-top: 50px;">
        </div>


        <!-- Add Student -->
        <div id="second_view" class="col-xs-12" style="margin-top: 20px; text-align: center">
            <div class="row">
                <!-- Below To make The Content Center -->
                <div class="center-block" style="width: 60%; height: auto; background-color: rgba(88, 80, 80, 0.55); border-radius: 20px;">
                    <!-- text up-->
                    <div style="color: white; font-size: 30px; padding-top: 5px;">
                        Student Reseve
                    </div>
                    <!--for login-->
                    <div class="row" style="padding: 20px">

                        <!-- student ID -->
                        <div class="col-md-4 col-xs-12" style="float: left">
                            <label class="lbl_reseve">National ID</label>
                        </div>

                        <div class="col-md-8 col-xs-12" style="float: right">
                            <asp:TextBox MaxLength="14" ID="txtbox2" runat="server" class="txt_reseve" placeholder="National ID"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox2" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox2" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a"></asp:RegularExpressionValidator>
                        </div>

                        <!-------------------------------- student info -------------------------------->
                        <div class="col-md-12 col-xs-12">
                            <legend class="text-center;" style="color: #ecc320; margin-top: 30px;">Insert Student Info</legend>
                        </div>
                        <!--<p class="text-center" style="color: #4ee832; font-size: 22px;margin-top:8px;font-family:monospace;">Information</p>-->

                        <!-------------------------------- info -------------------------------->
                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">Name</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input required="required" id="txtbox_name" runat="server" class="txt_reseve" placeholder="Enter Name" maxlength="50"/>
                            </div>
                        </div>


                        <!-- ================================== -->
                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">University</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input  required="required" id="txtbox_university" runat="server" class="txt_reseve" placeholder="Enter University" maxlength="50" />
                            </div>
                        </div>
                        <!-- ================================== -->

                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">College</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input  required="required" id="txtbox_college" runat="server" class="txt_reseve"  placeholder="Enter college" maxlength="50"/>
                            </div>
                        </div>

                        <!-- ================================== -->

                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">Room</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <asp:TextBox MaxLength="8" ID="txtbox_room" runat="server" class="txt_reseve" placeholder="Enter Room Number"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox_room" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must Be Number And Maximum 8 Number" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox_room" SetFocusOnError="true" ValidationExpression="\d+" ValidationGroup="a"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <!-- ================================== -->

                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">build</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input  required="required" id="txtbox_build" runat="server" class="txt_reseve" placeholder="Enter build" maxlength="10" />
                            </div>
                        </div>

                        <!-- ================================== -->

                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">Stage</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input  required="required" id="txtbox_stage" runat="server" class="txt_reseve"  placeholder="Enter stage" maxlength="20"/>
                            </div>
                        </div>
                        <!-- ================================== -->

                        <div class="row" style="padding-left: 2%;">
                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                <label class="lbl_reseve">Gender</label>
                            </div>
                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                <input  required="required" id="txtbox_gender" runat="server" class="txt_reseve"  placeholder="Enter Gender" maxlength="10"/>
                            </div>
                        </div>

                        <!-------------------------------- End student info -------------------------------->

                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" ValidationGroup="a" Text="Save Data" Style="color: white; font-size: 25px; margin-bottom: 10px; background-color: rgba(8, 8, 8, 0.75); border-radius: 15px; border: 0; width: 35%;" />

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
    <%--<script type="text/javascript" src="js/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.js"></script>--%>
    <%--<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
    <script type="text/javascript" src="js/contact_me.js"></script>--%>
    <script type="text/javascript" src="js/owl.carousel.js"></script>

    <!-- Javascripts
        ================================================== -->
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
