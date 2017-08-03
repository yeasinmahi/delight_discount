﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="DelightDiscount.ecommerce.Category" %>
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
            <marquee dir="ltr" behavior="alternate" scrollamount="3" class="contact">Please contact us for product purchase at +88 01939987950</marquee>
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
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Ranga Pori Gents</h3>
            <h5>Price: 595.00</h5>
            <h5>Deal Code: DB401</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Dove Shampoo(Thailand) 375ml - Price 270.00 - Code DD021.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(15, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty15'>0</div>
            <div class='fr icocart' onclick='_a2c(15, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=15' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Neem Face Wash</h3>
            <h5>Price: 170.00</h5>
            <h5>Deal Code: DB404</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Himsagar Oil 350ml - Price175.00 - Code DD022.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(58, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty58'>0</div>
            <div class='fr icocart' onclick='_a2c(58, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=58' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Skin Care</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB407</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Makup Box Price 700.00 - Code DD023.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(61, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty61'>0</div>
            <div class='fr icocart' onclick='_a2c(61, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=61' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Herbal Hair Oil</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB406</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Mushroom Toothpaste - Price 150.00 - Code DD024.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(60, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty60'>0</div>
            <div class='fr icocart' onclick='_a2c(60, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=60' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Rangpori Fair Look</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB405</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Neem Face Wash 150ml - Price 1760.00 - Code DD025.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(59, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty59'>0</div>
            <div class='fr icocart' onclick='_a2c(59, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=59' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Hair Care</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: 403</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Ponds Beauty White 250ml - Price 400.00 - Code DD026.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(57, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty57'>0</div>
            <div class='fr icocart' onclick='_a2c(57, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=57' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Ranga Pori Gents</h3>
            <h5>Price: 595.00</h5>
            <h5>Deal Code: DB401</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Dove Shampoo(Thailand) 375ml - Price 270.00 - Code DD021.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(15, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty15'>0</div>
            <div class='fr icocart' onclick='_a2c(15, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=15' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Neem Face Wash</h3>
            <h5>Price: 170.00</h5>
            <h5>Deal Code: DB404</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Himsagar Oil 350ml - Price175.00 - Code DD022.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(58, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty58'>0</div>
            <div class='fr icocart' onclick='_a2c(58, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=58' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Skin Care</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB407</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Makup Box Price 700.00 - Code DD023.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(61, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty61'>0</div>
            <div class='fr icocart' onclick='_a2c(61, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=61' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Herbal Hair Oil</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB406</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Mushroom Toothpaste - Price 150.00 - Code DD024.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(60, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty60'>0</div>
            <div class='fr icocart' onclick='_a2c(60, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=60' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Rangpori Fair Look</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: DB405</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Neem Face Wash 150ml - Price 1760.00 - Code DD025.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(59, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty59'>0</div>
            <div class='fr icocart' onclick='_a2c(59, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=59' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
<div class='proditem'>
    <div class='a2ca'>
        <strong>
            <h3>Hair Care</h3>
            <h5>Price: 0.00</h5>
            <h5>Deal Code: 403</h5>
        </strong>
    </div>
    <img src='ups/p/Cosmetic & Beauty Care/Ponds Beauty White 250ml - Price 400.00 - Code DD026.jpg' alt='' />
    <div class='a2ca'>
        <dfn>
            <div>Add To Shopping Bag</div>
            <div class='fl icocart' onclick='_a2c(57, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
            <div class='fl icocartq' id='cartqty57'>0</div>
            <div class='fr icocart' onclick='_a2c(57, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
            <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        </dfn>
        <a href='Product.aspx?pid=57' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i> View Details</a>
    </div>
</div>
</div>
<script type="text/javascript" src="js/cart.js"></script>
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
                        <img id="ctl00_Image8" alt="dcash" src="images/dcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image9" alt="bkash" src="images/bkash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image10" alt="dbbl" src="images/dbbl.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image11" alt="mcash" src="images/mcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image12" alt="mycash" src="images/mycash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image13" alt="qcash" src="images/qcash.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image14" alt="visa" src="images/visa.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image15" alt="master" src="images/master.png" style="border-width:0px;height:34px" />
                    </a><a href="http://www.deshltd.com">
                        <img id="ctl00_Image16" alt="amex" src="images/amex.png" style="border-width:0px;height:34px" />
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
                Total Visitor: <a href="http://www.reliablecounter.com" target="_blank"><img src="http://www.reliablecounter.com/count.php?page=www.deshecommerce.com&digit=style/plain/31/&reloads=1" alt="" title="" border="0"></a><br /><a href="http://www.fabbly.com" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;">3d Print Models</a>
            </div>
        </div>
    </div>
</footer>

</asp:Content>
