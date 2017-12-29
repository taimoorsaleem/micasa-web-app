<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MiCasa_Final_Project.Register" EnableEventValidation="false" %>

<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Casa | Registration </title>
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
    <!--[if lt IE 9]>-->
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!--[endif]-->
  </head>
  <body class="hold-transition register-page fixed" style="margin-top:-4%">
      <form runat="server">
    <div class="register-box">
      <div class="register-logo">
        <img src="../../dist/img/MiCasa_Logo_Final_Transparent.png" style="width:360px">
      </div>

      <div class="register-box-body">
        <p class="login-box-msg">Register a new membership</p>
        <%-- <form action="../../index.html" method="post"> --%>
          <div class="form-group has-feedback">
            <asp:TextBox CssClass="form-control" placeholder="Full name" runat="server" ID="txtName"></asp:TextBox>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter a Name!" Display="Dynamic" ControlToValidate="txtName"></asp:RequiredFieldValidator>    
                      <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" Style="width:100% "  CssClass="text-red" runat="server" Display="Dynamic" ValidationExpression="/^([a-zA-Z]+\s)*[a-zA-Z]+$/" ControlToValidate="txtName" ErrorMessage="Please Enter a Valid Name!"></asp:RegularExpressionValidator>--%>

            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <asp:TextBox CssClass="form-control" placeholder="Email" runat="server" ID="txtEmail"></asp:TextBox>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter an Email!" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>    
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Style="width:100%"  CssClass="text-red" runat="server" Display="Dynamic" ControlToValidate="txtEmail" ErrorMessage="Please Enter Only Number!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <asp:TextBox type="password" CssClass="form-control" placeholder="Password" runat="server" ID="txtPassword"></asp:TextBox>  <%--^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{6,20}$"--%>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter a Password!" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>    
                <asp:RegularExpressionValidator ControlToValidate="txtPassword" CssClass="text-red" Style="width:100%"  ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Please Enter the Valid Password" ValidationExpression="^[a-zA-Z]\w{6,50}$"></asp:RegularExpressionValidator>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            
            <asp:TextBox type="password" class="form-control" placeholder="Retype password" runat="server" ID="txtRePassword"></asp:TextBox>
              <asp:RequiredFieldValidator Style="width:100% " CssClass="text-red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Re-Enter the Password!" Display="Dynamic" ControlToValidate="txtRePassword"></asp:RequiredFieldValidator>    
              <asp:CompareValidator ID="CompareValidator1" CssClass="text-red" Style="width:100%" runat="server" ErrorMessage="Passwords do not Match" Display="Dynamic" ControlToValidate="txtPassword" ControlToCompare="txtRePassword"></asp:CompareValidator>
              <%--<asp:RegularExpressionValidator ControlToValidate="txtPassword" CssClass="text-red" Style="width:100%"  ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Please Enter the Valid Password" ValidationExpression="^[a-zA-Z]\w{6,14}$"></asp:RegularExpressionValidator>--%>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <asp:Button  CssClass="btn btn-primary btn-block btn-flat" runat="server" Text="Register" ID="btnRegister" OnClick="btnRegister_Click"></asp:Button>
            </div><!-- /.col -->
          </div>
        <%--</form>--%>

        <div class="social-auth-links text-center">
          
          
          
        </div>

        <a href="login.aspx" class="text-center">I already have a membership</a>
      </div><!-- /.form-box -->
    </div><!-- /.register-box -->

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
  


<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"4adfb412afff4044b39bfee9af8f905c"}
</script>
<script type="text/javascript" src="http://localhost:53856/4ad313fa55f846fd8b49f66edaa7c7b8/browserLink" async="async"></script>
<!-- End Browser Link -->
          </form>
</body></html>