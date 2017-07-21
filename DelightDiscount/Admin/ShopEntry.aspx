<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopEntry.aspx.cs" Inherits="DelightDiscount.Admin.ShopEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .myButtonTopMargin {
            margin-top: 5%;
        }

        .panelMargin {
            margin-top: 0%;
        }

        .panel-primary > .panel-heading {
            color: #ffffff;
            background-color: #428bca;
            border-color: #428bca;
            text-align: center;
        }

        .button, html input[type="button"],
        input[type="reset"], input[type="submit"] {
            height: 100% !important;
        }

        .table {
            width: 100%;
            margin-bottom: 0px !important;
        }
    </style>
    <script type="text/javascript">

        function SetTarget() {

            document.forms[0].target = "_blank";

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                SHOP ENTRY
            </div>
            <div class="panel-body">
                <div class="form-horizontal">

                    <div class="row">
                        <div class="col-sm-12">

                            <div class=" col-sm-4">
                                <label>Shop Name</label>
                                <input type="text" runat="server" class="form-control input-sm" id="shopNameText" />
                            </div>
                            <div class=" col-sm-4">
                                <label>Location<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="locationDropDownList">
                                </asp:DropDownList>
                            </div>
                            <div class=" col-sm-4">
                                <label>Status<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="statusDropDownList">
                                    <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                    <asp:ListItem Value="1">ACTIVE</asp:ListItem>
                                    <asp:ListItem Value="2">INACTIVE</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                             <div class=" col-sm-4">
                                 <label>Address<span style="color: red">*</span></label>
                                <textarea  rows="4" cols="50" type="text" class="form-control input-sm" runat="server" id="addressText"></textarea> 
                             </div>
                            <div class=" col-sm-4">
                                <label>Shop Logo</label>
                                <asp:FileUpload ID="logoFileUpload" runat="server" CssClass="form-control input-sm"/>                               
                            </div>
                            <div class=" col-sm-4">
                                <label>Rank<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="rankDropDownList">
                                    <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                    <asp:ListItem Value="1">PREMIUM</asp:ListItem>
                                    <asp:ListItem Value="2">GOLD</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                           

                            <div class="col-sm-4">
                                <br />
                                <asp:Button ID="saveButton" runat="server" class="btn btn-success" Text="Save" OnClick="pruchaseSaveButton_Click" />
                            </div>
                            
                            <div class="col-sm-8">
                            </div>

                            <div class="col-sm-12">
                                <div style="border: 1px solid #ededed; padding: 5px;">
                                    <%--OnRowDeleting="OnRowDeletingDegree"OnRowDeleting="OnRowDeletingProduct"--%>
                                    <asp:GridView ID="productGridView" runat="server" CellPadding="2" AutoGenerateColumns="False"
                                        ForeColor="#333333" GridLines="Both" Width="100%" 
                                        HorizontalAlign="Center" ShowHeaderWhenEmpty="true">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr#">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Item ID" Visible="True">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--<asp:BoundField DataField="ProductId" HeaderText="Product Id" Visible="False" />--%>
                                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                            <asp:BoundField DataField="Colour" HeaderText="Colour" />
                                            <asp:BoundField DataField="Size" HeaderText="Size" />
                                            <asp:TemplateField HeaderText="" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="ColourId" runat="server" Text='<%# Eval("ColourId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="SizeId" runat="server" Text='<%# Eval("SizeId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="Qty" HeaderText="Qty" />
                                            <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
                                            <asp:BoundField DataField="Total" HeaderText="Total" />

                                            <%--<asp:BoundField DataField="SalesPrice" HeaderText="Sales Price" />--%>
                                            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
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

                            <div class="col-sm-12">
                                <div style="border: 1px solid #ededed; padding: 5px;">
                                    <%--OnRowDeleting="OnRowDeletingDegree"OnRowCommand="PurchasedProductGridView_RowCommand"--%>
                                    <asp:GridView ID="PurchasedProductGridView" runat="server" CellPadding="2" AutoGenerateColumns="False"
                                        ForeColor="#333333" GridLines="Both" Width="100%" 
                                        HorizontalAlign="Center" ShowHeaderWhenEmpty="true">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sr#">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="2%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product ID" Visible="True">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("FinalItemCode") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--<asp:BoundField DataField="ProductId" HeaderText="Product Id" Visible="False" />--%>
                                            <asp:BoundField DataField="VarItemName" HeaderText="Product Name" />
                                            <asp:BoundField DataField="ColourName" HeaderText="Colour" />
                                            <asp:BoundField DataField="SizeName" HeaderText="Size" />
                                            <asp:TemplateField HeaderText="Qty" Visible="True">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="QtyLevel" runat="server" Text='<%# Eval("Qty") %>'></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnPrint" runat="server" Width="60" Text="Print" 
                                                        CommandName="PrintButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--OnClientClick="SetTarget()"--%>
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
                            <div class="col-sm-12">
                                <br />
                                <asp:Literal ID="shopLiterel" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script src="../Scripts/MyScript/finishGoodIn.js"></script>
</asp:Content>
