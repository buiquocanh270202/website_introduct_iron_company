<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com -->
        <title>New - All the information you need is here</title>
        <meta name="description" 
              content="News is a place to share accumulated construction knowledge and share or share the inherent experiences of X Company Limited."  />

        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="news/news.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="home/home.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
        <link rel="stylesheet" href="listnews/css/style.css">
        <link rel="stylesheet" href="listnews/css/responsive.css">
        <link rel="stylesheet" href="listnews/css/lightslider.min.css">
        <link rel="stylesheet" href="listnews/css/lightgallery.min.css">
        <link rel="stylesheet" href="home/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <style>
            .badge:after{
                content:attr(value);
                font-size:12px;
                background: #189eff;
                border-radius:50%;
                padding:2px;
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
                color:rgba(255,122,122,.3);
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
                    <a class="navbar-brand" href="HomeInforController"><img style="margin: -29px" src="https://scontent.fhan14-3.fna.fbcdn.net/v/t1.15752-9/335393788_6236929339680056_567381039334376682_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=bB7wiuc3iDMAX8-gy1f&_nc_ht=scontent.fhan14-3.fna&oh=03_AdSgS2EfmQ0ypVI6n9hUdfnZmsWdYSbglooGcQlcb0ttSA&oe=643A6735" alt="LOGO" width="150px"/></a>
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
                        <c:forEach items="${requestScope.listInforCate}" var="LPP">
                            <c:if test = "${LPP.getpId() eq 0 && LPP.isStatus()}">
                                <li class="nav-item dropdown dropbtn">
                                    <a>${LPP.getName()}</a>
                                    <div class="dropdown">
                                        <div class="dropdown-content">
                                            <c:forEach items="${requestScope.listInforCate}" var="c">
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
                                        <c:if test="${LC.status eq 1}">
                                            <a href="HomeCategoryController?cateId=${LC.cateId}" style="text-decoration: none ;">${LC.cateName}</a>
                                        </c:if>
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
                                   style="font-size:20px; color: white; background-color: #189eff" 
                                   value="${(sessionScope.carts == null) || (sessionScope.carts.size() == 0) ? "0" : sessionScope.carts.size()}">
                                    &#xf07a;
                                </i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="jumbotron text-center" style="background-image: url(https://c1.wallpaperflare.com/preview/178/164/53/architecture-industry-factory-building-building.jpg); background-repeat: no-repeat; background-size: 150%">
            <c:forEach items="${requestScope.listInforCate}" var="LIC">
                <c:if test="${LIC.id eq pId}">
                    <h1 style="color: white">${LIC.name}</h1>
                </c:if>
            </c:forEach>
        </div>

        <div style="text-align: center;">
            <ul style="display: inline-block;">
                <c:forEach items="${requestScope.listInforCate}" var="LIC">
                    <c:if test="${LIC.pId eq pId && LIC.status eq true}">
                        <li style="display: inline-block; padding-left : 50px; font-size: 20px"><a href="HomeListInforByCate?id=${LIC.id}&pId=${LIC.pId }&index=1">${LIC.name}</a></li>
                        </c:if>
                    </c:forEach>
            </ul>
        </div>

        <div id="about" class="container-fluid">

            <div class="row">
                <div class="col-sm-8">

                </div>
            </div>
        </div>

        <section class="news">
            <div class="container">
                <h1 class="name h1 left">
                    <c:forEach items="${requestScope.listInforCate}" var="LIC">
                        <c:if test="${LIC.id eq ids}">
                            ${LIC.name}
                        </c:if>
                    </c:forEach>
                </h1>
                <div class="description-culture">

                </div>
                <div class="news-cnt">
                    <c:forEach items="${requestScope.listInfor}" begin="0" end="0" var="LI">
                        <a href="HomeNewsController?iId=${LI.iId}" class="it-news fr">
                            <div class="img">
                                <img src="${LI.coverImgPath}">
                            </div>
                            <div class="txt">
                                <p class="date">
                                    <i class="fa fa-clock-o" aria-hidden="true"></i>${LI.createDate}
                                </p>
                                <h3>${LI.title}</h3>
                            </div>
                        </a>
                    </c:forEach>

                    <c:forEach items="${requestScope.listInfor}" begin="1" end="3" var="LI">
                        <a href="HomeNewsController?iId=${LI.iId}" class="it-news">
                            <div class="img">
                                <img src="${LI.coverImgPath}" alt="">
                            </div>
                            <div class="txt">
                                <p class="date">
                                    <i class="fa fa-clock-o" aria-hidden="true"></i>${LI.createDate}
                                </p>
                                <h3>${LI.title}</h3>

                            </div>
                        </a>
                    </c:forEach>
                </div>
                <div class="news-cnt sc">
                    <c:forEach items="${requestScope.listInfor}" begin="4" end="9" var="LI">
                        <a href="HomeNewsController?iId=${LI.iId}" class="it-news fr">
                            <div class="img">
                                <img src="${LI.coverImgPath}" alt="">
                            </div>
                            <div class="txt">
                                <p class="date">
                                    <i class="fa fa-clock-o" aria-hidden="true"></i> ${LI.createDate}
                                </p>
                                <h3>${LI.title}</h3>
                            </div>
                        </a>
                    </c:forEach>
                </div>

                <div class="page">
                    <c:forEach begin="1" end="${size1}" var="num">
                        <a href="HomeListInforByCate?id=${ids}&pId=${pId}&index=${num}">${num}</a>
                    </c:forEach>
                </div>
            </div>
        </section>



        <!-- Container (About Section) -->

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
        <script src="news/news.js"></script>
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
