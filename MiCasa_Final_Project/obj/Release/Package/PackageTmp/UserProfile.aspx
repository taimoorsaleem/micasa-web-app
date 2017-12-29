<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MiCasa_Final_Project.UserProfile" EnableEventValidation="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mi Casa | User Profile</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-blue sidebar-mini">
    <form runat="server">
        <div class="wrapper">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <header class="main-header" style="height:50px">
        <!-- Logo -->
        <a href="../../index2.html" class="logo" style="height:114px">
  
          <!-- mini logo for sidebar mini 50x50 pixels -->
          
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><img src="/dist/img/regular.png" alt="Photo" style="margin-left:-20px; width:240px"></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation" style="height:50px">
          <!-- Sidebar toggle button-->
          
          <div class="navbar-custom-menu" style="height:50px; display:none" id="logoutbtn" runat="server">
           
              <a href="login.aspx" ><img runat="server" id="ImageButton1" class="btn btn-default"  style="background-color:Orange;width:62px;height:100%;" src="/dist/img/button.png" alt="Log Out" /></a>

          </div>
        </nav>
      </header>
            <!-- Left side column. contains the logo and sidebar -->
                  <aside class="main-sidebar" style="margin-top:70px">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel" id="userpanel" runat="server" style="display:none; height:50px">
            <div class="pull-left info" style="margin-left:-55px">
              <p><span id="lblUserName" runat="server"></span></p>
            </div>
          </div>
          <!-- search form -->
          
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            
            <li class="treeview">
              <a href="index.aspx">
                <i class="fa fa-dashboard"></i> <span><span id="lblHome">Home</span></span> 
              </a>
              
            </li>
            <li class="treeview">
              <a href="Search.aspx">
                <i class="fa fa-search"></i>
                <span><span id="lblSearch">Search</span></span>
                
              </a>
              
            </li>

              <li id="adlink" runat="server" style="display:none">
              <a href="MyForm.aspx">
                <i class="fa fa-th"></i> <span><span id="lblPlaceAd">Place an Ad</span></span> 
              </a>
            </li>

              <li id="profilelink" runat="server" style="display:none">
              <a href="UserProfile.aspx">
                <i class="fa fa-th"></i> <span><span id="lblProfile">Profile</span></span> 
              </a>
            </li>

            <li id="loginlink" runat="server">
              <a href="Login.aspx">
                <i class="fa fa-th"></i> <span><span id="lblLogin">Login</span></span> 
              </a>
            </li>

