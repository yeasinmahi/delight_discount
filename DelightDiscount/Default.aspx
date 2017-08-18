<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="~/Default.aspx.cs" Inherits="DelightDiscount.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/home.css" rel="stylesheet" type="text/css" />
    <script src="js/common.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div id="banner">
        <div class="wrapper">
            <div id="logo" class="fl">
                <a id="ctl00_HyperLink8" href="Default.aspx">
                    <img id="ctl00_Image1" alt="Logo" src="img/ddlogo.png" style="height: 80px; border-width: 0px;" /></a>
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

            <div id="leftmenu" class="fl">
                <ul id="ctl00_ContentPlaceHolder1_left_mn">
                    <li><i class='fa fa-modx fa3' aria-hidden='true'></i><a target='_blank' onclick='setCat(1)' href='Category.aspx?cat=18'>Garments & Fashion</a></li>
                    <li><i class='fa fa-female fa7' aria-hidden='true'></i><a target='_blank' onclick='setCat(2)' href='Category.aspx?cat=2'>Health & Nutrition</a></li>
                    <li><i class='fa fa-user-plus fa0' aria-hidden='true'></i><a target='_blank' onclick='setCat(3)' href='Category.aspx?cat=3'>Tour Package</a></li>
                    <li><i class='fa fa-ambulance fa7' aria-hidden='true'></i><a target='_blank' onclick='setCat(4)' href='Category.aspx?cat=5'>Special Product</a></li>
                    <%--<li><i class='fa fa-male fa1' aria-hidden='true'></i><a target='_blank' onclick='setCat(5)' href='Category.aspx?cat=27'>Gents Gallery</a></li>
                    <li><i class='fa fa-tv fa5' aria-hidden='true'></i><a target='_blank' onclick='setCat(6)' href='Category.aspx?cat=7'>Electric & Electronic</a></li>--%>
                </ul>

            </div>
            <div id="mainslider" class="fl">
    <ul id="ctl00_ContentPlaceHolder1_mn_slider" class="sb-slider">
        <li>
            <img src='ecommerce/ups/s/1.jpg' alt='' />
           <%-- <div class='sb-description'>
                <h3>We All Are Together</h3>
                <h5>A,B,C,D </h5>
            </div>--%>
        </li>
        <li>
            <img src='ecommerce/ups/s/2.jpg' alt='' />
            <%--<div class='sb-description'>
                <h3>A Cultural Program</h3>
                <h5>
                    Award Giving Ceremony
                </h5>
            </div>--%>
        </li>
        <li>
            <img src='ecommerce/ups/s/3.jpg' alt='' />
            <%--<div class='sb-description'>
                <h3>Picnic</h3>
                <h5>With Family</h5>
            </div>--%>
        </li>
        <%--<li>
            <img src='ecommerce/ups/s/4.jpg' alt='' />
            <div class='sb-description'>
                <h3>Unofficial Meating</h3>
                <h5>With marketing Executive</h5>
            </div>
        </li>--%>
        <%--<li>
            <img src='ups/s/4.jpg' alt='' />
            <div class='sb-description'>
                <h3>Rangapori</h3>
                <h5>Shampo</h5>
            </div>
        </li>
        <li>
            <img src='ups/s/5.jpg' alt='' />
            <div class='sb-description'>
                <h3>Rangapori</h3>
                <h5>Rangapori</h5>
            </div>
        </li>--%>
    </ul>
    <div id="shadow" class="shadow"></div>
    <div id="nav-arrows" class="nav-arrows">
        <a href="#">Next</a>
        <a href="#">Previous</a>
    </div>
    <%--<div id="nav-options" class="nav-options">
        <span id="navPlay">Play</span>
        <span id="navPause">Pause</span>
    </div>--%>
    <link rel="stylesheet" type="text/css" href="css/slicebox.css" />
    <link rel="stylesheet" type="text/css" href="css/custom.css" />
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
    <script type="text/javascript" src="js/jquery.slicebox.js"></script>
    <script type="text/javascript">
        $(function () {
            var Page = (function () {
                var $navArrows = $('#nav-arrows').hide(),
                    $navOptions = $('#nav-options').hide(),
                    $shadow = $('#shadow').hide(),
                    slicebox = $('#ctl00_ContentPlaceHolder1_mn_slider').slicebox({
                        onReady: function () {
                            $navArrows.show();
                            $navOptions.show();
                            $shadow.show();
                            slicebox.play();
                        },
                        orientation: 'r',
                        cuboidsRandom: true
                    }),

                    init = function () {
                        initEvents();
                    },
                    initEvents = function () {
                        $navArrows.children(':first').on('click', function () {
                            slicebox.next();
                            return false;
                        });
                        $navArrows.children(':last').on('click', function () {
                            slicebox.previous();
                            return false;
                        });
                        $('#navPlay').on('click', function () {
                            slicebox.play();
                            return false;
                        });

                        $('#navPause').on('click', function () {
                            slicebox.pause();
                            return false;
                        });
                    };

                return { init: init };
            })();
            Page.init();
        });
    </script>
