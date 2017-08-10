<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="BalanceTransfer.aspx.cs" Inherits="DelightDiscount.BalanceTransfer" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="col-sm-8 col-sm-offset-2">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                <h3>Balance Transfer</h3>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-4">
                                    <h4>Active Balance:</h4>
                                </div>

                                <div class="col-sm-4">
                                    <label class="form-control" id="activeBalanceTextBox" runat="server"></label>
                                    <%--                                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-control "></asp:Label>
                                    <asp:TextBox runat="server" ID="activeBalanceTextBox" CssClass="form-control input-sm " />--%>
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
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8"></div>
                                <div class="col-sm-4">
                                    <asp:Button ID="confirmButton" runat="server" Text="Confirm" CssClass="btn btn-round" OnClick="confirmButton_Click" />
                                </div>


                            </div>
                            <div class="col-sm-12">
                                <br />
                                <asp:Literal ID="balanceTransferLiteral" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div style="border: 1px solid #ededed; padding: 5px;height:225px; width:100%; overflow:auto;">
                                <asp:GridView ID="transferHistoryGridView" runat="server" CellPadding="2" AutoGenerateColumns="False"
                                    CssClass="table table-striped table-bordered table-hover"
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
                                        <asp:TemplateField HeaderText="Date" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("TransferDate","{0:dd-MMM-yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status" Visible="True">
                                            <ItemTemplate>
                                                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
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
