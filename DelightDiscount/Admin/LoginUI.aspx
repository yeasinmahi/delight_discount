<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUI.aspx.cs" Inherits="DelightDiscount.Admin.LoginUI" %>

<html lang="en">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Delight Discount</title>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body style="background-image: url('../images/Background-4.jpg'); width: 99vw; height: 100vh; background-repeat: no-repeat; -ms-background-size: cover; background-size: cover;overflow: hidden">
    <form runat="server" style="width: 100vw; height: 100vh; ">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Delight Discount</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <section id="loginForm">
                    <div class="form-horizontal">
                        <div class="form-group col-sm-12">
                            <div class="row text-center" style="width: 400px; margin: 0 auto; margin-top: 15%; background: rgba(255,255,255,.6); border-radius: 25px 0;">
                                <div class="col-lg-12">
                                    <h3>Welcome to Delight Discount.</h3>
                                </div>
                                <div class="col-sm-12">
                                    <div style="width: 280px; margin: 0 auto; padding: 20px 0;">
                                        <div style="height: 40px;">
                                            <asp:TextBox runat="server" ID="UserName" Placeholder="UserName" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                                        </div>
                                        <div style="height: 40px;">
                                            <asp:TextBox runat="server" ID="Password" Placeholder="Password" TextMode="Password" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                                        </div>
                                        <div style="margin: 10px 0;">
                                            <asp:Button runat="server" OnClick="OnClick" Text="Log in" CssClass="btn btn-primary form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-sm-12">
                            <div class="col-sm-12 control-label" runat="server" id="successMessage"></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </form>
</body>
</html>