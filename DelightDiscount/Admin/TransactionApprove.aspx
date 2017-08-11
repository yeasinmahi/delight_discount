<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TransactionApprove.aspx.cs" Inherits="DelightDiscount.Admin.TransactionApprove" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                <h4>Transaction Approve</h4>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <%--<div class="col-sm-12">--%>
                           <%-- <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>Active Balance:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <label class="form-control" id="activeBalanceTextBox" runat="server"></label>
                                   </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>Transfer Amount:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="transferAmountTextBox" CssClass="form-control input-sm " />
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
                            </div>--%>
                            <%--<div class="form-group">
                                <div class="col-sm-8"></div>
                                <div class="col-sm-4">
                                    <asp:Button ID="confirmButton" runat="server" Text="Confirm" CssClass="btn btn-round" OnClick="confirmButton_Click" />
                                </div>


                            </div>--%>
                           <%-- <div class="col-sm-12">
                                <br />
                                <asp:Literal ID="balanceTransferLiteral" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>--%>
                        <%--</div>--%>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <h4>Transaction Status:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <asp:DropDownList ID="statusDropDownList" CssClass="form-control input-sm" runat="server" OnSelectedIndexChanged="statusDropDownList_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <div class="col-sm-4"></div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div style="border: 1px solid #ededed; padding: 5px;height:480px; width:100%; overflow:auto;">
                                <asp:GridView ID="transferApproveGridView" runat="server" CellPadding="2" AutoGenerateColumns="False"
                                    CssClass="table table-striped table-bordered table-hover" OnRowCommand="transferApproveGridView_RowCommand"
                                    ForeColor="#333333" GridLines="Both" Width="100%"
                                    HorizontalAlign="Center" ShowHeaderWhenEmpty="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL#">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="2%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Transfer ID" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="transferIdLabel" runat="server" Text='<%# Eval("TransferId") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("TransferDate","{0:dd-MMM-yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="CID" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("CID") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnApprove" runat="server" Width="100%" Text="Approve" CssClass="btn btn-warning"
                                                        CommandName="ApproveButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#4286F4" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#4286F4" Font-Bold="True" ForeColor="White" />
                                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
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
