<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IncomeWithdrawSheet.aspx.cs" Inherits="DelightDiscount.Admin.IncomeWithdrawSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Content/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/animate.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/custom.min.css" rel="stylesheet" />
    <link href="../Content/nprogress.css" rel="stylesheet" />
    <script src="../Scripts/jquery.min.js"></script>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px; text-align: center">
            <div class="panel-heading">
                Income/Withdraw Statement
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-sm-12" style="margin-bottom: 5px">
                            <div class="col-sm-4">
                                <label>CID<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="cidText" />
                            </div>
                            <div class="col-sm-4"><br/>
                                <asp:Button ID="showButton" runat="server" class="btn btn-info" Text="Statement of CID" OnClick="showButton_Click" />
                            </div>
                            <div class="col-sm-4"><br/>
                                <asp:Button ID="oppositeCidButton" runat="server" class="btn btn-warning" Text="Income Againest a CID" OnClick="oppositeCidButton_Click" />
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div style="border: 1px solid #ededed; padding: 5px; height: 560px; overflow-y: auto;">
                                <div class="col-lg-12">
                                    <%--OnSelectedIndexChanged="itemGridView_SelectedIndexChanged" OnRowDataBound="ItemOnRowDataBound"--%>
                                    <asp:GridView ID="userAccountGridView" runat="server" UseAccessibleHeader="true"
                                        CssClass="table-hover table-striped table table-bordered" GridLines="None"
                                        AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:TemplateField HeaderText="SL">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="CID">
                                                <ItemTemplate>
                                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("CID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("DatDate","{0:dd-MMM-yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("TypeName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Opposite CID">
                                                <ItemTemplate>
                                                    <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("TranCID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Amount">
                                                <ItemTemplate>
                                                    <asp:Label ID="refCidLabel" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           
                                        </Columns>
                                        <HeaderStyle CssClass="GridviewScrollHeader" />
                                        <RowStyle CssClass="GridviewScrollItem" />
                                        <PagerStyle CssClass="GridviewScrollPager" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
