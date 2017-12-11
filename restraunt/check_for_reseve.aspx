<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_for_reseve.aspx.cs" Inherits="restraunt.check_for_reseve" %>

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
<body  style="background:url('img/header-bg.jpg') fixed;">
    <form id="form1" runat="server">

        <div style="direction: ltr">

            <div id="preloader">
                <div id="status">
                    <img src="img/preloader.gif" height="64" width="64" alt="" />
                </div>
            </div>
            <!-- Navigation ==========================================-->
            <nav id="menu" class="navbar navbar-default navbar-fixed-top" style="background-color:#082334;border-color:#f3ca27;height:70px;padding-top:5px;">
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
            <div id="services-section-city-employee" class="text-center" style="height:auto;padding-bottom:0px;margin-bottom:34px;padding-top:50px;">
                <div class="container">
                    <div class="section-title wow fadeInDown">
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <h2>Check For <strong>Reseve</strong></h2>
                        <!-- hr -->
                        <hr style="width: 23%; background-color: #f7dc6f; height: 4px; border-radius: 15px;" />
                        <div class="clearfix"></div>
                        <span style="font-size: 22px; color: #ffc801; font-family: initial;">You Can Reseve Now By Student ID (National ID)</span>
                    </div>
                </div>
            </div>

        </div>

        <div style="margin-top:50px;">
        </div>

        <!-- Script Manager -->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <!-- Update Panel -->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container text-center" style="margin-bottom: 50px;">

                    <!-- Multi View -->
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <!-- View (1) -->

                        <!-- New -->
                        <asp:View ID="View1" runat="server">

                            <!-- 2 calender and button (( Next )) -->
                            <div class="row">
                                <div class="col-xs-12 col-md-4">
                                    <asp:Calendar ID="Calendar1" runat="server" style="margin-left:19%;margin-bottom:5px;background-color:rgba(0, 0, 0, .5);" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#322fda" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="Red" ForeColor="White" />
                                    </asp:Calendar>
                                </div>
                                <div class="col-xs-12 col-md-4">
                                    <asp:Button ID="Button1" ValidationGroup="a" runat="server" OnClick="btn1_Click" Text="Next" Style="color: white; font-size: 25px; margin-bottom: 10px; background-color: rgba(8, 8, 8, 0.75); border-radius: 15px; border: 0; width: 100%;" />
                                </div>
                                <div class="col-xs-12 col-md-4">
                                    <asp:Calendar ID="Calendar2" runat="server" style="margin-left:19%;margin-bottom:5px;background-color:rgba(0, 0, 0, .5);" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#322fda" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="Red" ForeColor="White" />
                                    </asp:Calendar>
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
                                            
                                            <!-- TextBox National ID -->
                                            <div class="row" style="padding: 20px">
                                                <div class="col-md-4 col-xs-12" style="float: left">
                                                    <label class="lbl_reseve">National ID</label>
                                                </div>
                                                <div class="col-md-8 col-xs-12" style="float: right">
                                                    <%--<input required="required" id="txtbox1" runat="server" class="txt_reseve" type="text" value="" placeholder="National ID" />--%>
                                                    <asp:TextBox ID="txtbox1" MaxLength="14" runat="server" class="txt_reseve" placeholder="National ID"></asp:TextBox>
                                                    <br />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill text" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox1" SetFocusOnError="true" ValidationGroup="a"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Number and 14 digits" ForeColor="Red" Font-Italic="true" ControlToValidate="txtbox1" SetFocusOnError="true" ValidationExpression="\d{14}" ValidationGroup="a" ></asp:RegularExpressionValidator>
                                                </div>
                                                <br />

                                            </div>
                                            <!--<div  style="color: white;font-size: 25px;padding-bottom: 10px;background-color: rgba(8, 8, 8, 0.75);width: 25%;">-->
                                            <!--button for Enter-->

                                        </div>
                                        <!--</div>-->
                                    </div>
                                </div>

                        </asp:View>

                        <!-- View (2) -->
                        <asp:View ID="View2" runat="server">

                            <asp:Button ID="Button2" runat="server" OnClick="btn2_Click" Text="Back" Style="color: white; font-size: 25px; margin-bottom: 10px; background-color: rgba(8, 8, 8, 0.75); border-radius: 15px; border: 0; width: 35%;" />

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
                                                <input readonly="true" id="txtbox2" runat="server" class="txt_reseve" type="text" value="" placeholder="البريد الإلكترونى" />
                                            </div>

                                            <!-------------------------------- student info -------------------------------->
                                            <div class="col-md-12 col-xs-12">
                                                <legend class="text-center;" style="color: #ecc320; margin-top: 30px;">Less Information</legend>
                                            </div>
                                            <!--<p class="text-center" style="color: #4ee832; font-size: 22px;margin-top:8px;font-family:monospace;">Information</p>-->
                                            
                                            <!-------------------------------- info -------------------------------->
                                            <div class="row" style="padding-left: 2%;">
                                                <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                    <label class="lbl_reseve">Name</label>
                                                </div>
                                                <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                    <input readonly="true" id="txtbox_name" runat="server" class="txt_reseve" />
                                                </div>
                                            </div>


                                            <!-- ================================== -->
                                            <div class="row" style="padding-left: 2%;">
                                                <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                    <label class="lbl_reseve">University</label>
                                                </div>
                                                <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                    <input readonly="true" id="txtbox_university" runat="server" class="txt_reseve" />
                                                </div>
                                            </div>
                                            
                                            <!-- ================================== -->

                                            <div class="row" style="padding-left: 2%;">
                                                <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                    <label class="lbl_reseve">build</label>
                                                </div>
                                                <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                    <input readonly="true" id="txtbox_build" runat="server" class="txt_reseve" />
                                                </div>
                                            </div>

                                            <!-- ================================== -->

                                            
                                            <div class="row" style="padding-left: 2%;">
                                                <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                    <label class="lbl_reseve">Gender</label>
                                                </div>
                                                <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                    <input readonly="true" id="txtbox_gender" runat="server" class="txt_reseve" />
                                                </div>
                                            </div>

                                            <!-------------------------------- End student info -------------------------------->

                                            <!-------------------------------- Reseve Days -------------------------------->

                                            <fieldset id="fieldset_1">
                                                <legend style="color: #ecc320">Days</legend>

                                                <div class="container" style="width: 100%;">
                                                    <div class="row">
                                                        <div class="col-xs-6">
                                                            <legend>First Week</legend>
                                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" class="days_of_week" >
                                                                <asp:ListItem Enabled="false">saterday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">sunday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">monday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">tuesday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">wednesday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">thrusday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">friday</asp:ListItem>
                                                            </asp:CheckBoxList>
                                                            
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <legend>Second Week</legend>
                                                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" class="days_of_week" >
                                                                <asp:ListItem Enabled="false">saterday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">sunday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">monday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">tuesday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">wednesday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">thrusday</asp:ListItem>
                                                                <asp:ListItem Enabled="false">friday</asp:ListItem>
                                                            </asp:CheckBoxList>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                        </div>
                                        <!--</div>-->
                                        <!-- btn calc all -->
                                        
                                        <legend style="color: #ecc320">Total</legend>
                                        
                                        <div class="row" style="padding-left: 2%;">
                                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                <label class="lbl_reseve">
                                                    Total Days</label>
                                            </div>
                                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                <input readonly="true" id="txtbox_totaldays" runat="server" class="txt_reseve" value="0" />
                                            </div>
                                        </div>
                                        <div class="row" style="padding-left: 2%;">
                                            <div class="col-md-4 col-xs-12" style="float: left; margin-bottom: 15px;">
                                                <label class="lbl_reseve">
                                                    Total Money</label>
                                            </div>
                                            <div class="col-md-8 col-xs-12" style="float: right; margin-bottom: 15px;">
                                                <input readonly="true" id="txtbox_totalmoney" runat="server" class="txt_reseve" value="0"/>
                                            </div>
                                        </div>
                                        <!--button for Enter-->
                                        <div class="row" style="padding-left: 2%;">
                                            <div class="col-md-2 col-xs-6" style="float: left; margin-bottom: 15px;">
                                                <label class="lbl_reseve">
                                                    Init Date</label>
                                            </div>
                                            <div class="col-md-4 col-xs-6" style="margin-bottom: 15px;">
                                                <!--<input readonly="true" id="Text10" runat="server" class="txt_reseve" />-->
                                                <asp:TextBox ID="txtbox_initdate" runat="server" class="txt_reseve"></asp:TextBox>
                                                <%--<asp:CalendarExtender ID="CalendarExtender1" runat="server" PopupPosition="BottomRight" TargetControlID="TextBox1">
                                                </asp:CalendarExtender>--%>
                                                <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox1" runat="server"></ajaxToolkit:CalendarExtender>--%>
                                            </div>
                                            <div class="col-md-2 col-xs-6" style="margin-bottom: 15px;">
                                                <label class="lbl_reseve">
                                                    Final Date</label>
                                            </div>
                                            <div class="col-md-4 col-xs-6" style="float: right; margin-bottom: 15px;">
                                                <!--<input readonly="true" id="Text11" runat="server" class="txt_reseve" />-->
                                                <asp:TextBox ID="txtbox_finaldate" runat="server" class="txt_reseve"></asp:TextBox>

                                                <%--<asp:CalendarExtender ID="CalendarExtender2" runat="server" PopupPosition="BottomRight" TargetControlID="TextBox2">
                                                </asp:CalendarExtender>--%>
                                            </div>
                                        </div>
                                        <!-- end test2 -->
                                    </div>
                                </div>
                            </div>
                        </asp:View>

                        <!-- End Of View 2-->
                    </asp:MultiView>
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
