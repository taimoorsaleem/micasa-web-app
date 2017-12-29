<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Upload.aspx.cs" Inherits="MiCasa_Final_Project.MyForm" MaintainScrollPositionOnPostBack = "true"  EnableViewState="true"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html><head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Casa | Ad Upload</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../plugins/select2/select2.min.css">
    <link rel="stylesheet" href="/plugins/rating/rating.css" />
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
      <form runat="server" encType="multipart/form-data">
          <asp:ScriptManager ID="SM1" runat="server" >
          </asp:ScriptManager>
    <div class="wrapper">

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
      <div class="content-wrapper" style="min-height: 1096px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Upload an Ad
            
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">

          <!-- SELECT2 EXAMPLE -->
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Details</h3>
              
            </div>
              <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                          <ContentTemplate>
              <!-- /.combo for city -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                        <asp:DropDownList CssClass="form-control select2 select2-hidden-accessible" style="width: 100%;" TabIndex="1" aria-hidden="true" runat="server" id="ddCity" CausesValidation="true" OnSelectedIndexChanged="ddCity_SelectedIndexChanged" AutoPostBack="true">
                        
                   <asp:ListItem Selected="True" disabled="true" Value="">Please Select a City</asp:ListItem>
               
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator Style="width:100% " ValidationGroup="flat" CssClass="text-red" ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Please Select a City!" Display="Dynamic" ControlToValidate="ddCity"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Select a City!" Display="Dynamic" ControlToValidate="ddcity"></asp:RequiredFieldValidator>            
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Select a City!" Display="Dynamic" ControlToValidate="ddcity"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div><!-- /.box-body -->

</ContentTemplate>
                          
                          </asp:UpdatePanel>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
              <!-- /.combo for area -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    

                      
                        <asp:DropDownList CssClass="form-control select2 select2-hidden-accessible" style="width: 100%;" TabIndex="2" aria-hidden="true" runat="server" id="ddArea" OnSelectedIndexChanged="ddArea_SelectedIndexChanged" AutoPostBack="true">
                        
                   <asp:ListItem Selected="True" disabled="true" Value="">Please Select an Area</asp:ListItem>
               
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ValidationGroup="flat" ID="RequiredFieldValidator2"  CssClass="text-red" runat="server" ErrorMessage="Please Select an Area!" ControlToValidate="ddArea" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Select an Area!" Display="Dynamic" ControlToValidate="ddArea"></asp:RequiredFieldValidator>            
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please Select an Area!" Display="Dynamic" ControlToValidate="ddArea"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
            </ContentTemplate>
                          <Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddCity" EventName="SelectedIndexChanged" />
                          </Triggers>
                          </asp:UpdatePanel>
              

               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                          <ContentTemplate>
              <!-- /.combo for block -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                        <asp:DropDownList CssClass="form-control select2  select2-hidden-accessible" style="width: 100%;" TabIndex="3" aria-hidden="true" runat="server" id="ddBlock" AutoPostBack="true" OnSelectedIndexChanged="ddBlock_SelectedIndexChanged">
                        
                   <asp:ListItem Selected="True" disabled="true" Value="">Please Select a Block</asp:ListItem>
               
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="flat" runat="server" ErrorMessage="Please Select a Block!" ControlToValidate="ddBlock" CssClass="text-red" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please Select a Block!" Display="Dynamic" ControlToValidate="ddBlock"></asp:RequiredFieldValidator>            
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please Select a Block!" Display="Dynamic" ControlToValidate="ddBlock"></asp:RequiredFieldValidator>            

                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
</ContentTemplate>
                          <Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddArea"  EventName="SelectedIndexChanged"/>
                          </Triggers>
                          </asp:UpdatePanel>
                
              
              <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                          <ContentTemplate>

              
              <!-- /.combo for size -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                  <div class="form-group" style="width:65%;float:left;" > 
                      <asp:TextBox ID="txtSize" Cssclass="form-control"  placeholder="Please Enter the Size of Property" MaxLength="9" style="width: 100%;" TabIndex="4" runat="server" ></asp:TextBox>
                      <asp:RequiredFieldValidator Style="width:100% " ValidationGroup="flat" CssClass="text-red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter the Size of Property!" Display="Dynamic" ControlToValidate="txtSize"></asp:RequiredFieldValidator>    
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtSize" ErrorMessage="Please Enter Only Number!"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please Enter the Size of Property!" Display="Dynamic" ControlToValidate="txtSize"></asp:RequiredFieldValidator>            
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Please Enter the Size of Property!" Display="Dynamic" ControlToValidate="txtSize"></asp:RequiredFieldValidator>            

                  </div>


                     <div class="form-group" style="width:35%; float:left;">
                         
                   
                       <asp:DropDownList CssClass="form-control select2  select2-hidden-accessible" style="width: 100%;" TabIndex="5" aria-hidden="true" runat="server" id="ddSizeUnit" AutoPostBack="true">

                   <asp:ListItem  disabled="True" selected="True">Please Select a Unit</asp:ListItem>
                           <asp:ListItem Value="Sq. Ft.">Sq. Ft.</asp:ListItem>
                           <asp:ListItem Value="Sq. Yd.">Sq. Yd.</asp:ListItem>
                           <asp:ListItem Value="Guzz">Guzz</asp:ListItem>
                           <asp:ListItem Value="Kanal">Kanal</asp:ListItem>
                           <asp:ListItem Value="Marla">Marla</asp:ListItem>

                        </asp:DropDownList>

                         <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Select Size Unit!" Display="Dynamic" ControlToValidate="ddSizeUnit"></asp:RequiredFieldValidator>
                         <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator16" runat="server" ErrorMessage="Please Select Size Unit!" Display="Dynamic" ControlToValidate="ddSizeUnit"></asp:RequiredFieldValidator>            
                         <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please Select Size Unit!" Display="Dynamic" ControlToValidate="ddSizeUnit"></asp:RequiredFieldValidator>            


