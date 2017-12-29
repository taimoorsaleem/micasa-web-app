<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Splash.aspx.cs" Inherits="MiCasa_Final_Project.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script>
    $(document).ready(function () {
        $("#divLogo").fadeIn(2500);
        $("#divLink").fadeIn(3250);
        
    });

    function fadeout() {
        $("html").fadeOut(1500).delay(1500);
        setTimeout(function () {
            window.location = "login.aspx";
        }, 1500);
        
    };
</script>
    <style>
html { 
  background: url(/dist/img/MiCasa_Background.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.font{
font-family: 'Segoe UI', Helvetica, Arial, sans-serif;
font-size: 1.5em;
color: black
}

.logo-center{
    position: absolute;
    top: 40%;
    left: 50%;
    width: 700px;
    height: 500px;
    margin-top: -250px;
    margin-left: -350px;
}

.link{
    /*background-image:url(Link.png);*/
    text-align:center;
    position: absolute;
    top: 85%;
    left: 50%;
    width: 400px;
    height: 80px;
    margin-top: -15px;
    margin-left: -200px;

}



</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="divLogo" style="display:none" class="logo-center" ><img src="/dist/img/Logo.png"/></div>
    <div id="divLink" style="display:none" class="link" >
        <%--<asp:LinkButton CssClass="font" runat="server" OnClick="Unnamed1_Click" OnClientClick="fadeout()">Click Here To Get Started</asp:LinkButton>--%>
        <%--<a class="font" href="#" onclick="fadeout()">Click Here To Get Started</a>--%>
        <button type="button" class="btn btn-block btn-primary btn-sm font" style="width:350px; height:45px;padding-bottom:5px; color:white; background-color:#222D32; border-color:#222D32" onclick="fadeout()">Click here to get started!</button>

    </div>
    </div>
    </form>
</body>
</html>