<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationUI.aspx.cs" Inherits="DelightDiscount.Admin.RegistrationUI" EnableEventValidation="false"%>

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
   <%-- <script>
        $("#MainContent_checkButton").click(function () {

            var refId = $("#MainContent_referenceCidText");


            if (refId.val() != "0") {
                var generateDisCard = {
                    //TransactionId: "SB0122",
                    CID: refId.val()
                }
                $.ajax({
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    url: "RegistrationUI.aspx/SaveDIscountCard",
                    dataType: 'json',
                    data: JSON.stringify({ refid: refId.val() }),
                    async: false,
                    success: function (data) {
                        if (data.d.length > 0) {
                            $("#MainContent_invoiceNumverDropDownList").append('<option value="' + data.d[0].value + '">' + data.d[0].value + '</option>');
                            $("#MainContent_invoiceNumverDropDownList").val(data.d[0].display);
                        }

                    },
                    error: function () {
                        alert("Error Found");
                    }
                });
            }

        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12">
        <div class="panel panel-primary" style="margin-top: 12px; text-align: center">
            <div class="panel-heading">
               <h4>User Registration</h4>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">

                    <div class="row">
                        <%--<div class="col-sm-12">--%>
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
                                   <%-- OnClick="checkButton_Click"--%>
                                   <%-- <button type="button" id="checkButton" class="btn btn-sm btn-success">Check</button>--%>
                                    <asp:Button ID="checkButton" runat="server" class="btn btn-primary" Text="Check" OnClick="checkButton_Click"/>
                                </div>
                                <div class=" col-sm-3">
                                    <label>Placement CID & Position<span style="color: red">*</span></label>
                                    <%--<select id="placementDropDownList" runat="server" Class="form-control input-sm"></select>--%>
                                    <asp:DropDownList ID="placementDropDownList" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                                </div>
                                <div class=" col-sm-3">
                                    <label>Joining Date<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="joinDateText" placeholder="Like:-DD/MM/YYYY" />
                                </div>
                                <div class=" col-sm-3">
                                    <label>ReferenceName</label><br />
                                    <label runat="server" id="refNameLabel" style=""></label>
                                    <%--<input type="text" runat="server" class="form-control input-sm" id="referenceNameText" />--%>
                                </div>
                            </div>

                            
                        </fieldset>
                        <fieldset>
                            <legend><b>
                                <h2>Personal Information</h2>
                            </b></legend>
                            <div class="col-sm-9">
                                <div class=" col-sm-4">
                                    <label for="cidText">CID<span style="color: red">*</span></label>
                                    <input type="text" runat="server" class="form-control input-sm" id="cidText" placeholder="Like:-DD00001" />
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
                                    <img id="mainImage" runat="server" class="img img-thumbnail img-responsive" src="~/Images/user.png" style="width: 150px;height: 150px"/>
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
                            <div class="col-sm-1">
                                <br />
                                <asp:Button ID="saveButton" runat="server" class="btn btn-success" Text="Save" OnClick="saveButton_Click" />
                            </div>
                             <div class="col-sm-1">
                                <br />
                                <asp:Button ID="clearButton" runat="server" class="btn btn-danger" Text="Clear" OnClick="clearButton_Click"  />
                            </div>
                            <div class="col-sm-10">
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

        $("#MainContent_mainImageFileUpload").change(function () {

            var imgId = "#MainContent_mainImage";
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
    <script src="../Scripts/MyScripts/registration.js"></script>
</asp:Content>
<asp:Content ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
    <%--<script src="../Scripts/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.min.js"></script>
     <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/fastclick.js"></script>
    <script src="../Scripts/nprogress.js"></script>
    <script src="../Scripts/custom.min.js"></script>--%>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <%--<script src="../Scripts/MyScripts/registration.js"></script>--%>
</asp:Content>
