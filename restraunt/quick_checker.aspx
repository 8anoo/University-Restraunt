<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quick_checker.aspx.cs" Inherits="restraunt.quick_checker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>quick_checker</title>

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
        .drpdown {
            width:80%;
            height:41px;
            font-size:19px;
            padding-left:56px;
            font-family:monospace;
            background-color:#fec701b8;
            color:#082334;
            border-radius:7px;
            margin-top:30px;
            border-color:#93ea1f;
        }
        .RadioButtonList1 > label{
            font-size:22px;
            font-family:monospace;
            margin-right:22px;
            margin-top:-7px;
            margin-bottom:17px;
        }
    </style>
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
                        <h2>quick <strong>quick_checker</strong></h2>
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

        <!-- Script Manager -->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <!-- Update Panel -->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <div class="container text-center" style="margin-top: -50px;">
                    <div class="row">
                        <!--   quick ckecker >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-->
                        

                        <!-- 2 calender and button (( Next )) -->
                            <div class="row text-center">
                                <div class="col-xs-6 col-md-3">
                                    <asp:Calendar ID="Calendar1" runat="server" style="margin-bottom:5px;background-color:rgba(0, 0, 0, .5);" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="165px" ShowGridLines="True" Width="100%">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#322fda" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="Red" ForeColor="White" />
                                    </asp:Calendar>
                                </div>
                                <div class="col-xs-6 col-md-3">
                                    <asp:Button ID="Button1" ValidationGroup="a" runat="server" OnClick="btn1_Click" Text="Next" Style="margin-top:130px;color: white; font-size: 25px; margin-bottom: 10px; background-color: rgba(8, 8, 8, 0.75); border-radius: 15px; border: 0; width: 100%;" />
                                </div>
                                <div class="col-xs-6 col-md-3 text-center">
                                    <asp:DropDownList ID="DropDownList1" class="drpdown" runat="server" Width="80%">
                                        
                                        <%--<asp:ListItem Text="Selected--" Value="0">
                                        </asp:ListItem>--%>
                                        <asp:ListItem Text="Saterday" Selected="True" Value="1">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Sunday" Value="2">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Monday" Value="3">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Tuesday" Value="4">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Wednesday" Value="5">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Thursday" Value="6">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Friday" Value="7">
                                        </asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RadioButtonList ID="RadioButtonList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="text-align:right;color:#f9e6b0;margin-left:10%;margin-top:57px;">
                                        
                                        <asp:ListItem Text="First Week" Value="0" Selected="True">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Second Week" Value="1">
                                        </asp:ListItem>

                                    </asp:RadioButtonList>
                                </div>
                                <div class="col-xs-6 col-md-3 text-center">
                                    <asp:DropDownList ID="DropDownList2" class="drpdown" runat="server" Width="80%">

                                        <%--<asp:ListItem Text="Selected--" Value="15">
                                        </asp:ListItem>--%>
                                        <asp:ListItem Text="Saterday" Value="8">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Sunday" Value="9">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Monday" Value="10">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Tuesday" Value="11">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Wednesday" Value="12">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Thursday" Value="13">
                                        </asp:ListItem>
                                        <asp:ListItem Text="Friday" Value="14">
                                        </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>


                        <div id="first_view" class="col-xs-12" style="margin-top: 20px; text-align: center">
                            <div class="row">
                                <!-- Below To make The Content Center -->
                                <div class="center-block" style="width: 60%; height: auto; background-color: rgba(88, 80, 80, 0.55); border-radius: 20px;">

                                    <!-- text up-->
                                    <div style="color: white; font-size: 30px; padding-top: 5px;">
                                        Enter National ID
                                    </div>
                                    <!--for login-->
                                    <div class="row" style="padding: 20px">
                                        <div class="col-md-4 col-xs-12" style="float: left">
                                            <label class="lbl_reseve">National ID</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12" style="float: right">
                                            <asp:TextBox ID="txtbox1" MaxLength="14" runat="server" class="txt_reseve" placeholder="National ID"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox1" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox1" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a"></asp:RegularExpressionValidator>
                                        </div>
                                        <br />
                                    </div>

                                    <!-- Display Panel And Label -->
                                    <div class="row">
                                        <div class="col-xs-12 col-md-8">
                                            <asp:Panel ID="Panel1" runat="server" class="panel1" style="width: 100%;height: 50px;border-radius: 21px;margin-left: 5px;margin-bottom: 18px;" ></asp:Panel>
                                        </div>
                                        <div class="col-xs-12 col-md-4"  style="margin-top:11px;">
                                            <asp:Label ID="Label1" class="lbl_reseve" runat="server" Text="29605191201394" ></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--   End quick ckecker >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-->
                    </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>


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
