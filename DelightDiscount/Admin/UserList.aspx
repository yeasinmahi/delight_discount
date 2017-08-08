<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="DelightDiscount.Admin.UserList" %>

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
                Registered User List
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-sm-12">
                            <div style="border: 1px solid #ededed; padding: 5px; height: 560px">
                                <div class="col-lg-12">
                                    <%--OnSelectedIndexChanged="itemGridView_SelectedIndexChanged" OnRowDataBound="ItemOnRowDataBound"--%>
                                    <asp:GridView ID="userGridView" runat="server" UseAccessibleHeader="true"
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
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("FullName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("EmailAddress") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Mobile">
                                                <ItemTemplate>
                                                    <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Reference CID">
                                                <ItemTemplate>
                                                    <asp:Label ID="refCidLabel" runat="server" Text='<%# Eval("ReferenceCid") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Password">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control input-sm" Text='<%# Eval("Password") %>'></asp:TextBox>

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
                        <div class="col-lg-2">
                            <asp:Button ID="saveButton" runat="server" class="btn btn-success" Text="Save" OnClick="saveButton_Click" />
                        </div>
                        <div class="col-lg-10" style="text-align: left">
                            <asp:Literal ID="userLiteral" runat="server" Text="_"> </asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
