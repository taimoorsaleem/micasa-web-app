<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiCasa_Final_Project.Login" EnableEventValidation="false"%>



<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Casa | Log in</title>
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
    <!-- iCheck -->
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        
    <![endif]-->
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  </head>
    
  <body class="hold-transition login-page fixed" style="margin-top:-2%">
      <form runat="server">
    <div class="login-box">
      <div class="login-logo">
        <img src="../../dist/img/MiCasa_Logo_Final_Transparent.png" style="width:360px">
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <%-- <form action="../../index2.html" method="post"> --%>
          <div class="form-group has-feedback">
              
            <asp:TextBox  CssClass="form-control" placeholder="Email" runat="server" ID="txtEmail"></asp:TextBox>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="vldemail" runat="server" ErrorMessage="Please Enter Email!" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>             
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <asp:TextBox type="password" CssClass="form-control" placeholder="Password" runat="server" ID="txtPassword"></asp:TextBox>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password!" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>             
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <asp:Button CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" runat="server" ID="btnLogin" OnClick="btnLogin_Click"></asp:Button>
            </div><!-- /.col -->
          </div>
        <%--</form>--%>

        

        
        <a href="index.aspx" class="text-center">Continue Un-Registered</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
          </form>
    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
  
          
</body>
    <%--</html>--%>