</div>
            <div id="recent" class="fl">
                <div id="ctl00_ContentPlaceHolder1_mn_recent">
                    <div class='recent'>
                        <img src='ecommerce/ups/r/1.jpg' alt='' />
                        <h5>UPCOMING</h5>
                    </div>
                    <div class='recent'>
                        <img src='ecommerce/ups/r/2.jpg' alt='' />
                        <h5>UPCOMING</h5>
                    </div>
                    <div class='recent'>
                        <img src='ecommerce/ups/r/3.jpg' alt='' />
                        <h5>UPCOMING</h5>
                    </div>
                </div>
            </div>
            <div class="cb">&nbsp;</div>
            <link rel="stylesheet" type="text/css" href="css/slick.css" />
            <script type="text/javascript" src="js/slick.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.catprod').slick({
                        slidesToShow: 6,
                        slidesToScroll: 6,
                        autoplay: true,
                        autoplaySpeed: 5000,
                    });
                });
            </script>
            <div id="ctl00_ContentPlaceHolder1_categories">
                <div class='category' id="1">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-modx fa1' aria-hidden='true'></i><a <%--href='Category.aspx?cat=1'--%> <%--target='_blank'--%>>Garments & Fashion</a></div>
                        <%--<div class='catsub'><a href='Category.aspx?cat=1&sub=4' target='_blank'><i class='fa fa-heart fa0' aria-hidden='true'></i>Shirt</a><a href='Category.aspx?cat=1&sub=13' target='_blank'><i class='fa fa-inbox fa0' aria-hidden='true'></i>Pants</a><a href='Category.aspx?cat=1&sub=14' target='_blank'><i class='fa fa-angellist fa3' aria-hidden='true'></i>Gents Collections</a><a href='Category.aspx?cat=1&sub=15' target='_blank'><i class='fa fa-address-book-o fa8' aria-hidden='true'></i>Kids Collections</a><a href='Category.aspx?cat=1&sub=30' target='_blank'><i class='fa fa-diamond fa7' aria-hidden='true'></i>Ledies Collection</a></div>--%>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD111</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD111.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(13-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty13'>0</div>
                                    <div class='fr icocart' onclick='_a2c(131)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=13' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD112</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD112.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(31-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty31'>0</div>
                                    <div class='fr icocart' onclick='_a2c(311)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=31' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD113</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD113.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(41-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty41'>0</div>
                                    <div class='fr icocart' onclick='_a2c(411)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=41' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD114</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD114.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(41-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty114'>0</div>
                                    <div class='fr icocart' onclick='_a2c(411)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=114' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD115</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD115.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(1115-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty115'>0</div>
                                    <div class='fr icocart' onclick='_a2c(115)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=115' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD116</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD116.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(116-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty116'>0</div>
                                    <div class='fr icocart' onclick='_a2c(116)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=116' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD117</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD117.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(117-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty117'>0</div>
                                    <div class='fr icocart' onclick='_a2c(117)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=117' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD118</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD118.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(118-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty118'>0</div>
                                    <div class='fr icocart' onclick='_a2c(118)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=118' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD119</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD119.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(119-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty119'>0</div>
                                    <div class='fr icocart' onclick='_a2c(119)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=119' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Indian AC Cotton</h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD120</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Garments & Fashion/Indian AC Cotton, Price- 950, Deal Code-DD120.JPG' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(120-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty120'>0</div>
                                    <div class='fr icocart' onclick='_a2c(120)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=120' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                    </div>
                    <div class='cb'></div>
                </div>
                <div class='category' id="2">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-female fa5' aria-hidden='true'></i><a href='Category.aspx?cat=2' target='_blank'>Health & Nutrition</a></div>
                        <%--<div class='catsub'><a href='Category.aspx?cat=2&sub=22' target='_blank'><i class='fa fa-heart fa6' aria-hidden='true'></i>Parfume</a><a href='Category.aspx?cat=2&sub=33' target='_blank'><i class='fa fa-bathtub fa6' aria-hidden='true'></i>Gents Skin Care</a><a href='Category.aspx?cat=2&sub=34' target='_blank'><i class='fa fa-chrome fa3' aria-hidden='true'></i>Hair Care</a><a href='Category.aspx?cat=2&sub=35' target='_blank'><i class='fa fa-american-sign-language-interpreting fa7' aria-hidden='true'></i>Skin Care</a><a href='Category.aspx?cat=2&sub=31' target='_blank'><i class='fa fa-envira fa5' aria-hidden='true'></i>Ladies Skin Care</a></div>--%>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Cardy Expart</h4>
                                    <h5>Price: 1550.00</h5>
                                    <h5>Deal Code: DD201</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Cardy Expart, Price-1550, Deal Code-DD201.jpg' alt='ecommerce/ups/Health/Cardy Expart, Price-1550, Deal Code-DD201 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(15-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty15'>0</div>
                                    <div class='fr icocart' onclick='_a2c(151)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=15' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Diabetic Control</h4>
                                    <h5>Price: 1190.00</h5>
                                    <h5>Deal Code: DD202</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Diabetic Control, Price-1190, Deal Code-DD202.jpg' alt='ecommerce/ups/Health/Diabetic Control, Price-1190, Deal Code-DD202 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(58-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty58'>0</div>
                                    <div class='fr icocart' onclick='_a2c(581)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=58' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Hair Treatment Gold</h4>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: DD203</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Hair Treatment Gold, Price-950, Deal Code-DD203.jpg' alt='ecommerce/ups/Health/Hair Treatment Gold, Price-950, Deal Code-DD203 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(61-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty61'>0</div>
                                    <div class='fr icocart' onclick='_a2c(611)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=61' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Herbalife Soya Protin</h4>
                                    <h5>Price: 600.00</h5>
                                    <h5>Deal Code: DD204</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Herbalife Soya Protin,  Price- 600, Deal Code-DD204 (F).jpg' alt='ecommerce/ups/Health/Herbalife Soya Protin,  Price- 600, Deal Code-DD204 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(60-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty60'>0</div>
                                    <div class='fr icocart' onclick='_a2c(601)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=60' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Max Power-100</h4>
                                    <h5>Price: 1050.00</h5>
                                    <h5>Deal Code: DD205</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Max Power-100, Price-1050, Deal Code-DD205.jpg' alt='ecommerce/ups/Health/Max Power-100, Price-1050, Deal Code-DD205 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(59-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty59'>0</div>
                                    <div class='fr icocart' onclick='_a2c(591)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=59' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Proteino</h4>
                                    <h5>Price: 810.00</h5>
                                    <h5>Deal Code: DD206</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Proteino, Price-810, Deal Code-DD206.jpg' alt='ecommerce/ups/Health/Proteino, Price-810, Deal Code-DD206 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(57-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty57'>0</div>
                                    <div class='fr icocart' onclick='_a2c(571)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=57' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                               <strong>
                                    <h4>Slim n Fit</h4>
                                    <h5>Price: 1550.00</h5>
                                    <h5>Deal Code: DD207</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Slim n Fit, Price-1550, Deal Code-DD207.jpg' alt='ecommerce/ups/Health/Slim n Fit, Price-1550, Deal Code-DD207 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(15-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty15'>0</div>
                                    <div class='fr icocart' onclick='_a2c(151)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=15' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Total Effect</h4>
                                    <h5>Price: 750.00</h5>
                                    <h5>Deal Code: DD208</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Total Effect, Price-750, Deal Code-DD208.JPG' alt='ecommerce/ups/Health/Total Effect, Price-750, Deal Code-DD208 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(58-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty58'>0</div>
                                    <div class='fr icocart' onclick='_a2c(581)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=58' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Wait Loss</h4>
                                    <h5>Price: 1500.00</h5>
                                    <h5>Deal Code: DD209</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Health/Wait Loss, Price-1500, Deal Code-209.JPG' alt='ecommerce/ups/Health/Wait Loss, Price-1500, Deal Code-209 (V).JPG' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(61-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty61'>0</div>
                                    <div class='fr icocart' onclick='_a2c(611)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=61' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <%--<div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Mashroom Toothpaste</h4>
                                    <h5>Price: 150.00</h5>
                                    <h5>Deal Code: DD024</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Cosmetic & Beauty Care/Mushroom Toothpaste - Price 150.00 - Code DD024.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(60-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty60'>0</div>
                                    <div class='fr icocart' onclick='_a2c(601)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=60' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Neem Face Wash</h4>
                                    <h5>Price: 150.00</h5>
                                    <h5>Deal Code: DD025</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Cosmetic & Beauty Care/Neem Face Wash 150ml - Price 1760.00 - Code DD025.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(59-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty59'>0</div>
                                    <div class='fr icocart' onclick='_a2c(591)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=59' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Ponds Beauty White 250ml</h4>
                                    <h5>Price: 400.00</h5>
                                    <h5>Deal Code: DD026</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Cosmetic & Beauty Care/Ponds Beauty White 250ml - Price 400.00 - Code DD026.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(57-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty57'>0</div>
                                    <div class='fr icocart' onclick='_a2c(571)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=57' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>--%>
                    </div>
                    <div class='cb'></div>
                </div>
                <div class='category' id="3">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-user-plus fa1' aria-hidden='true'></i><a href='Category.aspx?cat=3' target='_blank'>Tour Package</a></div>
                        <%--<div class='catsub'><a href='Category.aspx?cat=3&sub=16' target='_blank'><i class='fa fa-shopping-basket fa6' aria-hidden='true'></i>Masala</a><a href='Category.aspx?cat=3&sub=21' target='_blank'><i class='fa fa-beer fa7' aria-hidden='true'></i>Toiletries</a><a href='Category.aspx?cat=3&sub=23' target='_blank'><i class='fa fa-flask fa6' aria-hidden='true'></i>Cleaning Meterials</a></div>--%>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Daka -  Cox's Bazar  - Dhaka<br/><br/></h4>
                                    <h5>Price: 7500.00</h5>
                                    <h5>Deal Code: DD991</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA-COX-BAZAR-DHAKA, Price 7500, Deal Code-991.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(24-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty24'>0</div>
                                    <div class='fr icocart' onclick='_a2c(241)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=24' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Daka - Cox's Bazar - Dhaka<br/><br/></h4>
                                    <h5>Price: 4850.00</h5>
                                    <h5>Deal Code: DD992</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA-COX-BAZAR-DHAKA, Price 4850, Deal Code-992.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(66-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty66'>0</div>
                                    <div class='fr icocart' onclick='_a2c(661)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=66' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Daka - Cox's Bazar - Dhaka<br/><br/></h4>
                                    <h5>Price: 4000.00</h5>
                                    <h5>Deal Code: DD990</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA-COX-BAZAR-DHAKA, Price 4000, Deal Code-990.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(51-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty51'>0</div>
                                    <div class='fr icocart' onclick='_a2c(511)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=51' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Daka - Cox's Bazar - Dhaka<br/><br/></h4>
                                    <h5>Price: 3150.00</h5>
                                    <h5>Deal Code: DD993</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA-COX-BAZAR-DHAKA, Price 3150, Deal Code-993.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(50-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty50'>0</div>
                                    <div class='fr icocart' onclick='_a2c(501)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=50' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Dhaka-Cox's-St.Martin-Dhaka</h4>
                                    <h5>Price: 5500.00</h5>
                                    <h5>Deal Code: DD994</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA - COX-BAZAR - SAINTMARTIN- DHAKA, Price 5500, Deal Code-994.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(48-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty48'>0</div>
                                    <div class='fr icocart' onclick='_a2c(481)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=48' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Dhaka-Cox's-St.Martin-Dhaka</h4>
                                    <h5>Price: 6250.00</h5>
                                    <h5>Deal Code: DD995</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA - COX-BAZAR - SAINTMARTIN- DHAKA, Price 6250, Deal Code-995.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(45-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty45'>0</div>
                                    <div class='fr icocart' onclick='_a2c(451)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=45' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Dhaka -Khagrachori- Dhaka<br/></h4>
                                    <h5>Price: 4900.00</h5>
                                    <h5>Deal Code: DD996</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA - KHAGRACHORI - DHAKA, Price 4900, Deal Code-996.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(44-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty44'>0</div>
                                    <div class='fr icocart' onclick='_a2c(441)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=44' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Dhaka - Kuakata - Dhaka<br/></h4>
                                    <h5>Price: 5000.00</h5>
                                    <h5>Deal Code: DD997</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA - KUAKATA - DHAKA, Price-5000, Deal Code-997.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(43-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty43'>0</div>
                                    <div class='fr icocart' onclick='_a2c(431)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=43' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Dhaka - Sylhet - Dhaka<br/><br/></h4>
                                    <h5>Price: 2000.00</h5>
                                    <h5>Deal Code: DD998</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Tour/DHAKA - SYLET - DHAKA, Price 2000, Deal Code-998.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(42-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty42'>0</div>
                                    <div class='fr icocart' onclick='_a2c(421)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=42' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>

                       <%-- <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Family Needs</h3>
                                    <h5>Price: 1650.00</h5>
                                    <h5>Deal Code: DC102</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Ifad Instant Noodles 8pcs - Price 125.00 - Code DD017.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(24-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty24'>0</div>
                                    <div class='fr icocart' onclick='_a2c(241)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=24' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Mediplus Toothpaste</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DC105</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Dettol Antiseptic Liquid 500ml - Price 140.00 - Code DD012.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(66-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty66'>0</div>
                                    <div class='fr icocart' onclick='_a2c(661)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=66' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Parfiume & Body Spry</h3>
                                    <h5>Price: 1690.00</h5>
                                    <h5>Deal Code: DC111</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Diploma Full Cream Milk Powder 500gm - Price 2850.00 - Code DD013.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(51-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty51'>0</div>
                                    <div class='fr icocart' onclick='_a2c(511)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=51' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Parfume</h3>
                                    <h5>Price: 1690.00</h5>
                                    <h5>Deal Code: DC</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Fresh Refined Ssugar 1kg - Price 75.00 - Code DD015.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(50-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty50'>0</div>
                                    <div class='fr icocart' onclick='_a2c(501)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=50' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Delight Masala</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DC00000</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Fresh Soyabean Oil 5ltr - Price 505.00 - Code DD014.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(48-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty48'>0</div>
                                    <div class='fr icocart' onclick='_a2c(481)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=48' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Daily Needs</h3>
                                    <h5>Price: 1650.00</h5>
                                    <h5>Deal Code: DC00</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Ifad Instant Noodles 8pcs - Price 125.00 - Code DD017.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(45-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty45'>0</div>
                                    <div class='fr icocart' onclick='_a2c(451)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=45' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Colgate Toothpaste</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DC0</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Ispahani Mirzapore Tea 400gm Price 160.00 - Code DD011.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(44-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty44'>0</div>
                                    <div class='fr icocart' onclick='_a2c(441)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=44' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Oral-B Tooth Brash</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DC000</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Nestle Nescafe Classic Instant Coffee Jar 100gm - Price - 2800.00 - Code DD016.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(43-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty43'>0</div>
                                    <div class='fr icocart' onclick='_a2c(431)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=43' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Vim Bar</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DC100</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Consumer & Daily Needs/Dettol Antiseptic Liquid 500ml - Price 140.00 - Code DD012.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(42-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty42'>0</div>
                                    <div class='fr icocart' onclick='_a2c(421)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=42' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>--%>
                    </div>
                    <div class='cb'></div>
                </div>
                <div class='category' id="4">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-ambulance fa6' aria-hidden='true'></i><a href='Category.aspx?cat=5' target='_blank'>Special Product</a></div>
                        <%--<div class='catsub'><a href='Category.aspx?cat=5&sub=17' target='_blank'><i class='fa fa-coffee fa4' aria-hidden='true'></i>Beverage</a><a href='Category.aspx?cat=5&sub=19' target='_blank'><i class='fa fa-apple fa9' aria-hidden='true'></i>Fruits</a><a href='Category.aspx?cat=5&sub=20' target='_blank'><i class='fa fa-reddit-alien fa6' aria-hidden='true'></i>Foods</a><a href='Category.aspx?cat=5&sub=24' target='_blank'><i class='fa fa-angellist fa3' aria-hidden='true'></i>Food Suppliment</a><a href='Category.aspx?cat=5&sub=37' target='_blank'><i class='fa fa-beer fa4' aria-hidden='true'></i>Juice</a><a href='Category.aspx?cat=5&sub=29' target='_blank'><i class='fa fa-child fa5' aria-hidden='true'></i>Fitness</a></div>--%>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Bio Energy Card<br/><br/></h4>
                                    <h5>Price: 650.00</h5>
                                    <h5>Deal Code: DD501</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/Bio Energy Card, Price-650, Deal Coad-501.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(26-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty26'>0</div>
                                    <div class='fr icocart' onclick='_a2c(261)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=26' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Digital Therapy Mechine</h4>
                                    <h5>Price: 1000.00</h5>
                                    <h5>Deal Code: DD502</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/Digital Therapy Mechine, Price-1000, Deal Coad-502.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(26-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty26'>0</div>
                                    <div class='fr icocart' onclick='_a2c(261)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=26' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Electronic Pest Repellent<br/><br/></h4>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: DD503</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/Electronic Pest Repellent, Price-950, Deal Coad-503.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(89-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty89'>0</div>
                                    <div class='fr icocart' onclick='_a2c(891)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=89' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Radiation-Chip<br/><br/><br/></h4>
                                    <h5>Price: 690.00</h5>
                                    <h5>Deal Code: DD504</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/RADIATION-CHIP, Price-690, Deal Coad-504.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(96-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty96'>0</div>
                                    <div class='fr icocart' onclick='_a2c(961)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=96' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Toxin Cleanser<br/><br/><br/></h4>
                                    <h5>Price: 700.00</h5>
                                    <h5>Deal Code: DD505</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/Toxin Cleanser, Price-700, Deal Coad-505.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(95-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty95'>0</div>
                                    <div class='fr icocart' onclick='_a2c(951)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=95' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h4>Water Purifier<br/><br/><br/></h4>
                                    <h5>Price: 1150.00</h5>
                                    <h5>Deal Code: DD506</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/Special/Water Purifier, Price-1150, Deal Coad-506.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(26-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty26'>0</div>
                                    <div class='fr icocart' onclick='_a2c(261)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=26' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>

                        <%--<div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Toxin Cleanser</h3>
                                    <h5>Price: 6250.00</h5>
                                    <h5>Deal Code: DH326</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Health & Nutrition/Herbalife 250gr - Price 500.00 - Code DD062.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(26-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty26'>0</div>
                                    <div class='fr icocart' onclick='_a2c(261)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=26' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>FAIR & LOVE (Green)</h3>
                                    <h5>Price: 7950.00</h5>
                                    <h5>Deal Code: DH318</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Health & Nutrition/Kalozira Oil 250ml - Price 400.00 - Code DD063.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(89-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty89'>0</div>
                                    <div class='fr icocart' onclick='_a2c(891)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=89' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Grace Queen</h3>
                                    <h5>Price: 1490.00</h5>
                                    <h5>Deal Code: DH324</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Health & Nutrition/Soya Protein - Price 450.00 - Code DD064.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(96-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty96'>0</div>
                                    <div class='fr icocart' onclick='_a2c(961)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=96' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Spirulina</h3>
                                    <h5>Price: 1290.00</h5>
                                    <h5>Deal Code: DH323</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Health & Nutrition/Toxin Cleanser - Price 650.00 - Code DD065.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(95-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty95'>0</div>
                                    <div class='fr icocart' onclick='_a2c(951)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=95' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>--%>

                    </div>
                    <div class='cb'></div>
                </div>
                <%--<div class='category' id="5">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-male fa1' aria-hidden='true'></i><a href='Category.aspx?cat=27' target='_blank'>Gents Gallery</a></div>
                        <div class='catsub'><a href='Category.aspx?cat=27&sub=38' target='_blank'><i class='fa fa-briefcase fa3' aria-hidden='true'></i>Professional Goods</a><a href='Category.aspx?cat=27&sub=28' target='_blank'><i class='fa fa-columns fa5' aria-hidden='true'></i>Leather Goods</a></div>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Waist Belt</h3>
                                    <h5>Price: 650.00</h5>
                                    <h5>Deal Code: DG1001</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Belt - Price 650.00 - Price 300.00 - Code DD051.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(37-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty37'>0</div>
                                    <div class='fr icocart' onclick='_a2c(371)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=37' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Professional Package</h3>
                                    <h5>Price: 1950.00</h5>
                                    <h5>Deal Code: DG1004</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Gents Wallet - Price 950.00 - Code DD052.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(81-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty81'>0</div>
                                    <div class='fr icocart' onclick='_a2c(811)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=81' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Gents Wallet</h3>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: DG1003</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Money Bag - Price 350.00 - Code DD053.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(72-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty72'>0</div>
                                    <div class='fr icocart' onclick='_a2c(721)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=72' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Delight Money Bag</h3>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: 000000</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Travel Bag - Price 1500.00 - Code DD054.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(79-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty79'>0</div>
                                    <div class='fr icocart' onclick='_a2c(791)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=79' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>

                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Waist Belt</h3>
                                    <h5>Price: 650.00</h5>
                                    <h5>Deal Code: DG1001</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Belt - Price 650.00 - Price 300.00 - Code DD051.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(37-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty37'>0</div>
                                    <div class='fr icocart' onclick='_a2c(371)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=37' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Professional Package</h3>
                                    <h5>Price: 1950.00</h5>
                                    <h5>Deal Code: DG1004</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Gents Wallet - Price 950.00 - Code DD052.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(81-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty81'>0</div>
                                    <div class='fr icocart' onclick='_a2c(811)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=81' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Gents Wallet</h3>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: DG1003</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Money Bag - Price 350.00 - Code DD053.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(72-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty72'>0</div>
                                    <div class='fr icocart' onclick='_a2c(721)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=72' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Delight Money Bag</h3>
                                    <h5>Price: 950.00</h5>
                                    <h5>Deal Code: 000000</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Gents Gallery/Travel Bag - Price 1500.00 - Code DD054.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(79-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty79'>0</div>
                                    <div class='fr icocart' onclick='_a2c(791)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=79' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>

                    </div>
                    <div class='cb'></div>
                </div>
                <div class='category' id="6">
                    <div class='catmenu fl'>
                        <div class='cathead'><i class='fa fa-tv fa0' aria-hidden='true'></i><a href='Category.aspx?cat=7' target='_blank'>Electric & Electronic</a></div>
                        <div class='catsub'><a href='Category.aspx?cat=7&sub=11' target='_blank'><i class='fa fa-archive fa4' aria-hidden='true'></i>Kitchen Appliance</a><a href='Category.aspx?cat=7&sub=26' target='_blank'><i class='fa fa-fax fa7' aria-hidden='true'></i>Electric Device </a><a href='Category.aspx?cat=7&sub=36' target='_blank'><i class='fa fa-laptop fa3' aria-hidden='true'></i>Home Appliance</a></div>
                    </div>
                    <div class='catprod fl'>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Chemical Cleaner</h3>
                                    <h5>Price: 6500.00</h5>
                                    <h5>Deal Code: DH302</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Charger Light - Price 850.00 - Code DD015.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(19-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty19'>0</div>
                                    <div class='fr icocart' onclick='_a2c(191)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=19' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Water Purifier</h3>
                                    <h5>Price: 1490.00</h5>
                                    <h5>Deal Code: DH306</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Chemical Cleaner - Price 3500.00 - Code DD012.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(25-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty25'>0</div>
                                    <div class='fr icocart' onclick='_a2c(251)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=25' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Electric Lunch Box</h3>
                                    <h5>Price: 990.00</h5>
                                    <h5>Deal Code: DA504</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Electric Cettle - Price 450.00 - Code DD011.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(29-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty29'>0</div>
                                    <div class='fr icocart' onclick='_a2c(291)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=29' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Room Heater Mini</h3>
                                    <h5>Price: 1390.00</h5>
                                    <h5>Deal Code: DA506</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Electric Lunch Box - Price 750.00 - Code DD013.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(34-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty34'>0</div>
                                    <div class='fr icocart' onclick='_a2c(341)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=34' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>LED TV 32''</h3>
                                    <h5>Price: 23900.00</h5>
                                    <h5>Deal Code: DE702</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Energy Blub - Price 300.00 - Code DD016.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(40-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty40'>0</div>
                                    <div class='fr icocart' onclick='_a2c(401)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=40' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>All Kinds of Electric &  Electronics Goods</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DE700</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Iron MechineCode DD014.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(39-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty39'>0</div>
                                    <div class='fr icocart' onclick='_a2c(391)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=39' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Electric Cettle</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DA501</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Mobile-Power-Bank 10000mhp - Price 450.00 - Code DD017.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(71-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty71'>0</div>
                                    <div class='fr icocart' onclick='_a2c(711)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=71' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Chemical Cleaner</h3>
                                    <h5>Price: 6500.00</h5>
                                    <h5>Deal Code: DH302</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Charger Light - Price 850.00 - Code DD015.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(19-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty19'>0</div>
                                    <div class='fr icocart' onclick='_a2c(191)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=19' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Water Purifier</h3>
                                    <h5>Price: 1490.00</h5>
                                    <h5>Deal Code: DH306</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Chemical Cleaner - Price 3500.00 - Code DD012.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(25-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty25'>0</div>
                                    <div class='fr icocart' onclick='_a2c(251)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=25' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Electric Lunch Box</h3>
                                    <h5>Price: 990.00</h5>
                                    <h5>Deal Code: DA504</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Electric Cettle - Price 450.00 - Code DD011.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(29-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty29'>0</div>
                                    <div class='fr icocart' onclick='_a2c(291)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=29' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Room Heater Mini</h3>
                                    <h5>Price: 1390.00</h5>
                                    <h5>Deal Code: DA506</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Electric Lunch Box - Price 750.00 - Code DD013.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(34-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty34'>0</div>
                                    <div class='fr icocart' onclick='_a2c(341)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=34' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>LED TV 32''</h3>
                                    <h5>Price: 23900.00</h5>
                                    <h5>Deal Code: DE702</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Energy Blub - Price 300.00 - Code DD016.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(40-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty40'>0</div>
                                    <div class='fr icocart' onclick='_a2c(401)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=40' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>All Kinds of Electric &  Electronics Goods</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DE700</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Iron MechineCode DD014.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(39-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty39'>0</div>
                                    <div class='fr icocart' onclick='_a2c(391)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=39' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                        <div class='proditem'>
                            <div class='a2ca'>
                                <strong>
                                    <h3>Electric Cettle</h3>
                                    <h5>Price: 0.00</h5>
                                    <h5>Deal Code: DA501</h5>
                                </strong>
                            </div>
                            <img src='ecommerce/ups/p/Electric & Electronic/Mobile-Power-Bank 10000mhp - Price 450.00 - Code DD017.jpg' alt='' />
                            <div class='a2ca'>
                                <dfn>
                                    <div>Add To Shopping Bag</div>
                                    <div class='fl icocart' onclick='_a2c(71-1)' title='Remove From Shopping Bag'><i class='fa fa-minus-square'></i></div>
                                    <div class='fl icocartq' id='cartqty71'>0</div>
                                    <div class='fr icocart' onclick='_a2c(711)' title='Add To Shopping Bag'><i class='fa fa-plus-square'></i></div>
                                    <div class='cb'><i class='fa fa-shopping-basket'></i></div>
                                </dfn>
                                <a href='Product.aspx?pid=71' target='_blank' title='View Details'><i class='fa fa-external-link-square'></i>View Details</a>
                            </div>
                        </div>
                    </div>
                    <div class='cb'></div>
                </div>--%>
            </div>
            <script type="text/javascript" src="js/cart.js">
            </script>
            <div class="cb">&nbsp;</div>
        </div>
    </div>
    <footer>
        <div class="wrapper">
            <div id="footerl" class="fl">
                <div class="text fl">
                    <span class="texth fl">Delight Discount</span>
                    <div class="textopt fl">
                        <a id="ctl00_HyperLink1" href="Default.aspx">Home</a>|
                    <a id="ctl00_HyperLink12" href="Login.aspx" target="_blank">Login</a>|
                    <a id="ctl00_HyperLink2" href="About.aspx">About Us</a>|
                    <a id="ctl00_HyperLink3" href="#">FAQ</a>|
                    <a id="ctl00_HyperLink9" href="Contact.aspx">Contact Us</a>|
                    <a id="ctl00_HyperLink4" href="http://www.DelightDiscount.com">How to buy</a>
                    </div>
                </div>
                <div class="text fl">
                    <span class="texth fl">Payment</span>
                    <div class="textopt fl">
                        <a id="ctl00_HyperLink5" href="http://www.DelightDiscount.com">Replacement policy</a>|
                    <a id="ctl00_HyperLink6" href="http://www.DelightDiscount.com">Refund policy</a>
                    </div>
                </div>
                <%--<div class="text fl">
                    <span class="texth fl">How to pay</span>
                    <div class="textopt fl">
                        <a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image8" alt="dcash" src="Images/dcash.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image9" alt="bkash" src="Images/bkash.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image10" alt="dbbl" src="Images/dbbl.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image11" alt="mcash" src="Images/mcash.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image12" alt="mycash" src="Images/mycash.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image13" alt="qcash" src="Images/qcash.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image14" alt="visa" src="Images/visa.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image15" alt="master" src="Images/master.png" style="border-width: 0px; height: 34px" />
                        </a><a href="http://www.DelightDiscount.com">
                            <img id="ctl00_Image16" alt="amex" src="Images/amex.png" style="border-width: 0px; height: 34px" />
                        </a>
                    </div>
                </div>--%>
            </div>
            <div id="footerr" class="fr">
                <div class="textopt">
                    <span class="fl"><i class="fa fa-question-circle"></i>Question</span>
                    <span class="fl"><i class="fa fa-graduation-cap"></i>Opinion</span>
                    <span class="fl"><i class="fa fa-envelope"></i>Complain</span>
                </div>
                <div class="textopt">
                    <span class="fl">Email: </span>
                    <span class="fl">info@delightdiscount.com</span>
                </div>
                <div class="textopt">
                    <a href="" target="_blank"><i class="fa fa-facebook-square"></i></a>
                    <a href="" target="_blank"><i class="fa fa-twitter-square"></i></a>
                    <a href="" target="_blank"><i class="fa fa-google-plus-square"></i></a>
                    <a href="" target="_blank"><i class="fa fa-linkedin-square"></i></a>
                </div>
                <div id="visitoronline">
                </div>
            </div>
        </div>
    </footer>

    <script>
        $(".cathead a").on('click', function () { var x = $(this).parent().parent().parent().find(".catprod.fl div.proditem"); var y = []; for (var i = 0; i < x.length; i++) { y.push($(x[i]).html()); } sessionStorage.setItem("catTarget", y); return true; }); $(".catsub a").on('click', function () { var x = $(this).parent().parent().parent().find(".catprod.fl div.proditem"); var y = []; for (var i = 0; i < x.length; i++) { y.push($(x[i]).html()); } sessionStorage.setItem("catTarget", y); return true; }); function setCat(id) { var x = $("#" + id).find(".catprod.fl div.proditem"); var y = []; for (var i = 0; i < x.length; i++) { y.push($(x[i]).html()); } sessionStorage.setItem("catTarget", y); return true; }; $(".a2ca a").on('click', function () { var name = $(this).parent().parent().find('strong h3').text(); var price = $(this).parent().parent().find('strong h5:first-of-type').text(); var code = $(this).parent().parent().find('strong h5:last-of-type').text(); var img = $(this).parent().parent().find('img').attr('src'); sessionStorage.setItem("prodTarget", name + "^" + price + "^" + code + "^" + img); return true; });

    </script>

</asp:Content>