<li id="registerlink" runat="server">
              <a href="Register.aspx">
                <i class="fa fa-th"></i> <span><span id="lblRegister">Get Registered</span></span> 
              </a>
            </li>
            
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>


            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 4266px;">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>User Profile
                    </h1>

                </section>

                <!-- Main content -->
                <section class="content">

                    <div class="row">
                        <div class="col-md-3">

                            <!-- Profile Image -->
                            <div class="box box-primary">
                                <div class="box-body box-profile">
                                    <asp:Image class="profile-user-img img-responsive img-circle" src="../../dist/img/profile-img.jpg" alt="User profile picture" ID="imgUser" runat="server" /></asp:Image>
                   <h3 class="profile-username text-center">
                       <asp:Label ID="lblName" runat="server" Text="Taimoor saleem"></asp:Label></h3>
                                    

                                    <ul class="list-group list-group-unbordered">
                                        <li class="list-group-item">
                                            <b>Contact Number</b>  <a>
                                                <asp:Label ID="lblNumber" class="pull-right" runat="server" Text="0313-8962357"></asp:Label></a>
                                        </li>
                                        <li class="list-group-item">
                                            <b>Email</b>  <a>
                                                <asp:Label ID="lblEmail" class="pull-right" runat="server" Text="taimoorsalim@gmail.com"></asp:Label></a>

                                        </li>
                                        <li class="list-group-item">

                                            <b>Location</b>  
                                            
                                            <a><asp:Label ID="lblLocation" class="pull-right" runat="server" Text="Gulshan-e-Mustafa,Karachi"></asp:Label></a>
                                           
                                        </li>
                                           
                                         <%--<li class="list-group-item">

                                            <b>Location</b>  <a>
                                                <asp:Label ID="Label1" class="pull-right" runat="server" Text="Gulshan-e-Mustafa,Karachi"></asp:Label></a>
                                            <asp:DropDownList CssClass="form-control select2  select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" runat="server" id="ddArea" AutoPostBack="true">

                                                 </asp:DropDownList
                                        </li>--%>
                                    </ul>


                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->

                            <!-- About Me Box -->
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-9">
                            <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs">
                                    

                                    <li class="active"><a href="#settings" data-toggle="tab" aria-expanded="false">Settings</a></li>
                                </ul>
                                <div class="tab-content">
                                    

                                    <div class="tab-pane active" id="settings">
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <label for="inputName" class="col-sm-2 control-label">Name</label>
                                                <div class="col-sm-10">
                                                    <!--<input type="email" class="form-control" id="inputName" placeholder="Taimoor Saleem">-->


                                                    <asp:TextBox ID="txtName" class="form-control" placeholder="Taimoor Saleem" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                                                <div class="col-sm-10">

                                                    <asp:TextBox ID="txtEmail" class="form-control" placeholder="taimoorsalim@gmail.com" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="inputName" class="col-sm-2 control-label">Contact</label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtPhone" class="form-control" placeholder="0313-8962357" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="inputSkills" class="col-sm-2 control-label">City</label>
                                                <div class="col-sm-10">

                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                              
                   <asp:DropDownList CssClass="form-control select2  select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" runat="server" id="ddCity" AutoPostBack="true" OnSelectedIndexChanged="ddCity_SelectedIndexChanged">

                                            <asp:ListItem  disabled="True" selected="True" Value="">Please Select a City</asp:ListItem>
                          

                                            </asp:DropDownList>

                                                    </ContentTemplate>
                                                <Triggers>

                                                    <asp:AsyncPostBackTrigger ControlID="ddCity" EventName="SelectedIndexChanged" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            

                                                </div>
                                            </div>

                                            
                                            
                                            
                                            
                                         

                                            <div class="form-group">
                                                <label for="inputSkills" class="col-sm-2 control-label">Area</label>
                                                <div class="col-sm-10">

                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                         <asp:DropDownList CssClass="form-control select2  select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true" runat="server" id="ddArea" AutoPostBack="true" OnSelectedIndexChanged="ddArea_SelectedIndexChanged">

                   <asp:ListItem  disabled="True" selected="True" Value="">Please Select an Area</asp:ListItem>
                          <%-- <asp:ListItem Value="Sq. Ft.">Sq. Ft.</asp:ListItem>
                           <asp:ListItem Value="Sq. Yd.">Sq. Yd.</asp:ListItem>
                           <asp:ListItem Value="Guzz">Guzz</asp:ListItem>
                           <asp:ListItem Value="Kanal">Kanal</asp:ListItem>
                           <asp:ListItem Value="Marla">Marla</asp:ListItem>--%>

                                             </asp:DropDownList>
                                             
                                                        </ContentTemplate>
                                    <Triggers>

                                        <asp:AsyncPostBackTrigger ControlID="ddCity" EventName="SelectedIndexChanged" />

                                        </Triggers>
                                            </asp:UpdatePanel>

                        
                                                </div>
                                            </div>



                                            <div class="form-group">
                                                <label for="inputSkills" class="col-sm-2 control-label">Image</label>
                                                <div class="col-sm-10">

                                                    
                                                    <asp:FileUpload runat="server" ID="myupload" accept="image/png, image/jpeg" />
                        
                                                </div>
                                            </div>


                                            
                                            

                                            <div class="form-group">
                                                
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <!--<button-- type="submit" class="btn btn-danger" style="float:right">Submit</button>-->
                                                    <asp:Button ID="btnsubmit" class="btn btn-danger" Style="float: right" runat="server" Text="Submit" OnClick="btnsubmit_Click"></asp:Button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.tab-pane -->
                                </div>
                                <!-- /.tab-content -->
                            </div>
                            <!-- /.nav-tabs-custom -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
        <div class="pull-right hidden-xs">
          
        </div>
        <strong>Copyright 2015-2016 <a>MiCasa</a>.</strong> All rights reserved.
      </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li>
                    <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li>
                    <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li>
                    <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li>
                    <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li>
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-user bg-yellow"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                                        <p>New phone +1(800)555-1234</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                                        <p>nora@example.com</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <i class="menu-icon fa fa-file-code-o bg-green"></i>
                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                                        <p>Execution time 5 seconds</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">Update Resume
                    <span class="label label-success pull-right">95%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">Laravel Integration
                    <span class="label label-warning pull-right">50%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript::;">
                                    <h4 class="control-sidebar-subheading">Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                                    </h4>
                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                    </div>
                    <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
                        <div>
                            <h4 class="control-sidebar-heading">Layout Options</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">
                                    Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">
                                    Boxed Layout</label><p>Activate the boxed layout</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">
                                    Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">
                                    Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">
                                    Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">
                                    Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p>
                            </div>
                            <h4 class="control-sidebar-heading">Skins</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Blue</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Black</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Purple</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Green</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Red</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Yellow</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Blue Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Black Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Purple Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Green Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Red Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
                        <div>
                            <h4 class="control-sidebar-heading">Layout Options</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">
                                    Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">
                                    Boxed Layout</label><p>Activate the boxed layout</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">
                                    Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">
                                    Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">
                                    Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">
                                    Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p>
                            </div>
                            <h4 class="control-sidebar-heading">Skins</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Blue</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Black</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Purple</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Green</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Red</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Yellow</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Blue Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Black Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Purple Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Green Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Red Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
                        <div>
                            <h4 class="control-sidebar-heading">Layout Options</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">
                                    Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">
                                    Boxed Layout</label><p>Activate the boxed layout</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">
                                    Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">
                                    Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">
                                    Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">
                                    Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p>
                            </div>
                            <h4 class="control-sidebar-heading">Skins</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Blue</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Black</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Purple</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Green</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Red</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Yellow</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Blue Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Black Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Purple Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Green Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Red Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
                        <div>
                            <h4 class="control-sidebar-heading">Layout Options</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">
                                    Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">
                                    Boxed Layout</label><p>Activate the boxed layout</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">
                                    Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">
                                    Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">
                                    Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">
                                    Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p>
                            </div>
                            <h4 class="control-sidebar-heading">Skins</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Blue</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Black</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Purple</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Green</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Red</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Yellow</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Blue Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Black Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Purple Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Green Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Red Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="control-sidebar-theme-demo-options-tab" class="tab-pane active">
                        <div>
                            <h4 class="control-sidebar-heading">Layout Options</h4>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="fixed" class="pull-right">
                                    Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="layout-boxed" class="pull-right">
                                    Boxed Layout</label><p>Activate the boxed layout</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-layout="sidebar-collapse" class="pull-right">
                                    Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-enable="expandOnHover" class="pull-right">
                                    Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right">
                                    Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p>
                            </div>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    <input type="checkbox" data-sidebarskin="toggle" class="pull-right">
                                    Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p>
                            </div>
                            <h4 class="control-sidebar-heading">Skins</h4>
                            <ul class="list-unstyled clearfix">
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Blue</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Black</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Purple</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Green</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Red</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin">Yellow</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Blue Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Black Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Purple Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Green Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px">Red Light</p>
                                </li>
                                <li style="float: left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover">
                                    <div><span style="display: block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display: block; width: 80%; float: left; height: 7px;"></span></div>
                                    <div><span style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div>
                                </a>
                                    <p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <div method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                  <input type="checkbox" class="pull-right" checked="">
                                </label>
                                <p>
                                    Some information about this general settings option
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Allow mail redirect
                  <input type="checkbox" class="pull-right" checked="">
                                </label>
                                <p>
                                    Other sets of options are available
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Expose author name in posts
                  <input type="checkbox" class="pull-right" checked="">
                                </label>
                                <p>
                                    Allow the user to show his name in blog posts
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <h3 class="control-sidebar-heading">Chat Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Show me as online
                  <input type="checkbox" class="pull-right" checked="">
                                </label>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Turn off notifications
                  <input type="checkbox" class="pull-right">
                                </label>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Delete chat history
                  <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                                </label>
                            </div>
                            <!-- /.form-group -->
                        </div>
                    </div>
                    <!-- /.tab-pane -->
                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
            <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
        </div>
        <!-- ./wrapper -->
    </form>

    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <script src="../../plugins/select2/select2.full.min.js"></script>

    <!-- Visual Studio Browser Link -->
    <script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"8d5972ac20a94797914e9f50d7347f8d"}
    </script>
    <script type="text/javascript" src="http://localhost:52907/d8ca5c827ce44c87a0a0d8b678420f18/browserLink" async="async"></script>
    <!-- End Browser Link -->




    <!-- Visual Studio Browser Link -->
    <script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"f364f05a71894f1ba55f4bc3bbb9cd2b"}
    </script>
    <script type="text/javascript" src="http://localhost:52907/d8ca5c827ce44c87a0a0d8b678420f18/browserLink" async="async"></script>
    <!-- End Browser Link -->


    <!-- Visual Studio Browser Link -->
    <script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome (Linux)","requestId":"3e2838c04ca24926a1015c17d4c8014b"}
    </script>
    <script type="text/javascript" src="http://localhost:52907/d8ca5c827ce44c87a0a0d8b678420f18/browserLink" async="async"></script>
    <!-- End Browser Link -->


    <!-- Visual Studio Browser Link -->
    <script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"b98a30d33bc1441c8a766900c33104af"}
    </script>
    <script type="text/javascript" src="http://localhost:52907/d8ca5c827ce44c87a0a0d8b678420f18/browserLink" async="async"></script>
    <!-- End Browser Link -->


    <!-- Visual Studio Browser Link -->
    <script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"1da84a954fd549d3908e3bfc89535d98"}
    </script>
    <script type="text/javascript" src="http://localhost:52907/d8ca5c827ce44c87a0a0d8b678420f18/browserLink" async="async"></script>
    <!-- End Browser Link -->
    <script>


        
    </script>
</body>
</html>
