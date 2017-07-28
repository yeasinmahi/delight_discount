<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="~/Product.aspx.cs" Inherits="DelightDiscount.Product" %>
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

<h1>Product Details</h1>
<link href="css/details.css" rel="stylesheet" />
<link href="css/fontawesome-stars-o.css" rel="stylesheet" />
<h2 id="ctl00_ContentPlaceHolder1_h2title">Desh Spcial Shirt Pcs</h2>
<div class="fr">
    <div id="ctl00_ContentPlaceHolder1_ratingd" class="ratingd fr">
        <i class='fa fa-tasks'></i>
        <dfn>
            <h3>0 out of 5 ratings</h3>
            <input type='hidden' id='hidprodrt' value='0' />
            <div>5 <i class='fa fa-star'></i> <span><del></del></span> 0%</div>
            <div>4 <i class='fa fa-star'></i> <span><del></del></span> 0%</div>
            <div>3 <i class='fa fa-star'></i> <span><del></del></span> 0%</div>
            <div>2 <i class='fa fa-star'></i> <span><del></del></span> 0%</div>
            <div>1 <i class='fa fa-star'></i> <span><del></del></span> 0%</div>
        </dfn>
    </div>
    <div class="fr">Rating Details: </div>
    <div class="cb"></div>
</div>
<div class="cb"></div>
<div id="ctl00_ContentPlaceHolder1_mainImg" class="mainimage fl"></div>
<div id="details1" class="fr detwrap">
    <div id="ctl00_ContentPlaceHolder1_price" class="price fl">Price: 1090.00 Taka</div>
    <div class="fr">
        Give a Rate: &nbsp;
        <select id="starrating">
            <option value=""></option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
        <div id="salutation" class="cb">Thanks a lot for rating.</div>
    </div>
    <div class="cb"></div>
    <dfn id="ctl00_ContentPlaceHolder1_shoppingarea" class="fl">
        <div>Add To Shopping Bag</div>
        <div class='fl icocart' onclick='_a2c(41, -1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
        <div class='fl icocartq' id='cartqty41'>0</div>
        <div class='fr icocart' onclick='_a2c(41, 1)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
        <div class='cb'><i class='fa fa-shopping-basket'></i></div>
        <input type='hidden' id='hidprodid' value='41' />
    </dfn>
    <address id="ctl00_ContentPlaceHolder1_favarea" class="fr">
        <div><button onclick='_a2f(41)' class='btndg'>Add To Favourite</button></div>
        <div id="code">Deal Code: DF218</div>
        <div>Total Order: 1</div>
        <div>Total Review: 0</div>
        <div><button onclick='_a2f(41)' class='btndg'>Wrtie a Review</button></div>
    </address>
    <div class="cb"></div>
</div>
<h3 class="subtitle fr" style="width:712px"><i class='fa fa-tag'></i> Ingredients</h3>
<div id="details2" class="fr detwrap">
    <%--<address id="ctl00_ContentPlaceHolder1_ingred">100% Cotton</address>--%>
</div>
<div class="cb"></div>
<h3 class="subtitle"><i class='fa fa-tag'></i> Product Details</h3>
<div id="ctl00_ContentPlaceHolder1_pdet" class="detwrap categoryp"></div>
<h3 class="subtitle"><i class='fa fa-tag'></i> Top Viewed</h3>
<div id="ctl00_ContentPlaceHolder1_mview" class="categoryp">
    
</div>
<h3 class="subtitle"><i class='fa fa-tag'></i> Top Rated</h3>
<div id="ctl00_ContentPlaceHolder1_trate" class="categoryp">
    
</div>
<script type="text/javascript" src="js/cart.js"></script>
<script type="text/javascript" src="js/jquery.elevatezoom.js"></script>
<script type="text/javascript" src="js/jquery.barrating.min.js">
</script>
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
    
<script type="text/javascript">
    var sp = sessionStorage.getItem("prodTarget"); var sD = sp.split('^'); var name = sD[0]; var price = sD[1]; var code = sD[2]; var img = sD[3]; $("#ctl00_ContentPlaceHolder1_h2title").text(name); $("#ctl00_ContentPlaceHolder1_price").text(price); $("#code").text(code); var tH = "<img id='imgzoom' src='" + img + "' data-zoom-image='" + img + "' alt='' />"; $("#ctl00_ContentPlaceHolder1_mainImg").append(tH); $("#ctl00_ContentPlaceHolder1_trate").empty(); var hh = sessionStorage.getItem("catTarget"); var gg = hh.split(','); for (var i = 0; i < gg.length; i++) { var tH = '<div class="proditem">'; tH = tH + gg[i]; tH = tH + '</div>'; $("#ctl00_ContentPlaceHolder1_trate").append(tH); } $("#ctl00_ContentPlaceHolder1_mview").empty(); var hh = sessionStorage.getItem("catTarget"); var gg = hh.split(','); for (var i = 0; i < gg.length; i++) { var tH = '<div class="proditem">'; tH = tH + gg[i]; tH = tH + '</div>'; $("#ctl00_ContentPlaceHolder1_mview").append(tH); } $(document).ready(function () { $("#imgzoom").elevateZoom({ easing: true, scrollZoom: true, tint: true, tintColour: '#0099d4', tintOpacity: 0.4, zoomWindowPosition: 1, zoomWindowOffetx: 50, zoomWindowFadeIn: 500, zoomWindowFadeOut: 500, lensFadeIn: 500, lensFadeOut: 500 }); $(".a2ca a").on('click', function () { var name = $(this).parent().parent().find('strong h3').text(); var price = $(this).parent().parent().find('strong h5:first-of-type').text(); var code = $(this).parent().parent().find('strong h5:last-of-type').text(); var img = $(this).parent().parent().find('img').attr('src'); sessionStorage.setItem("prodTarget", name + "^" + price + "^" + code + "^" + img); return true; }); });
</script>

</asp:Content>
