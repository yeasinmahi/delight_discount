<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DelightDiscount.Profile" %>

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
        <div class="container-fluid text-center" style="width: 960px; margin: 0 auto; margin-top: 20px; background: #ffffff; background: rgba(255, 255, 255, 0.8); border-radius: 10px;">
            <div class="form-group">
                <div class="">
                    <form action="" id="personal" class="loginPannel form-group">
                        <div class="title text-primary">Personal Information</div>
                        <ul class="list-group">
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-12" style="text-align: left;">
                                        <asp:Image ID="userImage" runat="server" Width="150px" Height="150px"/>

                                    </div>
                                    
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>User Name:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="userNameLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Name:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="fullNameLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Present Address:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="presentAddressLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Permanent Address:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="permanentAddressLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Email:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="emailLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Mobile:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="mobileLabel"></label>
                                    </div>
                                </div>
                            </li>
                            

                        </ul>
                    </form>
                    <form action="" id="nominee" class="loginPannel form-group">
                        <div class="title text-primary">Nominee Information</div>
                        <ul class="list-group">
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Name Of Nominee:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="nomineeLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Relation:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="relationLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Phone:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="nomineePhoneLabel"></label>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </form>
                    <form action="" id="business" class="loginPannel form-group">
                        <div class="title text-primary">Business Information</div>
                        <ul class="list-group">
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Total Sponsor:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="sponsorLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Business Level:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="businessLevelLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Transfer Balance:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="traBalanceLabel"></label>
                                    </div>
                                </div>
                            </li>
                            <li class="form-group list-group-item">
                                <div class="row">
                                    <div class="col-lg-4" style="text-align: right;">
                                        <label>Active Balance:</label>
                                    </div>
                                    <div class="col-lg-8" style="text-align: left;">
                                        <label runat="server" id="activeBalanceLabel"></label>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
