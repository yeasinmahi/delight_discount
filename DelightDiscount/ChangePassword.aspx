<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="DelightDiscount.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .panel-primary > .panel-heading {
            color: #ffffff;
            background-color: #4CAF50;
            border-color: #4CAF50;
            text-align: center;
        }

        .btn-margin {
            margin-top: 0px;
        }
    </style>
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
        #imgDivC img {
            width: 150px;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="col-sm-8 col-sm-offset-2">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                <h3>Change Password</h3>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>Old Password:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="oldPasswordTextBox" CssClass="form-control input-sm " />
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>New Password:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="newPasswordTextBox" CssClass="form-control input-sm " />
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>Confirm Password:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="passTextBox" CssClass="form-control input-sm " TextMode="Password" />
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8"></div>
                                <div class="col-sm-4">
                                    <asp:Button ID="confirmButton" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="confirmButton_Click" />
                                </div>


                            </div>
                            <div class="col-sm-12">
                                <br />
                                <asp:Literal ID="passwordChangeLiteral" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
