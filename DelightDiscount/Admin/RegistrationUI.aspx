<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationUI.aspx.cs" Inherits="DelightDiscount.Admin.RegistrationUI" %>

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
    <script>
        //$(document).ready(function () {
        //    $("#MainContent_joinDateText").datepicker({
        //        autoclose: true,
        //        todayHighlight: true,
        //        format: "dd/mm/yyyy"
        //    });
        //})
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px;text-align: center">
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
                                <label for="cidText">CID<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="cidText" placeholder="Like:-DD00001"/>
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
                                <label>Name of the nominee<span style="color: red">*</span></label>
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
                            <div class="form-group">
                                <div class=" col-sm-2">
                                    <label>Reference CID<span style="color: red">*</span></label>

                                    <input type="text" runat="server" class="form-control input-sm" id="referenceCidText" />
                                </div>
                                <div class="col-sm-1">
                                    <br />
                                    <asp:Button ID="checkButton" runat="server" class="btn btn-primary" Text="Check" OnClick="checkButton_Click" CausesValidation="False"/>
                                </div>
                                <div class=" col-sm-3">
                                    <label>Placement CID & Position<span style="color: red">*</span></label>
                                    <asp:DropDownList ID="placementDropDownList" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                                </div>
                                <div class=" col-sm-3">
                                    <label>Joining Date<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="joinDateText" placeholder="Like:-DD/MM/YYYY"/>
                                </div>
                                <div class=" col-sm-3">
                                    <label>ReferenceName</label><br />
                                    <label runat="server" id="refNameLabel" style=""></label>
                                    <%--<input type="text" runat="server" class="form-control input-sm" id="referenceNameText" />--%>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <br />
                                <asp:Button ID="saveButton" runat="server" class="btn btn-success" Text="Save" OnClick="saveButton_Click" />
                            </div>
                            <div class="col-sm-8">
                                <br />
                                <asp:Literal ID="userLiterel" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>
                        </fieldset>



                    </div>

                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
<asp:Content  ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server" >
    <%--<script src="../Scripts/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.min.js"></script>
     <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/fastclick.js"></script>
    <script src="../Scripts/nprogress.js"></script>
    <script src="../Scripts/custom.min.js"></script>--%>
   <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/MyScripts/registration.js"></script>
</asp:Content>
