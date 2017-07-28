<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="~/MDefault.aspx.cs" Inherits="DelightDiscount.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Home</title>

    <style>
        .serviceBtnDiv {
            height: 100px;
            cursor: pointer;
        }
        .servicePartnerSection .col-md-3 {
            padding: 10px;
        }
        .serviceBtnDiv .step1{
            height: 100px;
        }
        .serviceBtnDiv .step1 img{
            max-height: 100px;
            min-height: 75px;
            width: auto;
        }
        .serviceBtnDiv .step2 {
            height: 100px;
            background: transparent;
            position: absolute;
            width: calc(100% - 20px);
            margin: 0 auto;
            top: 11px;
            color: #444;
            -ms-transition: all 0.3s;
            -o-transition: all 0.3s;
            -webkit-transition: all 0.3s;
            transition: all 0.3s;
        }

        .serviceBtnDiv .step2:hover {
            background: #083339;
            background: rgba(8, 51, 57, 0.95);
            color: #ededed;
            -ms-transition: all 0.3s;
            -o-transition: all 0.3s;
            -webkit-transition: all 0.3s;
            transition: all 0.3s;
        }

        .serviceBtnDiv .step2 .comName{
            margin-top: 5px;
        }

        .rightTopSlider .container {
            max-width: 100%;
            padding-left: 5px;
            padding-right: 5px;
        }

        /*Carousel Up Down*/

        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 100%;
            margin: auto;
        }
        .vertical .carousel-inner {
            padding: 5px;
            height: 230px;
            background: linear-gradient(to bottom, rgba(20, 169, 220, 0.5), rgba(20, 142, 220, 0.33))
        }

        .carousel.vertical .item {
            -ms-transition: 0.6s cubic-bezier(0.04, 0.45, 0.82, 0.91) top;
            -o-transition: 0.6s cubic-bezier(0.04, 0.45, 0.82, 0.91) top;
            -webkit-transition: 0.6s cubic-bezier(0.04, 0.45, 0.82, 0.91) top;
            transition: 0.6s cubic-bezier(0.04, 0.45, 0.82, 0.91) top;
            height: 220px;
        }

        .carousel.vertical .item img{
            height: 220px;
            width: 100%;
            overflow-x: hidden;
            /*background: linear-gradient(to bottom, #dc143c, #dc143c)*/
        }

        .carousel.vertical .active {
            top: 0;
        }

        .carousel.vertical .next {
            top: -400px;
        }

        .carousel.vertical .prev {
            top: 400px;
        }

        .carousel.vertical .next.left,
        .carousel.vertical .prev.right {
            top: 0;
        }

        .carousel.vertical .active.left {
            top: -400px;
        }

        .carousel.vertical .active.right {
            top: 400px;
        }

        .carousel.vertical .item {
            left: 0;
        }

        /*Carousel Up Down*/
        .carousel-control.right {
            background: black;
            height: 30px;
            width: 25px;
        }
        .carousel-control.left.top{
            
        }
        .carousel-control.right.bottom {
            margin-top: 31px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-9">
                <div id="servicePartner" class="servicePartnerSection row text-center">
                    <h3>Service Partners</h3>
                    <hr/>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/01.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/02.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/03.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/04.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/05.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/06.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/07.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/08.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/09.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/10.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/11.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/01.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/12.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/03.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/02.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/06.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/04.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/09.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/05.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/07.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/09.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/10.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/11.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/01.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/12.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/03.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/02.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/06.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/04.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/09.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/05.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="serviceBtnDiv">
                            <div class="step1">
                                <img class="img img-responsive img-thumbnail center-block" src="img/cLogo/07.png"/>
                            </div>
                            <div class="step2">
                                <div class="">
                                    <h3 class="comName"> Company Name </h3>
                                    <p class="comAdd">
                                        H#12, R# 15, Nighty.<br/>
                                        Dhaka, Bangladesh.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="panel text-center">
                    <div class="page-header" style="margin-top: 20px;">
                        <h3>Packages</h3>
                    </div>
                    <div class="panel-body">
                        <div class="rightTopSlider">
                            <div class="container">
                                <div class="row-fluid">
                                    <div class="span6 offset3">
                                        <div id="myCarousel" class="carousel slide vertical">
                                            <!-- Carousel items -->
                                            <div class="carousel-inner">
                                                <div class="active item">
                                                    <img src="img/choosing-a-commercial-rea-estate-broker.jpg" alt="First Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/coaching-web.jpg" alt="Second Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/CommercialIcon.png" alt="Third Slide"/>
                                                </div>
                                            </div>
                                            <!-- Carousel nav -->
                                            <a class="carousel-control right top" href="#myCarousel" data-slide="prev"><i class="fa fa-angle-up"></i></a>
                                            <a class="carousel-control right bottom" href="#myCarousel" data-slide="next"><i class="fa fa-angle-down"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="rightTopSlider">
                            <div class="container">
                                <div class="row-fluid">
                                    <div class="span6 offset3">
                                        <div id="myCarousel2" class="carousel slide vertical">
                                            <!-- Carousel items -->
                                            <div class="carousel-inner">
                                                <div class="active item">
                                                    <img src="img/CommercialIcon.png" alt="First Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/coaching-web.jpg" alt="Second Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/choosing-a-commercial-rea-estate-broker.jpg" alt="Third Slide"/>
                                                </div>
                                            </div>
                                            <!-- Carousel nav -->
                                            <a class="carousel-control right top" href="#myCarousel2" data-slide="prev"><i class="fa fa-angle-up"></i></a>
                                            <a class="carousel-control right bottom" href="#myCarousel2" data-slide="next"><i class="fa fa-angle-down"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="rightTopSlider">
                            <div class="container">
                                <div class="row-fluid">
                                    <div class="span6 offset3">
                                        <div id="myCarousel3" class="carousel slide vertical">
                                            <!-- Carousel items -->
                                            <div class="carousel-inner">
                                                <div class="active item">
                                                    <img src="img/choosing-a-commercial-rea-estate-broker.jpg" alt="First Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/coaching-web.jpg" alt="Second Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/CommercialIcon.png" alt="Third Slide"/>
                                                </div>
                                            </div>
                                            <!-- Carousel nav -->
                                            <a class="carousel-control right top" href="#myCarousel3" data-slide="prev"><i class="fa fa-angle-up"></i></a>
                                            <a class="carousel-control right bottom" href="#myCarousel3" data-slide="next"><i class="fa fa-angle-down"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="rightTopSlider">
                            <div class="container">
                                <div class="row-fluid">
                                    <div class="span6 offset3">
                                        <div id="myCarousel4" class="carousel slide vertical">
                                            <!-- Carousel items -->
                                            <div class="carousel-inner">
                                                <div class="active item">
                                                    <img src="img/choosing-a-commercial-rea-estate-broker.jpg" alt="First Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/coaching-web.jpg" alt="Second Slide"/>
                                                </div>
                                                <div class="item">
                                                    <img src="img/CommercialIcon.png" alt="Third Slide"/>
                                                </div>
                                            </div>
                                            <!-- Carousel nav -->
                                            <a class="carousel-control right top" href="#myCarousel4" data-slide="prev"><i class="fa fa-angle-up"></i></a>
                                            <a class="carousel-control right bottom" href="#myCarousel4" data-slide="next"><i class="fa fa-angle-down"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        $(".step2").css("opacity", "0");
        $(".serviceBtnDiv").hover(
            function () {
                $(this).find(".step1").css("opacity","0.8");
                $(this).find(".step2").css("opacity", "1");
            }, function () {
                $(this).find(".step1").css("opacity", "1");
                $(this).find(".step2").css("opacity", "0");
            }
        );
        $('.carousel').carousel({
            interval: 3000,
            pause: false
        });
    </script>
</asp:Content>