<%--                     <asp:DropDownList CssClass ="form-control select2  select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true"  runat="server" id="ddSize" AutoPostBack="true" OnSelectedIndexChanged="ddSize_SelectedIndexChanged">
                        
                   
               
                    </asp:DropDownList>

                                  --%>

                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                    </div>
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

              </ContentTemplate>
                          <Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddArea" EventName="SelectedIndexChanged"  />
                          </Triggers>
                      </asp:UpdatePanel>

              

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                  <asp:TextBox Cssclass="form-control"  placeholder="Please Enter a Title For Property" runat="server" TabIndex="6" Id="txtPropertyTitle"></asp:TextBox>
                      <%--<asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter the Title for Property!" Display="Dynamic" ControlToValidate="txtPropertyTitle"></asp:RequiredFieldValidator>--%>
                      <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please Enter the Title for Property!" Display="Dynamic" ControlToValidate="txtPropertyTitle"></asp:RequiredFieldValidator>
                         <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please Enter the Title for Property!" Display="Dynamic" ControlToValidate="txtPropertyTitle"></asp:RequiredFieldValidator>            
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator20" runat="server" ErrorMessage="Please Enter the Title for Property!" Display="Dynamic" ControlToValidate="txtPropertyTitle"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                
              <!-- /.combo for property type -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                    <asp:DropDownList CssClass="form-control select2 select2-hidden-accessible" style="width: 100%;" TabIndex="7" aria-hidden="true" runat="server" id="ddPropertyType" OnSelectedIndexChanged="ddPropertyType_SelectedIndexChanged" AutoPostBack="true">
                        
                   <asp:ListItem Selected="True" disabled="true" >Please Select a Property Type</asp:ListItem>
               
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Plaese Select a type For Property!" Display="Dynamic" ControlToValidate="ddPropertyType"></asp:RequiredFieldValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                 

            
          </div><!-- /.box -->

         
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <!-- SELECT plot EXAMPLE -->
          <div class="box box-default" style="display:none" runat="server" id="divPlot">
            <div class="box-header with-border">
              <h3 class="box-title">For Plot </h3>
              
            </div>
              
           

            

                <!-- /.checkbox for leized title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;margin-bottom:30px;" >
                  <div class="form-group" >
                    
                <div class="checkbox" >
                        <asp:label runat="server">
                       <asp:CheckBox     Cssclass="minimal"  style="position: absolute;" TabIndex="8" runat="server" id="chkLeased" Text="Leased"/>
                          
                        </asp:label>
                    
                      </div>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


  
              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                   <asp:textbox Cssclass="form-control" ValidationGroup="plot" TabIndex="9"  placeholder="Please Enter The Price For Plot (PKR.)" runat="server" ID="txtPricePlot" MaxLength="18"></asp:textbox>
                      <asp:RequiredFieldValidator ValidationGroup="plot" Style="width:100% " CssClass="text-red" ID="vldplotpricereq" runat="server" MaxLength="18" ErrorMessage="Please Enter the Price for Plot!" Display="Dynamic" ControlToValidate="txtPricePlot"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ValidationGroup="plot" ID="vldplotpriceregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtPricePlot" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                          <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           
                      <asp:textbox Cssclass="form-control" rows="3" TabIndex="10" style="resize:none; height:75px" TextMode="MultiLine" placeholder="Enter Description For Plot" runat="server" ID="txtDescriptionPlot"></asp:textbox>
                      
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


              <div class="box-body" id="divImage1" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      
                    <%--<asp:FileUpload runat="server" ID="FileUpload1" OnUploadedComplete="FileUpload1_UploadedComplete"></asp:FileUpload>--%>
                      <ajaxToolkit:AsyncFileUpload runat="server" ID="FileUpload1" TabIndex="11" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv2"></ajaxToolkit:AsyncFileUpload>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                         
              
              <div class="box-body" id="divImage2" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      <ajaxToolkit:AsyncFileUpload ID="FileUpload2" TabIndex="12"  runat="server" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv3" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload2" OnLoad="ImageUpload2_Load" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                      

                <div class="box-body" id="divImage3" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           
                      <ajaxToolkit:AsyncFileUpload ID="FileUpload3" TabIndex="13" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv4" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload3" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="divImage4" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FileUpload4" MaximumnumberOfFiles="1" TabIndex="14"  runat="server" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv5"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload4" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="divImage5" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
             <ajaxToolkit:AsyncFileUpload ID="FileUpload5" MaximumnumberOfFiles="1"  runat="server" TabIndex="15" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv6"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload5" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="divImage6" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FileUpload6" MaximumnumberOfFiles="1"  runat="server" TabIndex="16" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv7"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload6" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="divImage7" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FileUpload7" MaximumnumberOfFiles="1"  runat="server" TabIndex="17" OnUploadedComplete="FileUpload1_UploadedComplete" OnClientUploadComplete="showdiv8" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload7" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="divImage8" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FileUpload8" MaximumnumberOfFiles="1"  runat="server" TabIndex="18" OnUploadedComplete="FileUpload1_UploadedComplete"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload8" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


        <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                  <%--<asp:button runat="server" id="btnSubmitPlot" Cssclass="btn btn-primary" style="float:right;" Text="Submit" />--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->

            <asp:button runat="server" ValidationGroup="plot" id="btnSubmitPlot" Cssclass="btn btn-primary" style="float:right;" TabIndex="19" Text="Submit" OnClick="btnSubmitPlot_Click" />
            
            </div>
            
           
          </div><!-- /.box -->
                    

            
                    <!-- SELECT House EXAMPLE -->
          <div class="box box-default" style="display:none" runat="server" id="divHouse">
            <div class="box-header with-border">
              <h3 class="box-title">For House </h3>
              
            </div>
              
              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
            <label>
                <asp:RadioButton GroupName="radioHouse" runat="server" id="radiobtnSellHouse"  Cssclass="minimal" text="&nbsp&nbsp&nbspSell" TabIndex="8" style="position: absolute;" />
            
