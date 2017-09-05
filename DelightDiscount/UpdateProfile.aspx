<%@ Page Title="Profile Update" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="DelightDiscount.UpdateProfile" %>

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
    <div class="col-sm-10 col-sm-offset-1">
        <div class="panel panel-primary" style="margin-top: 12px;">
            <div class="panel-heading">
                <h4>Profile Update</h4>
            </div>
            <div class="panel-body">
                <div class="form-horizontal" style="padding: 1%">
                    <div class="row">
                        <fieldset>
                            <legend><b>
                                <b>Personal Information</b>
                            </b></legend>
                            <div class="col-sm-9">
                                <div class=" col-sm-4">
                                    <label for="cidText">CID<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="cidText" placeholder="Like:-DD00001" disabled="True"/>
                                </div>
                                <div class=" col-sm-4">
                                    <label>Full Name<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="nameText" />
                                </div>
                                <div class=" col-sm-4">
                                    <label>Mobile<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="mobileText" />
                                </div>
                                <div class=" col-sm-4">
                                    <label>Email<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="emailText" />
                                </div>
                                <div class=" col-sm-4">
                                    <label>Present Address<span style="color: red">*</span></label>

                                    <textarea rows="3" cols="50" type="text" runat="server" class="form-control input-sm" id="presentAddressTextarea"></textarea>
                                </div>
                                <div class=" col-sm-4">
                                    <label>Parmanent Address<span style="color: red">*</span></label>
                                    <textarea rows="3" cols="50" type="text" runat="server" class="form-control input-sm" id="parmanentAddressTextarea"></textarea>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class=" col-sm-12">
                                    <div class="imgDiv" id="imgDivC">
                                        <img id="mainImage" runat="server" class="img img-thumbnail img-responsive" src="Images/user.png" style="width: 150px; height: 150px" />
                                        <asp:FileUpload ID="mainImageFileUpload" runat="server" CssClass="imageUploadBtn" />
                                    </div>
                                </div>
                            </div>

                            <%-- <div class=" col-sm-3">
                                <label>User Name<span style="color: red">*</span></label>
                                <input type="text" runat="server" class="form-control input-sm" id="userNameText" />
                            </div>--%>
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
                            <div class=" col-sm-4">
                                <label>Confirm Password for Update<span style="color: red">*</span></label>
                                <input type="password" runat="server" class="form-control input-sm" id="passwordText" />
                            </div>
                            <div class="col-sm-2">
                                <br />
                                <asp:Button ID="updateButton" runat="server" class="btn btn-warning" Text="Update" OnClick="updateButton_Click"/>
                            </div>
                           
                            <div class="col-sm-6">
                                <br />
                                <asp:Literal ID="userLiterel" runat="server" Text="_"> </asp:Literal>
                                <br />
                            </div>
                        </fieldset>
                        <%--<div class="col-sm-12">
                            <div class="form-group">
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <script>
         function readURL(input, imgId) {

             if (input.files && input.files[0]) {
                 var reader = new FileReader();

                 reader.onload = function (e) {
                     $(imgId).attr('src', e.target.result);
                 }

                 reader.readAsDataURL(input.files[0]);
             }
         }

         $("#bodyContentPlaceHolder_mainImageFileUpload").change(function () {

             var imgId = "#bodyContentPlaceHolder_mainImage";
             var plcId = "#imgDivC";
             readURL(this, imgId);
             $(imgId).css({
                 "display": "block"
             });
             $("#imgDivC img:nth-of-type(2)").css({
                 "display": "none"
             });
         });
    </script>
    <script src="Scripts/jquery.min.js"></script>
</asp:Content>
