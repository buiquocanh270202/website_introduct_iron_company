<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com -->
        <title>Your Best Scaffolding Manufacturer & Supplier - Wellmade</title>
        <meta name="description" content="Specializing in scaffolding, formwork, scaffolding accessories, steel cables, construction machines, safety nets and construction equipment and many other accessories."  />
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta property="og:title" content="Scaffolding - what is x scaffolding company ? Top 10 best scaffolding company" />
        <meta property="og:description" content="Specializing in scaffolding, formwork, scaffolding accessories, steel cables, construction machines, safety nets and construction equipment and many other accessories." />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="home/home.css">
        <!--        <link rel="stylesheet" href="home/product.css">-->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!-- icon cart -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

        <style>
            .badge:after{
                content:attr(value);
                font-size:12px;
                background: #189eff;
                border-radius:50%;
                padding:3px;
                position:relative;
                left:-2px;
                top:-10px;
                opacity:0.9;

            }
            .fa.badge{
                background: #189eff;
                padding: 10%;
            }
        </style>

        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">

        <style>
            .autoComplete_wrapper{
                display:inline-block;
                position:relative
            }
            .autoComplete_wrapper>input{
                height:3rem;
                width:100%;
                margin:0;
                padding:0 2rem 0 3.2rem;
                box-sizing:border-box;
                -moz-box-sizing:border-box;
                -webkit-box-sizing:border-box;
                font-size:1.5rem;
                text-overflow:ellipsis;
                color:black;
                outline:0;
                border-radius:0.5rem;
                border:.05rem solid rgba(255,122,122,.5);
                background-image:url(images/search.svg);
                background-size:1.4rem;
                background-position:left 1.05rem top .8rem;
                background-repeat:no-repeat;
                background-origin:border-box;
                background-color:#fff;
                transition:all .4s ease;
                -webkit-transition:all -webkit-transform .4s ease
            }
            .autoComplete_wrapper>input::placeholder{
                color:rgba(255,122,122,.5);
                transition:all .3s ease;
                -webkit-transition:all -webkit-transform .3s ease
            }
            .autoComplete_wrapper>input:hover::placeholder{
                color:rgba(255,122,122,.6);
                transition:all .3s ease;
                -webkit-transition:all -webkit-transform .3s ease
            }
            .autoComplete_wrapper>input:focus::placeholder{
                padding:.1rem .6rem;
                font-size:1rem;
                color:rgba(255,122,122,.4)
            }
            .autoComplete_wrapper>input:focus::selection{
                background-color:rgba(255,122,122,.15)
            }
            .autoComplete_wrapper>input::selection{
                background-color:rgba(255,122,122,.15)
            }
            .autoComplete_wrapper>input:hover{
                color:rgba(255,122,122,.8);
                transition:all .3s ease;
                -webkit-transition:all -webkit-transform .3s ease
            }
            .autoComplete_wrapper>input:focus{
                color:#ff7a7a;
                border:.06rem solid rgba(255,122,122,.8)
            }
            .autoComplete_wrapper>ul{
                position:absolute;
                max-height:226px;
                overflow-y:scroll;
                box-sizing:border-box;
                left:0;
                right:0;
                margin:.5rem 0 0 0;
                padding:0;
                z-index:1;
                list-style:none;
                border-radius:.6rem;
                background-color:#fff;
                border:1px solid rgba(33,33,33,.07);
                box-shadow:0 3px 6px rgba(149,157,165,.15);
                outline:0;
                transition:opacity .15s ease-in-out;
                -moz-transition:opacity .15s ease-in-out;
                -webkit-transition:opacity .15s ease-in-out
            }
            .autoComplete_wrapper>ul:empty,.autoComplete_wrapper>ul[hidden]{
                display:block;
                opacity:0;
                transform:scale(0)
            }
            .autoComplete_wrapper>ul>li{
                margin:.3rem;
                padding:.3rem .5rem;
                text-align:left;
                font-size:1.5rem;
                color:#212121;
                border-radius:.35rem;
                background-color:#fff;
                white-space:nowrap;
                overflow:hidden;
                text-overflow:ellipsis;
                transition:all .2s ease
            }
            .autoComplete_wrapper>ul>li mark{
                background-color:transparent;
                color:#ff7a7a;
                font-weight:700
            }
            .autoComplete_wrapper>ul>li:hover{
                cursor:pointer;
                background-color:rgba(255,122,122,.15)
            }
            .autoComplete_wrapper>ul>li[aria-selected=true]{
                background-color:rgba(255,122,122,.15)
            }
            @media only screen and (max-width:600px){
                .autoComplete_wrapper>input{
                    width:18rem
                }
            }

        </style>
    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="HomeInforController"><img style="margin: -29px" src="https://scontent.fhan14-3.fna.fbcdn.net/v/t1.15752-9/335393788_6236929339680056_567381039334376682_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=bB7wiuc3iDMAX8-gy1f&_nc_ht=scontent.fhan14-3.fna&oh=03_AdSgS2EfmQ0ypVI6n9hUdfnZmsWdYSbglooGcQlcb0ttSA&oe=643A6735" alt="LOGO" width="100px"/></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <form autocomplete="off" action="/SWP391_SE1637-NET/SearchInforController" style="margin-top: 3%">
                                <div class="input-group" style="display: flex">
                                    <div class="autoComplete_wrapper">
                                        <input name="txt" id="autoComplete" type="text" dir="ltr" spellcheck=false autocorrect="off" autocomplete="off" autocapitalize="off" style="">

                                    </div>
                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-danger">Search</button>
                                    </div>
                                </div> 
                            </form>
                        </li>
                        <c:forEach items="${requestScope.cate}" var="LPP">
                            <c:if test = "${LPP.getpId() eq 0 && LPP.isStatus()}">
                                <li class="nav-item dropdown dropbtn">
                                    <a>${LPP.getName()}</a>
                                    <div class="dropdown">
                                        <div class="dropdown-content">
                                            <c:forEach items="${requestScope.cate}" var="c">
                                                <c:if test="${c.pId eq LPP.id && c.isStatus()}">
                                                    <a href="HomeListInforByCate?id=${c.id}&pId=${c.pId}&index=1" style="text-decoration: none">${c.name}</a>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </li>
                            </c:if>
                        </c:forEach>
                        <li class="nav-item dropdown dropbtn"><a href="/SWP391_SE1637-NET/homeproduct">PRODUCT</a>
                            <div class="dropdown">
                                <div class="dropdown-content">
                                    <c:forEach items="${requestScope.listCate}" var="LC">
                                        <a href="HomeCategoryController?cateId=${LC.cateId}" style="text-decoration: none">${LC.cateName}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="HomeOrderController">ORDER</a>
                        </li>
                        <li>
                            <a  href="CartController" >
                                <i id="cartNumPC"  class="fa badge zmdi zmdi-shopping-cart icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" 
                                   style="font-size:20px; color: white" 
                                   value="${(sessionScope.carts == null) || (sessionScope.carts.size() == 0) ? "0" : sessionScope.carts.size()}">
                                    &#xf07a;
                                </i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="jumbotron text-center" style="background-image: url(https://c1.wallpaperflare.com/preview/178/164/53/architecture-industry-factory-building-building.jpg); background-repeat: no-repeat; background-size: 150%; background-origin: inherit">
            <h1 style="color: white">X SCAFFOLDING COMPANY</h1> 
            <p style="color: white">We are trading steel</p> 
        </div>

        <!-- Container (About Section) -->

        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <a href="HomeNewsController?iId=1" style="text-decoration: none"><h2>Introduce</h2></a><br>
                    <meta property="og:title" content="Giới thiệu - Cốp Pha Việt" /><meta property="og:description" content="Specializing in scaffolding, formwork, scaffolding accessories, steel cables, construction machines, safety nets and construction equipment and many other accessories." />
                    <!--                    description:Specializing in scaffolding, formwork, scaffolding accessories, steel cables, construction machines, safety nets and construction equipment and many other accessories-->
                    <c:forEach items="${requestScope.list}" var="LI">
                        <c:if test = "${LI.iId eq 1}">

                            <!--<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>-->
                            <p>${LI.description}</p>
                        </c:if>

                    </c:forEach>
                            <br><a href="HomeNewsController?iId=1"><button class="btn btn-default btn-lg" >Get in Touch</button></a>
                </div>
                <div class="col-sm-4">
                    <!--        <span class="glyphicon glyphicon-signal logo"></span>-->
                    <c:forEach items="${requestScope.list}" var="LI">
                        <c:if test = "${LI.iId eq 1}">
                            <a href="HomeNewsController?iId=1"><img heigh="300px" width="400px" src="${LI.coverImgPath}" alt="alt"/></a>
                        </c:if>

                    </c:forEach>

                </div>

            </div>
        </div>

        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <c:forEach items="${requestScope.list}" var="LI">
                        <c:if test = "${LI.iId eq 2}">
                            <a href="HomeNewsController?iId=2"> <img heigh="300px" width="400px" src="${LI.coverImgPath}" alt="alt"/></a>
                        </c:if>

                    </c:forEach>

                </div>
                <div class="col-sm-8">
                    <a href="HomeNewsController?iId=2" style="text-decoration: none"><h2>Vision</h2></a><br>
                    <!--<h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>-->
                    <!--      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>-->
                    <c:forEach items="${requestScope.list}" var="LI">
                        <c:if test = "${LI.iId eq 2}">
                            <!--<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>-->
                            <p>${LI.description}</p>
                        </c:if>
                    </c:forEach>

                </div>
            </div>
        </div>

        <!-- Container (Services Section) -->
        <div id="services" class="container-fluid text-center">
            <h2>SERVICES</h2>
            <h4>What we offer</h4>
            <br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-off logo-small"></span>
                    <h4>POWER</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-heart logo-small"></span>
                    <h4>LOVE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-lock logo-small"></span>
                    <h4>JOB DONE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
            </div>
            <br><br>
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-leaf logo-small"></span>
                    <h4>GREEN</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-certificate logo-small"></span>
                    <h4>CERTIFIED</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-wrench logo-small"></span>
                    <h4 style="color:#303030;">HARD WORK</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
            </div>
        </div>

        <!-- Container (Portfolio Section) -->
        <div id="portfolio" class="container-fluid text-center bg-grey">
            <h2>Participating projects</h2><br>
            <h4>What we have created</h4>
            <div class="row text-center slideanim">
                <c:forEach items="${requestScope.list}" var="LI">
                    <c:if test = "${LI.id eq 3}">
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="HomeNewsController?iId=${LI.iId}"><img src="${LI.coverImgPath}" alt="Paris" width="400" height="300"></a>
                                <p><strong><a href="HomeNewsController?iId=${LI.iId}">${LI.title}</a></strong></p>
                                <p>Yes, we built ${LI.title}</p>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>

                <!--    <div class="col-sm-4">
                      <div class="thumbnail">
                        <img src="newyork.jpg" alt="New York" width="400" height="300">
                        <p><strong>New York</strong></p>
                        <p>We built New York</p>
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="thumbnail">
                        <img src="sanfran.jpg" alt="San Francisco" width="400" height="300">
                        <p><strong>San Francisco</strong></p>
                        <p>Yes, San Fran is ours</p>
                      </div>
                    </div>-->
            </div><br>

            <h2>What users say about the company</h2>
            <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <h4>"This company is the best. I am so happy with the result!"<br><span>Michael Roe, Vice President, Comment Box</span></h4>
                    </div>
                    <div class="item">
                        <h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
                    </div>
                    <div class="item">
                        <h4>"Could I... BE any more happy with this company?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- Container (Pricing Section) -->



        <!-- Container (Contact Section) -->
        <footer id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
                    <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
                </div>
                <div class="col-sm-7 slideanim">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Image of location/map -->
        <!-- <img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">
        
        <footer class="container-fluid text-center">
          <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
          </a>
          <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
        </footer> -->


        <script src="home/home.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@10.2.7/dist/autoComplete.min.js"></script>
        <script>
            const autoCompleteJS = new autoComplete({
            placeHolder: "Search for...",
                    data: {
                    src: [<c:forEach items="${requestScope.list}" var="LI">
                    "${LI.title}"${not status.last ? ',' : ''}
            </c:forEach>],
                            cache: true,
                    },
                    resultItem: {
                    highlight: true
                    },
                    events: {
                    input: {
                    selection: (event) => {
                    const selection = event.detail.selection.value;
                    autoCompleteJS.input.value = selection;
                    }
                    }
                    }
            });
        </script>
        <script>

            function addToCartAsync(pId) {

            axios.get('AddToCartController', {

            params: {
            pId: pId

            },
                    responseType: 'json'


            }).then((response) => {
            // Update number product in carts

            document.getElementById("cartNumPC").setAttribute('value', response.data.length);
            toast({
            title: 'Success',
                    message: 'Add product to cart successfully',
                    type: 'success',
                    duration: 3000
            });
            });
            }

        </script>
        <%@include file="components/utility.jsp" %>
    </body>
</html>
