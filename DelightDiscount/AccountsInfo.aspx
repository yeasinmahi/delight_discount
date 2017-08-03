<%@ Page Title="Accounts Information" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="AccountsInfo.aspx.cs" Inherits="DelightDiscount.AccountsInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .panel-primary > .panel-heading {
            color: #ffffff;
            background-color: #4CAF50;
            border-color: #4CAF50;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                Accounts Information
            </div>
            <div class="panel-body">
                <div class="form-horizontal">

                    <div class="row">
                        <div class=" col-sm-4" style="border: 10px solid #F2DEDE; padding: 5px; height: 130px; background-color: #DFF0D8;">
                            <div class="col-lg-4">
                                <img src='Images/img.jpg' alt='' style="height: 100px; width: 100px" />
                            </div>
                            <div class="col-lg-8">
                                <div class=" col-sm-12 form-control" style="text-align: left">
                                    <label runat="server" id="cidLabel"></label>
                                </div>
                                <div class=" col-sm-12 form-control" style="text-align: left">
                                    <label runat="server" id="nameLabel"></label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4" style="border: 10px solid #F2DEDE; padding: 5px; height: 130px; background-color: #D9EDF7;">
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Spot Income:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="spotIncomeLabel"></label>
                            </div>
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Level Income:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="levelIncome"></label>
                            </div>
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Auto Income:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="autoLabel"></label>
                            </div>
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Reward Income:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="rewardLabel"></label>
                            </div>
                        </div>
                        <div class=" col-sm-4" style="border: 10px solid #F2DEDE; padding: 5px; height: 130px; background-color: #D9EDF7;">
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Total Income:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="totalIncomeLabel"></label>
                            </div>
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Balance Transfer:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="blanceTransferLabel"></label>
                            </div>
                            <div class=" col-sm-6" style="text-align: right">
                                <label>Current Balance:</label>
                            </div>
                            <div class=" col-sm-6" style="text-align: left">
                                <label runat="server" id="currentBalanceLabel"></label>
                            </div>
                        </div>
                        <div class=" col-sm-12">
                            <div class=" col-sm-12" style="text-align: center;padding: 5px">
                                <%--<label runat="server" id="parentCid"></label>--%>
                                <asp:Button ID="parentCidButton" runat="server" CssClass="btn btn-warning" Text="" OnClick="parentCidButton_Click"/>
                            </div>
                            <div class=" col-sm-1">
                            </div>
                            <div class=" col-sm-1">
                                <%--<label runat="server" id="child1cid"></label>--%>
                                <asp:Button ID="child1cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child1cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child2cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child2cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child3cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child3cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child4cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child4cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child5cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child5cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child6cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child6cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child7cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child7cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child8cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child8cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                <asp:Button ID="child9cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child9cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                
                                <asp:Button ID="child10cid" runat="server" CssClass="btn btn-info" Text="" OnClick="child10cid_Click" />
                            </div>
                            <div class=" col-sm-1">
                                
                            </div>
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
