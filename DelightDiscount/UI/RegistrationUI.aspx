﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationUI.aspx.cs" Inherits="DelightDiscount.UI.RegistrationUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                Register As A New Member
            </div>
            <div class="panel-body">
                <div class="form-horizontal">

                    <div class="row">
                        <%--<div class="col-sm-12">--%>
                        <fieldset>
                            <legend><b>
                                <h2>Personal Information</h2>
                            </b></legend>
                            <div class=" col-sm-3">
                                <label>CID<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="cidText" />
                            </div>
                            <div class=" col-sm-3">
                                <label>User Name<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="userNameText" />
                            </div>
                            <div class=" col-sm-3">
                                <label>Full Name<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="nameText" />
                            </div>
                            <div class=" col-sm-3">
                                <label>Mobile<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="mobileText" />
                            </div>
                            <div class=" col-sm-3">
                                <label>Present Address<span style="color: red">*</span></label>

                                <textarea rows="3" cols="50" type="text" runat="server" class="form-control input-sm" id="presentAddressTextarea"></textarea>
                            </div>
                            <div class=" col-sm-3">
                                <label>Parmanent Address<span style="color: red">*</span></label>
                                <textarea rows="3" cols="50" type="text" runat="server" class="form-control input-sm" id="parmanentAddressTextarea"></textarea>
                            </div>
                            <div class=" col-sm-3">
                                <label>Email<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="emailText" />
                            </div>

                        </fieldset>
                        <fieldset style="margin-top: 10px">
                            <legend><b>Nominee's Information
                            </b></legend>
                            <div class=" col-sm-4">
                                <label>Name of the nominee</label>
                                <input type="text" runat="server" class="form-control input-sm" id="nomineeNameText" />
                            </div>
                            <div class=" col-sm-4">
                                <label>Relationship<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="relationText" />
                            </div>
                            <div class=" col-sm-4">
                                <label>Phone<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="nomineePhoneText" />
                            </div>
                        </fieldset>
                        <fieldset style="margin-top: 10px">
                            <legend><b>Business Information
                            </b></legend>
                            <div class=" col-sm-6">
                                <label>Reference CID</label>

                                <input type="text" runat="server" class="form-control input-sm" id="referenceCidText" />
                            </div>
                            <div class=" col-sm-6">
                                <label>ReferenceName<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="referenceNameText" />
                            </div>
                            <div class=" col-sm-6">
                                <label>Joining Date<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="joinDateText" />
                            </div>
                            <div class="col-sm-6">
                                <br />
                                <asp:Button ID="saveButton" runat="server" class="btn btn-success" Text="Save" />
                            </div>
                        </fieldset>

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
</asp:Content>