</label>
                         
                     
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <label>
                  <asp:RadioButton GroupName="radioHouse" runat="server" id="radiobtnRentHouse" Cssclass="minimal" text="&nbsp&nbsp&nbspRent" TabIndex="9" style="position: absolute;" />
                           
                          
                 <//label>
                      <%--S<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                     <!-- /.text box for furnish title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                      Condition
               <asp:textbox Cssclass="rating rating5"   placeholder="Furnish" runat="server" TabIndex="10" ID="txtHouseFurnish"></asp:textbox>
                      <asp:RequiredFieldValidator Style="width:100% " ValidationGroup="house" CssClass="text-red" ID="vldhousefurnish" runat="server" ErrorMessage="Please Rate Your House!" Display="Dynamic" ControlToValidate="txtHouseFurnish"></asp:RequiredFieldValidator>            

                      <%--<asp:TextBox class="rating rating5" style="float:left" runat="server" ></asp:TextBox>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                          <ContentTemplate>

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                           <asp:DropDownList CssClass="form-control select2 select2-hidden-accessible" style="width: 100%;" TabIndex="11" aria-hidden="true" runat="server" id="ddHousePosition" AutoPostBack="true" OnSelectedIndexChanged="ddPosition_SelectedIndexChanged">
                        
                   <asp:ListItem Selected="False" disabled="True"  Value="">Please Select the Position</asp:ListItem>
                           <asp:ListItem Value="east open">East Open</asp:ListItem>
                           <asp:ListItem Value="west open">West Open</asp:ListItem>
                           <asp:ListItem Value="other">Other</asp:ListItem>
               
                    </asp:DropDownList>
                 <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhouseposition" runat="server" ErrorMessage="Please Select the House Position!" Display="Dynamic" ControlToValidate="ddHousePosition"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                              </ContentTemplate>
                          <%--<Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddSize" EventName="SelectedIndexChanged" />
                          </Triggers>--%>
                      </asp:UpdatePanel>


              <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                          <ContentTemplate>

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                           <asp:DropDownList CssClass="form-control select2 select2-hidden-accessible" style="width: 100%;" TabIndex="12" aria-hidden="true" runat="server" id="ddHouseAreaType" AutoPostBack="true" OnSelectedIndexChanged="ddHouseAreaType_SelectedIndexChanged">
                        
                   <asp:ListItem Selected="False" disabled="True"  Value="">Please Select an Area Type</asp:ListItem>
                           <asp:ListItem Value="Full">Full</asp:ListItem>
                           <asp:ListItem Value="Portion">Portion</asp:ListItem>              
                    </asp:DropDownList>
                 <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhouseareatype" runat="server" ErrorMessage="Please Select an Area type!" Display="Dynamic" ControlToValidate="ddHouseAreaType"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                              </ContentTemplate>
                          <%--<Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddSize" EventName="SelectedIndexChanged" />
                          </Triggers>--%>
                      </asp:UpdatePanel>
                   
              <div  id="divHouseFull" style="display:none" runat="server">
                      <!-- /.text box for  title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                  
                         <asp:textbox  Cssclass="form-control"  placeholder="Please Enter The Number Of Floors" TabIndex="13" runat="server" ID="txtHouseFullNumberOfFloors" MaxLength="2"></asp:textbox>
                      <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhousefullfloorsreq" runat="server" ErrorMessage="Please Enter the Number of Floors!" Display="Dynamic" ControlToValidate="txtHouseFullNumberOfFloors"></asp:RequiredFieldValidator>            
                      <asp:RegularExpressionValidator ValidationGroup="house" ID="vldhousefullfloorsregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtHouseFullNumberofFloors" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                
                      <!-- /.text box for  title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                       <asp:textbox Cssclass="form-control" MaxLength="2" placeholder="Please Enter The Number Of Rooms" runat="server" TabIndex="14" ID="txtHouseFullNumberOfRooms"></asp:textbox>
             <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhousefullroomsreq" runat="server" ErrorMessage="Please Enter the Number of Rooms!" Display="Dynamic" ControlToValidate="txtHouseFullNumberOfRooms"></asp:RequiredFieldValidator>            
                      <asp:RegularExpressionValidator ValidationGroup="house" ID="vldhousefullroomsregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtHouseFullNumberofRooms" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
              </div>
         
                   <div id="divHousePortion" runat="server" style="display:none">
                      <!-- /.text box for  title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                       <asp:textbox Cssclass="form-control" TabIndex="13"  placeholder="Please Enter The Floor" runat="server" MaxLength="2" ID="txtHousePortionFloor"></asp:textbox>
             <asp:RequiredFieldValidator Style="width:100% " ValidationGroup="house" CssClass="text-red" ID="vldhouseportionreq" runat="server" ErrorMessage="Please Enter the Number of Floors!" Display="Dynamic" ControlToValidate="txtHousePortionFloor"></asp:RequiredFieldValidator>                 
                      <asp:RegularExpressionValidator ValidationGroup="house" ID="vldhouseportionregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtHousePortionFloor" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                
              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                     <asp:textbox Cssclass="form-control"  placeholder="Please Enter The Number Of Rooms" runat="server" TabIndex="14" ID="txtHousePortionNumberOfRooms" MaxLength="2" ></asp:textbox>
             <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhouseportionroomsreq" runat="server" ErrorMessage="Please Enter the Number of Rooms!" Display="Dynamic" ControlToValidate="txtHousePortionNumberOfRooms"></asp:RequiredFieldValidator>             
                      <asp:RegularExpressionValidator ValidationGroup="house" ID="vldhouseportionroomsregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtHousePortionNumberOfRooms" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                       </div>

              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                     <asp:textbox Cssclass="form-control"  placeholder="Please Enter The Price For House" runat="server" MaxLength="18" TabIndex="15" ID="txtPriceHouse"></asp:textbox>
        <asp:RequiredFieldValidator ValidationGroup="house" Style="width:100% " CssClass="text-red" ID="vldhousepricereq" runat="server" ErrorMessage="Please Enter the Price For House!" Display="Dynamic" ControlToValidate="txtPriceHouse"></asp:RequiredFieldValidator>                     
                      <asp:RegularExpressionValidator ValidationGroup="house" ID="vldhousepriceregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtPriceHouse" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
            <asp:textbox Cssclass="form-control" rows="3" style="resize:none;height:75px" TabIndex="16" TextMode="MultiLine" placeholder="Enter Description For House" runat="server" ID="txtareaDescriptionHouse"></asp:textbox>
        
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
              

              <div class="box-body" id="housediv1" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      
                    <%--<asp:FileUpload runat="server" ID="FileUpload1" OnUploadedComplete="FileUpload1_UploadedComplete"></asp:FileUpload>--%>
                      <ajaxToolkit:AsyncFileUpload runat="server" ID="HouseFileUpload1" TabIndex="17" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv2"></ajaxToolkit:AsyncFileUpload>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                         
              
              <div class="box-body" id="housediv2" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      <ajaxToolkit:AsyncFileUpload ID="HouseFileUpload2" TabIndex="18"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv3" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload2" OnLoad="ImageUpload2_Load" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                      

                <div class="box-body" id="housediv3" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           
                      <ajaxToolkit:AsyncFileUpload ID="HouseFileUpload3" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" TabIndex="119" OnClientUploadComplete="showHousediv4" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload3" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="housediv4" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="HouseFileUpload4" TabIndex="20" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv5"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload4" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="housediv5" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
             <ajaxToolkit:AsyncFileUpload ID="HouseFileUpload5" TabIndex="21" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv6"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload5" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="housediv6" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload TabIndex="22" ID="HouseFileUpload6" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv7"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload6" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="housediv7" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload TabIndex="23" ID="HouseFileUpload7" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete" OnClientUploadComplete="showHousediv8" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload7" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="housediv8" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="HouseFileUpload8" TabIndex="24" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="HouseFileUpload_UploadedComplete"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload8" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


              
        <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
                
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            <asp:button runat="server" ValidationGroup="house" id="btnSubmitHouse" Cssclass="btn btn-primary" TabIndex="25" style="float:right;" Text="Submit" OnClick="btnSubmitHouse_Click" />
            </div>
         
          </div><!-- /.box -->
                    


            
                    <!-- SELECT Flat EXAMPLE -->
          <div class="box box-default" style="display:none" runat="server" id="divAppartment">
            <div class="box-header with-border">
              <h3 class="box-title">For Flat </h3>
              
            </div>
              
  
              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;margin-top:10px; margin-bottom:-10px" >
                  <div class="form-group" >
                    
           <asp:label runat="server">
                <asp:RadioButton GroupName="radioFlat" runat="server" id="radiobtnSellFlat"  TabIndex="13" Cssclass="minimal" text="&nbsp&nbsp&nbspSell" style="position: absolute;" />
                         
                         
                     </asp:label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:label runat="server">
                             <asp:RadioButton GroupName="radioFlat" runat="server" TabIndex="14" id="radiobtnRentFlat" Cssclass="minimal" text="&nbsp&nbsp&nbspRent" style="position: absolute;" />
                          
                     </asp:label>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                       <!-- /.text box for furnish title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      Condition
                     <asp:textbox class="rating rating5"  placeholder="Furnish" TabIndex="15" runat="server" ID="txtFlatFurnish"></asp:textbox> 
                      <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflatfurnishreq" runat="server" ErrorMessage="Please Rate Your property Condition!" Display="Dynamic" ControlToValidate="txtFlatFurnish"></asp:RequiredFieldValidator>            
                      <%--<asp:TextBox class="rating rating5" style="float:left" runat="server" ></asp:TextBox>--%>
             
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      <asp:textbox Cssclass="form-control"  TabIndex="17" placeholder="Please Enter The Name Of Appartment" runat="server" ID="txtAppartmentName"></asp:textbox>
                <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflataptnamereq" runat="server" ErrorMessage="Please Enter Appartment Name!" Display="Dynamic" ControlToValidate="txtAppartmentName"></asp:RequiredFieldValidator>            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                     <asp:textbox Cssclass="form-control" TabIndex="18" placeholder="Please Enter The Block" runat="server" ID="txtBlock"></asp:textbox>
      <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflatblockreq" runat="server" ErrorMessage="Please Enter a Block!" Display="Dynamic" ControlToValidate="txtBlock"></asp:RequiredFieldValidator>            

                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    <asp:textbox Cssclass="form-control" MaxLength="2" placeholder="Please Enter The Floor" TabIndex="19" runat="server" ID="txtFlatFloor"></asp:textbox> 
                      <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflatfloorreq" runat="server" ErrorMessage="Please Enter Appartment Floor!" Display="Dynamic" ControlToValidate="txtFlatFloor"></asp:RequiredFieldValidator>            
                      <asp:RegularExpressionValidator ValidationGroup="flat" ID="vldflatfloorregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtFlatFloor" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
             
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <!-- /.text box for Property title -->
          

                <!-- /.text box for Property title -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                     <asp:textbox MaxLength="2" Cssclass="form-control"  placeholder="Please Enter The Number of Rooms" TabIndex="20" runat="server" ID="txtFlatNumberOfRooms"></asp:textbox> 
         <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflatroomsreq" runat="server" ErrorMessage="Please Enter Number of Rooms!" Display="Dynamic" ControlToValidate="txtFlatNumberOfRooms"></asp:RequiredFieldValidator>            
                      <asp:RegularExpressionValidator ValidationGroup="flat" ID="vldflatroomsregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtFlatNumberOfRooms" ErrorMessage="Please Enter Only Number"></asp:RegularExpressionValidator>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                           <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >

                    <asp:textbox Cssclass="form-control"  placeholder="Please Enter The Price For Flat" runat="server" MaxLength="18" TabIndex="21" ID="txtPriceFlat"></asp:textbox> 
         <asp:RequiredFieldValidator ValidationGroup="flat" Style="width:100% " CssClass="text-red" ID="vldflatpricereq" runat="server" ErrorMessage="Please Enter The Price For Flat!" Display="Dynamic" ControlToValidate="txtPriceFlat"></asp:RequiredFieldValidator>                   
                      <asp:RegularExpressionValidator ValidationGroup="flat" ID="vldflatpriceregex" CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="^\d+$" ControlToValidate="txtPriceFlat" ErrorMessage="Please Enter The Price For Flat"></asp:RegularExpressionValidator>

                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>   
                
            
              <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
             <asp:textbox Cssclass="form-control" rows="3" style="resize:none; height:75px" TextMode="MultiLine" placeholder="Please Enter Description For House" runat="server" TabIndex="22" ID="txtareaDescriptionFlat"></asp:textbox>
                       
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


              <div class="box-body" id="flatdiv1" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      
                    <%--<asp:FileUpload runat="server" ID="FileUpload1" OnUploadedComplete="FileUpload1_UploadedComplete"></asp:FileUpload>--%>
                      <ajaxToolkit:AsyncFileUpload runat="server" ID="FlatFileUpload1" OnUploadedComplete="FlatFileUpload_UploadedComplete" TabIndex="23" OnClientUploadComplete="showFlatdiv2"></ajaxToolkit:AsyncFileUpload>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                         
              
              <div class="box-body" id="flatdiv2" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                      <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload2"   runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" TabIndex="24" OnClientUploadComplete="showFlatdiv3" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload2" OnLoad="ImageUpload2_Load" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>
                      

                <div class="box-body" id="flatdiv3" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           
                      <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload3" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" TabIndex="25" OnClientUploadComplete="showFlatdiv4" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload3" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="flatdiv4" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload4" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" TabIndex="26" OnClientUploadComplete="showFlatdiv5"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload4" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="flatdiv5" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
             <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload5" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" TabIndex="27" OnClientUploadComplete="showFlatdiv6"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload5" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="flatdiv6" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload6" MaximumnumberOfFiles="1" TabIndex="28"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" OnClientUploadComplete="showFlatdiv7"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload6" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="flatdiv77" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload ID="FlatFileUpload7" TabIndex="29" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete" OnClientUploadComplete="showFlatdiv8" />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload7" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>

                <div class="box-body" id="flatdiv8" style="display:none" runat="server">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
           <ajaxToolkit:AsyncFileUpload TabIndex="30" ID="FlatFileUpload8" MaximumnumberOfFiles="1"  runat="server" OnUploadedComplete="FlatFileUpload_UploadedComplete"  />
                      <%--<asp:FileUpload runat="server" ID="ImageUpload8" ></asp:FileUpload>--%>
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
            </div>


            
        <div class="box-body">
              <div class="row">
                <div class="col-md-6" style="margin-left:23%;" >
                  <div class="form-group" >
                    
            
                      <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
                  </div><!-- /.form-group -->
              <!-- /.form-group -->
                </div><!-- /.col -->
                <!-- /.col -->
              </div><!-- /.row -->
              <asp:button runat="server" ValidationGroup="flat" id="btnSubmitFlat" TabIndex="31" Cssclass="btn btn-primary" style="float:right;" Text="Submit" OnClick="btnSubmitFlat_Click" />    
        
        </div>
            

          </div><!-- /.box -->
                    </label>
                    </ContentTemplate>
                <Triggers>
                              <asp:AsyncPostBackTrigger ControlID="ddPropertyType" EventName="SelectedIndexChanged" />
                          </Triggers>
                    </asp:UpdatePanel>


        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      

          <!-- Main content -->
        

          
       

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li class="active"><a href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i class="fa fa-wrench"></i></a></li><li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
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
            </ul><!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Tasks Progress</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Update Resume
                    <span class="label label-success pull-right">95%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Laravel Integration
                    <span class="label label-warning pull-right">50%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript::;">
                  <h4 class="control-sidebar-subheading">
                    Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                  </h4>
                  <div class="progress progress-xxs">
                    <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

          </div><div id="control-sidebar-theme-demo-options-tab" class="tab-pane active"><div><h4 class="control-sidebar-heading">Layout Options</h4><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="fixed" class="pull-right"> Fixed layout</label><p>Activate the fixed layout. You can't use fixed and boxed layouts together</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="layout-boxed" class="pull-right"> Boxed Layout</label><p>Activate the boxed layout</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-layout="sidebar-collapse" class="pull-right"> Toggle Sidebar</label><p>Toggle the left sidebar's state (open or collapse)</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-enable="expandOnHover" class="pull-right"> Sidebar Expand on Hover</label><p>Let the sidebar mini expand on hover</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-controlsidebar="control-sidebar-open" class="pull-right"> Toggle Right Sidebar Slide</label><p>Toggle between slide over content and push content effects</p></div><div class="form-group"><label class="control-sidebar-subheading"><input type="checkbox" data-sidebarskin="toggle" class="pull-right"> Toggle Right Sidebar Skin</label><p>Toggle between dark and light skins for the right sidebar</p></div><h4 class="control-sidebar-heading">Skins</h4><ul class="list-unstyled clearfix"><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Blue</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Black</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Purple</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Green</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Red</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin">Yellow</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-blue-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span class="bg-light-blue" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Blue Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-black-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div style="box-shadow: 0 0 2px rgba(0,0,0,0.1)" class="clearfix"><span style="display:block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span style="display:block; width: 80%; float: left; height: 7px; background: #fefefe;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Black Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-purple-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-purple-active"></span><span class="bg-purple" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Purple Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-green-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-green-active"></span><span class="bg-green" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Green Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-red-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-red-active"></span><span class="bg-red" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px">Red Light</p></li><li style="float:left; width: 33.33333%; padding: 5px;"><a href="javascript:void(0);" data-skin="skin-yellow-light" style="display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)" class="clearfix full-opacity-hover"><div><span style="display:block; width: 20%; float: left; height: 7px;" class="bg-yellow-active"></span><span class="bg-yellow" style="display:block; width: 80%; float: left; height: 7px;"></span></div><div><span style="display:block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span style="display:block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span></div></a><p class="text-center no-margin" style="font-size: 12px;">Yellow Light</p></li></ul></div></div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">


              <%--<span class="select2 select2-container select2-container--default select2-container--below" dir="ltr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-scbb-container"><span class="select2-selection__rendered" id="select2-scbb-container" title="Alabama">Alabama</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>


            <div>
              <h3 class="control-sidebar-heading">General Settings</h3>
              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Report panel usage
                  <input type="checkbox" class="pull-right" checked="">
                </label>
                <p>
                  Some information about this general settings option
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Allow mail redirect
                  <input type="checkbox" class="pull-right" checked="">
                </label>
                <p>
                  Other sets of options are available
                </p>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Expose author name in posts
                  <input type="checkbox" class="pull-right" checked="">
                </label>
                <p>
                  Allow the user to show his name in blog posts
                </p>
              </div><!-- /.form-group -->

              <h3 class="control-sidebar-heading">Chat Settings</h3>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Show me as online
                  <input type="checkbox" class="pull-right" checked="">
                </label>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Turn off notifications
                  <input type="checkbox" class="pull-right">
                </label>
              </div><!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Delete chat history
                  <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                </label>
              </div><!-- /.form-group -->
           </div>
          </div><!-- /.tab-pane -->
        </div>
      </aside><!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- Select2 -->
    <script src="../../plugins/select2/select2.full.min.js"></script>
    <!-- InputMask -->
    <script src="../../plugins/input-mask/jquery.inputmask.js"></script>
    <script src="../../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="../../plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- date-range-picker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="../../plugins/daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap color picker -->
    <script src="../../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <!-- bootstrap time picker -->
    <script src="../../plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <!-- FastClick -->
    <script src="../../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
          <script type="text/javascript" src="/plugins/rating/rating.js"></script>
          <script>
              function showdiv2() {
                  document.getElementById('divImage2').style.display = 'block';
              }
              function showdiv3() {
                  document.getElementById('divImage3').style.display = 'block';
              }
              function showdiv4() {
                  document.getElementById('divImage4').style.display = 'block';
              }
              function showdiv5() {
                  document.getElementById('divImage5').style.display = 'block';
              }
              function showdiv6() {
                  document.getElementById('divImage6').style.display = 'block';
              }
              function showdiv7() {
                  document.getElementById('divImage7').style.display = 'block';
              }
              function showdiv8() {
                  document.getElementById('divImage8').style.display = 'block';
              }
              function showHousediv2() {
                  document.getElementById('housediv2').style.display = 'block';
              }
              function showHousediv3() {
                  document.getElementById('housediv3').style.display = 'block';
              }
              function showHousediv4() {
                  document.getElementById('housediv4').style.display = 'block';
              }
              function showHousediv5() {
                  document.getElementById('housediv5').style.display = 'block';
              }
              function showHousediv6() {
                  document.getElementById('housediv6').style.display = 'block';
              }
              function showHousediv7() {
                  document.getElementById('housediv7').style.display = 'block';
              }
              function showHousediv8() {
                  document.getElementById('housediv8').style.display = 'block';
              }
              function showFlatdiv2() {
                  document.getElementById('flatdiv2').style.display = 'block';
              }
              function showFlatdiv3() {
                  document.getElementById('flatdiv3').style.display = 'block';
              }
              function showFlatdiv4() {
                  document.getElementById('flatdiv4').style.display = 'block';
              }
              function showFlatdiv5() {
                  document.getElementById('flatdiv5').style.display = 'block';
              }
              function showFlatdiv6() {
                  document.getElementById('flatdiv6').style.display = 'block';
              }
              function showFlatdiv7() {
                  document.getElementById('flatdiv7').style.display = 'block';
              }
              function showFlatdiv8() {
                  document.getElementById('flatdiv8').style.display = 'block';
              }
              </script>
    <!-- Page script -->
          <script>
              function Click1() {
                  $('myupload').trigger('click');
              }
              </script>
    <script>
        $(function () {
            //Initialize Select2 Elements
            $(".select2").select2();
            $('.rating').rating();
            //Datemask dd/mm/yyyy
            $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
            //Datemask2 mm/dd/yyyy
            $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
            //Money Euro
            $("[data-mask]").inputmask();

            //Date range picker
            $('#reservation').daterangepicker();
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                {
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
            );

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal-blue',
                radioClass: 'iradio_minimal-blue'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            });

            //Colorpicker
            $(".my-colorpicker1").colorpicker();
            //color picker with addon
            $(".my-colorpicker2").colorpicker();

            //Timepicker
            $(".timepicker").timepicker({
                showInputs: false
            });
        });
    </script>
