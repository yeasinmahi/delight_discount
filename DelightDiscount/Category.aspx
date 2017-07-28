<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="~/Category.aspx.cs" Inherits="DelightDiscount.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <script src="js/common.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    
<div id="banner">
    <div class="wrapper">
        <div id="logo" class="fl">
            <a id="ctl00_HyperLink8" href="Default.aspx"><img id="ctl00_Image1" alt="Logo" src="img/logo.png" style="height:80px;border-width:0px;" /></a>
        </div>
        <div id="search" class="fl">
            <div id="search-box">
                <input type="text" id="txtSrc" class="fl" placeholder="Search by item like shirt, sharee etc" />
                <select name="ctl00$DropDownList1" id="ctl00_DropDownList1" class="fl">
                    <option value="0">All</option>
                    <option value="1">Product</option>
                    <option value="2">Merchant</option>
                </select>
                <script type="text/javascript">
                    //$('#txtSrc').keydown(function (e) {
                    //    if (e.which === 13) {
                    //        _chksrc();
                    //        return false;
                    //    }
                    //});
                    //function _chksrc() {
                    //    if ($("#txtSrc").val() == "") {
                    //        alert("Please write something");
                    //        return false;
                    //    } else {
                    //        window.location.href = "Products.aspx?src=" + $("#txtSrc").val();
                    //    }
                    //}
                    //$.ajax({
                    //    type: "POST",
                    //    contentType: "application/json; charset=utf-8",
                    //    dataType: "json",
                    //    url: "WebServices/WebService.asmx/show2cart",
                    //    success: function (res) {
                    //        $('#cartholder').html(res.d);
                    //    }
                    //});
                </script>
                <div id="submit" class="fl"><i class="fa fa-search" onclick="_chksrc()"></i></div>
            </div>
            <marquee dir="ltr" behavior="alternate" scrollamount="3" class="contact">Please contact us for product purchase at +88 01952200800</marquee>
        </div>
        <div id="cartarea" class="fr" onclick="location.replace('/Cart.aspx');">
            <i class="fa fa-shopping-bag"></i>
            <div id="cartholder" class="fr"></div>
        </div>
    </div>
</div>
<div id="contents">
<div class="wrapper">
<%--<script type="text/javascript">
            //<![CDATA[
            Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ScriptManager1', document.getElementById('aspnetForm'));
            Sys.WebForms.PageRequestManager.getInstance()._updateControls([], [], [], 90);
            //]]>
        </script>--%>
<h1>Category Product List</h1>
<div id="ctl00_ContentPlaceHolder1_products" class="categoryp">
    

</div>

<div class="cb">&nbsp;</div>
</div>
</div>
<footer>
    <div class="wrapper">
        <div id="footerl" class="fl">
            <div class="text fl">
                <span class="texth fl">DESH</span>
                <div class="textopt fl">
                    <a id="ctl00_HyperLink1" href="Default.aspx">Home</a>|
                    <a id="ctl00_HyperLink12" href="su/Login.aspx" target="_blank">Login</a>|
                    <a id="ctl00_HyperLink2" href="About.aspx">About Us</a>|
                    <a id="ctl00_HyperLink3" href="FAQ.aspx">FAQ</a>|
                    <a id="ctl00_HyperLink9" href="Contact.aspx">Contact Us</a>|
                    <a id="ctl00_HyperLink4" href="http://www.deshltd.com">How to buy</a>
                </div>
            </div>
            <div class="text fl">
                <span class="texth fl">Payment</span>
                <div class="textopt fl">
                    <a id="ctl00_HyperLink5" href="http://www.deshltd.com">Replacement policy</a>|
                    <a id="ctl00_HyperLink6" href="http://www.deshltd.com">Refund policy</a>
                </div>
            </div>
            <div class="text fl">
                <span class="texth fl">How to pay</span>
                <div class="textopt fl">
                    <a href="http://www.deshltd.com">
                        <img id="ctl00_Image8" alt="dcash" src="Images/dcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image9" alt="bkash" src="Images/bkash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image10" alt="dbbl" src="Images/dbbl.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image11" alt="mcash" src="Images/mcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image12" alt="mycash" src="Images/mycash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image13" alt="qcash" src="Images/qcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image14" alt="visa" src="Images/visa.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image15" alt="master" src="Images/master.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image16" alt="amex" src="Images/amex.png" style="border-width:0px;height:34px" />
                    </a>
                </div>
            </div>
        </div>
        <div id="footerr" class="fr">
            <div class="textopt">
                <span class="fl"><i class="fa fa-question-circle"></i>Question</span>
                <span class="fl"><i class="fa fa-graduation-cap"></i>Opinion</span>
                <span class="fl"><i class="fa fa-envelope"></i>Complain</span>
            </div>
            <div class="textopt">
                <span class="fl">Email: </span>
                <span class="fl">info@deshecommerce.com</span>
            </div>
            <div class="textopt">
                <a href="http://www.facebook.com/deshltd" target="_blank"><i class="fa fa-facebook-square"></i></a>
                <a href="http://twitter.com/DESH E-COMMERCE LTD" target="_blank"><i class="fa fa-twitter-square"></i></a>
                <a href="http://plus.google.com/u/0/deshltd/posts" target="_blank"><i class="fa fa-google-plus-square"></i></a>
                <a href="http://www.linkedin.com/company/DESH E-COMMERCE LTD" target="_blank"><i class="fa fa-linkedin-square"></i></a>
            </div>
            <div id="visitoronline">
                
            </div>
        </div>
    </div>
</footer>
    
    <script>
        $("#ctl00_ContentPlaceHolder1_products").empty(); var hh = sessionStorage.getItem("catTarget"); var gg = hh.split(','); for (var i = 0; i < gg.length; i++) { var tH = '<div class="proditem">'; tH = tH + gg[i]; tH = tH + '</div>'; $("#ctl00_ContentPlaceHolder1_products").append(tH); } $(".a2ca a").on('click', function () { var name = $(this).parent().parent().find('strong h3').text(); var price = $(this).parent().parent().find('strong h5:first-of-type').text(); var code = $(this).parent().parent().find('strong h5:last-of-type').text(); var img = $(this).parent().parent().find('img').attr('src'); sessionStorage.setItem("prodTarget", name + "^" + price + "^" + code + "^" + img); return true; });
    </script>
</asp:Content>
