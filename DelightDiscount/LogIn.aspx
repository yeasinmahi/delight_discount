<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="~/FrontSection/LogIn.aspx.cs" Inherits="DelightDiscount.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>LogIn</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style>
        .title {
            font-size: 150%;
            font-weight: bolder;
        }
        body {
            background-image: url(img/ss.jpg);
            background-size: cover;
            height: 100vh;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="container">
        <div class="container-fluid text-center" style="width: 350px; margin: 0 auto; margin-top: 80px; background: #ffffff; background: rgba(255, 255, 255, 0.8); border-radius: 10px;">
            <div class="form-group">
                <div class="">
                    <form id="miniforgot" action="" style="display:none" class="loginPannel form-group">
                        <div class="title text-primary">Enter your e-mail address below and we'll send you an e-mail message containing your new password.</div>
                        <ul class="list-group">
                            <li class="inputbox list-group-item">
                                <input type="email" name="minilogin_username" class="username inputchang form-control" placeholder="Enter your email" required="required" />
                            </li>
                            <li class="submit list-group-item">
                                <input type="submit" class="sendNow_button form-control btn btn-primary" value="Send Now" onclick="findForgottenPwd(this);" />
                            </li>
                            <li class="forgot list-group-item">
                                <a href="javascript:void(0)" class="backToLogin_button" onclick="$('.loginPannel').hide(300);$('#minilogin').show(300);">&laquo; Back to Login</a>
                            </li>
                        </ul>
                    </form>

                    <form id="minireg" action="" style="display:none" class="loginPannel form-group">
                        <div class="title text-primary">Create a New Account</div>
                        <ul class="list-group">
                            <li class="inputbox list-group-item">
                                <input type="text" name="nickname" rule="name" class="inputchang validate form-control" required="required" placeholder="Enter nickname" maxlength="20" />
                            </li>
                            <li class="inputbox list-group-item">
                                <input type="email" name="email" rule="email" class="username inputchang validate form-control" required="required" placeholder="Enter your email" />
                            </li>
                            <li class="inputbox list-group-item">
                                <input type="password" name="password" rule="password" equal="confirm_password" required="required" class="userpwd validate form-control" placeholder="Password" maxlength="20" />
                            </li>
                            <li class="inputbox list-group-item">
                                <input type="password" id="confirm_password" class="userpwd validate form-control" required="required" placeholder="Confirm Password" maxlength="20" />
                            </li>
                            <li class="submit list-group-item">
                                <input type="submit" class="accountCreate_button form-control btn btn-primary" value="Create Your Account" />
                            </li>
                            <li class="forgot list-group-item">
                                <a href="javascript:void(0)" class="middle_backToLogin2_button_20161124" onclick=" $('.loginPannel').hide(300); $('#minilogin').show(300); ">&laquo; Back to Login</a>
                                <span>&nbsp;&nbsp;</span>
                                <a class="middle_forgotPassword2_button_20161124" href="javascript:void(0)" onclick="$('.loginPannel').hide(300); $('#miniforgot').show(300);">Forgot password?</a>
                            </li>
                        </ul>
                    </form>

                    <form action="" id="minilogin" class="loginPannel form-group">
                        <div class="title text-primary">Log in with your Email</div>
                        <ul class="list-group">
                            <li class="inputbox list-group-item">
                                <input type="email" name="email" placeholder="Enter your Email." rule="email" class="username validate form-control" value="" required="required" style="color:#333333;" />
                            </li>
                            <li class="inputbox list-group-item">
                                <input type="password" name="pwd" placeholder="Enter password." class="userpwd validate form-control" required="required" value="" />
                                <input type="hidden" name="at" value="58695fb92eb88" />
                            </li>
                            <li class="submit list-group-item">
                                <input class="signInButton form-control btn btn-primary" type="submit" value="Sign in" />
                            </li>
                            <li class="forgot list-group-item">
                                <a href="javascript:void(0)" class="forgotPassword" onclick=" $('.loginPannel').hide(300);$('#miniforgot').show(300); ">Forgot password?</a>
                                <span>&nbsp;&nbsp;</span>
                                <a class="register_button" href="javascript:void(0)" onclick="$('.loginPannel').hide(300);$('#minireg').show(300);">Register</a>
                            </li>
                        </ul>
                    </form>
                </div>

            </div>
        </div>

                    
    </div>
</asp:Content>