<script type="text/javascript">

    function pageLoad() {
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        $(".select2").select2();
        $('.rating').rating();
    }

</script>  

<div class="daterangepicker dropdown-menu show-calendar opensleft" style="top: 491px; right: 25.5px; left: auto;"><div class="calendar first left"><div class="calendar-date"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i></th><th colspan="5" class="month">Dec 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="available off" data-title="r0c0">29</td><td class="available off" data-title="r0c1">30</td><td class="available" data-title="r0c2">1</td><td class="available" data-title="r0c3">2</td><td class="available" data-title="r0c4">3</td><td class="available" data-title="r0c5">4</td><td class="available active start-date end-date" data-title="r0c6">5</td></tr><tr><td class="available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="available" data-title="r1c6">12</td></tr><tr><td class="available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="available" data-title="r2c6">19</td></tr><tr><td class="available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="available" data-title="r3c6">26</td></tr><tr><td class="available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="available" data-title="r4c4">31</td><td class="available off" data-title="r4c5">1</td><td class="available off" data-title="r4c6">2</td></tr><tr><td class="available off" data-title="r5c0">3</td><td class="available off" data-title="r5c1">4</td><td class="available off" data-title="r5c2">5</td><td class="available off" data-title="r5c3">6</td><td class="available off" data-title="r5c4">7</td><td class="available off" data-title="r5c5">8</td><td class="available off" data-title="r5c6">9</td></tr></tbody></table></div></div><div class="calendar second right"><div class="calendar-date"><table class="table-condensed"><thead><tr><th></th><th colspan="5" class="month">Dec 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="off disabled" data-title="r0c0">29</td><td class="off disabled" data-title="r0c1">30</td><td class="off disabled" data-title="r0c2">1</td><td class="off disabled" data-title="r0c3">2</td><td class="off disabled" data-title="r0c4">3</td><td class="off disabled" data-title="r0c5">4</td><td class="available active start-date end-date" data-title="r0c6">5</td></tr><tr><td class="available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="available" data-title="r1c6">12</td></tr><tr><td class="available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="available" data-title="r2c6">19</td></tr><tr><td class="available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="available" data-title="r3c6">26</td></tr><tr><td class="available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="available" data-title="r4c4">31</td><td class="available off" data-title="r4c5">1</td><td class="available off" data-title="r4c6">2</td></tr><tr><td class="available off" data-title="r5c0">3</td><td class="available off" data-title="r5c1">4</td><td class="available off" data-title="r5c2">5</td><td class="available off" data-title="r5c3">6</td><td class="available off" data-title="r5c4">7</td><td class="available off" data-title="r5c5">8</td><td class="available off" data-title="r5c6">9</td></tr></tbody></table></div></div><div class="ranges"><div class="range_inputs"><div class="daterangepicker_start_input"><label for="daterangepicker_start">From</label><input class="input-mini" type="text" name="daterangepicker_start" value=""></div><div class="daterangepicker_end_input"><label for="daterangepicker_end">To</label><input class="input-mini" type="text" name="daterangepicker_end" value=""></div><button class="applyBtn btn btn-small btn-sm btn-success">Apply</button>&nbsp;<button class="cancelBtn btn btn-small btn-sm btn-default">Cancel</button></div></div></div><div class="daterangepicker dropdown-menu show-calendar opensleft" style="top: 565px; right: 25.5px; left: auto;"><div class="calendar first left"><div class="calendar-date"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i></th><th colspan="5" class="month">Dec 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="available off" data-title="r0c0">29</td><td class="available off" data-title="r0c1">30</td><td class="available" data-title="r0c2">1</td><td class="available" data-title="r0c3">2</td><td class="available" data-title="r0c4">3</td><td class="available" data-title="r0c5">4</td><td class="available active start-date end-date" data-title="r0c6">5</td></tr><tr><td class="available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="available" data-title="r1c6">12</td></tr><tr><td class="available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="available" data-title="r2c6">19</td></tr><tr><td class="available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="available" data-title="r3c6">26</td></tr><tr><td class="available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="available" data-title="r4c4">31</td><td class="available off" data-title="r4c5">1</td><td class="available off" data-title="r4c6">2</td></tr><tr><td class="available off" data-title="r5c0">3</td><td class="available off" data-title="r5c1">4</td><td class="available off" data-title="r5c2">5</td><td class="available off" data-title="r5c3">6</td><td class="available off" data-title="r5c4">7</td><td class="available off" data-title="r5c5">8</td><td class="available off" data-title="r5c6">9</td></tr></tbody></table></div><div class="calendar-time"><select class="hourselect"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12" selected="selected">12</option></select> : <select class="minuteselect"><option value="0" selected="selected">00</option><option value="30">30</option></select> <select class="ampmselect"><option value="AM" selected="selected">AM</option><option value="PM">PM</option></select></div></div><div class="calendar second right"><div class="calendar-date"><table class="table-condensed"><thead><tr><th></th><th colspan="5" class="month">Dec 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="off disabled" data-title="r0c0">29</td><td class="off disabled" data-title="r0c1">30</td><td class="off disabled" data-title="r0c2">1</td><td class="off disabled" data-title="r0c3">2</td><td class="off disabled" data-title="r0c4">3</td><td class="off disabled" data-title="r0c5">4</td><td class="available active start-date end-date" data-title="r0c6">5</td></tr><tr><td class="available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="available" data-title="r1c6">12</td></tr><tr><td class="available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="available" data-title="r2c6">19</td></tr><tr><td class="available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="available" data-title="r3c6">26</td></tr><tr><td class="available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="available" data-title="r4c4">31</td><td class="available off" data-title="r4c5">1</td><td class="available off" data-title="r4c6">2</td></tr><tr><td class="available off" data-title="r5c0">3</td><td class="available off" data-title="r5c1">4</td><td class="available off" data-title="r5c2">5</td><td class="available off" data-title="r5c3">6</td><td class="available off" data-title="r5c4">7</td><td class="available off" data-title="r5c5">8</td><td class="available off" data-title="r5c6">9</td></tr></tbody></table></div><div class="calendar-time"><select class="hourselect"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11" selected="selected">11</option><option value="12">12</option></select> : <select class="minuteselect"><option value="0">00</option><option value="30">30</option></select> <select class="ampmselect"><option value="AM">AM</option><option value="PM" selected="selected">PM</option></select></div></div><div class="ranges"><div class="range_inputs"><div class="daterangepicker_start_input"><label for="daterangepicker_start">From</label><input class="input-mini" type="text" name="daterangepicker_start" value=""></div><div class="daterangepicker_end_input"><label for="daterangepicker_end">To</label><input class="input-mini" type="text" name="daterangepicker_end" value=""></div><button class="applyBtn btn btn-small btn-sm btn-success">Apply</button>&nbsp;<button class="cancelBtn btn btn-small btn-sm btn-default">Cancel</button></div></div></div><div class="daterangepicker dropdown-menu opensleft"><div class="calendar first left"><div class="calendar-date"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i></th><th colspan="5" class="month">Nov 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="available off" data-title="r0c0">25</td><td class="available off" data-title="r0c1">26</td><td class="available off" data-title="r0c2">27</td><td class="available off" data-title="r0c3">28</td><td class="available off" data-title="r0c4">29</td><td class="available off" data-title="r0c5">30</td><td class="available off" data-title="r0c6">31</td></tr><tr><td class="available" data-title="r1c0">1</td><td class="available" data-title="r1c1">2</td><td class="available" data-title="r1c2">3</td><td class="available" data-title="r1c3">4</td><td class="available" data-title="r1c4">5</td><td class="available active start-date" data-title="r1c5">6</td><td class="available in-range" data-title="r1c6">7</td></tr><tr><td class="available in-range" data-title="r2c0">8</td><td class="available in-range" data-title="r2c1">9</td><td class="available in-range" data-title="r2c2">10</td><td class="available in-range" data-title="r2c3">11</td><td class="available in-range" data-title="r2c4">12</td><td class="available in-range" data-title="r2c5">13</td><td class="available in-range" data-title="r2c6">14</td></tr><tr><td class="available in-range" data-title="r3c0">15</td><td class="available in-range" data-title="r3c1">16</td><td class="available in-range" data-title="r3c2">17</td><td class="available in-range" data-title="r3c3">18</td><td class="available in-range" data-title="r3c4">19</td><td class="available in-range" data-title="r3c5">20</td><td class="available in-range" data-title="r3c6">21</td></tr><tr><td class="available in-range" data-title="r4c0">22</td><td class="available in-range" data-title="r4c1">23</td><td class="available in-range" data-title="r4c2">24</td><td class="available in-range" data-title="r4c3">25</td><td class="available in-range" data-title="r4c4">26</td><td class="available in-range" data-title="r4c5">27</td><td class="available in-range" data-title="r4c6">28</td></tr><tr><td class="available in-range" data-title="r5c0">29</td><td class="available in-range" data-title="r5c1">30</td><td class="available off in-range" data-title="r5c2">1</td><td class="available off in-range" data-title="r5c3">2</td><td class="available off in-range" data-title="r5c4">3</td><td class="available off in-range" data-title="r5c5">4</td><td class="available off in-range" data-title="r5c6">5</td></tr></tbody></table></div></div><div class="calendar second right"><div class="calendar-date"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i></th><th colspan="5" class="month">Dec 2015</th><th class="next available"><i class="fa fa-arrow-right icon icon-arrow-right glyphicon glyphicon-arrow-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="available off in-range" data-title="r0c0">29</td><td class="available off in-range" data-title="r0c1">30</td><td class="available in-range" data-title="r0c2">1</td><td class="available in-range" data-title="r0c3">2</td><td class="available in-range" data-title="r0c4">3</td><td class="available in-range" data-title="r0c5">4</td><td class="available active end-date" data-title="r0c6">5</td></tr><tr><td class="available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="available" data-title="r1c6">12</td></tr><tr><td class="available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="available" data-title="r2c6">19</td></tr><tr><td class="available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="available" data-title="r3c6">26</td></tr><tr><td class="available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="available" data-title="r4c4">31</td><td class="available off" data-title="r4c5">1</td><td class="available off" data-title="r4c6">2</td></tr><tr><td class="available off" data-title="r5c0">3</td><td class="available off" data-title="r5c1">4</td><td class="available off" data-title="r5c2">5</td><td class="available off" data-title="r5c3">6</td><td class="available off" data-title="r5c4">7</td><td class="available off" data-title="r5c5">8</td><td class="available off" data-title="r5c6">9</td></tr></tbody></table></div></div><div class="ranges"><ul><li>Today</li><li>Yesterday</li><li>Last 7 Days</li><li class="active">Last 30 Days</li><li>This Month</li><li>Last Month</li><li>Custom Range</li></ul><div class="range_inputs"><div class="daterangepicker_start_input"><label for="daterangepicker_start">From</label><input class="input-mini" type="text" name="daterangepicker_start" value=""></div><div class="daterangepicker_end_input"><label for="daterangepicker_end">To</label><input class="input-mini" type="text" name="daterangepicker_end" value=""></div><button class="applyBtn btn btn-small btn-sm btn-success">Apply</button>&nbsp;<button class="cancelBtn btn btn-small btn-sm btn-default">Cancel</button></div></div></div><div class="colorpicker dropdown-menu colorpicker-hidden"><div class="colorpicker-saturation" style="background-color: rgb(255, 0, 0);"><i style="top: 100px; left: 0px;"><b></b></i></div><div class="colorpicker-hue"><i style="top: 100px;"></i></div><div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i style="top: 0px;"></i></div><div class="colorpicker-color" style="background-color: rgb(0, 0, 0);"><div style="background-color: rgb(0, 0, 0);"></div></div></div><div class="colorpicker dropdown-menu colorpicker-hidden"><div class="colorpicker-saturation" style="background-color: rgb(255, 0, 0);"><i style="top: 100px; left: 0px;"><b></b></i></div><div class="colorpicker-hue"><i style="top: 100px;"></i></div><div class="colorpicker-alpha" style="background-color: rgb(0, 0, 0);"><i style="top: 0px;"></i></div><div class="colorpicker-color" style="background-color: rgb(0, 0, 0);"><div style="background-color: rgb(0, 0, 0);"></div></div></div></form></body></html>