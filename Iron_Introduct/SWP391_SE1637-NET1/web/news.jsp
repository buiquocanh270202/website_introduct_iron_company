<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com -->
        <title>${requestScope.news.title}</title>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="${requestScope.news.description}">

        <!--<link rel="stylesheet" href="news/news.css">-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="home/home.css">
        <link rel="stylesheet" href="cart/css/cart.css"/>
        <link href="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/css/lightgallery.css" rel="stylesheet">
        <!-- icon cart -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

        <style>
            .badge:after{
                content:attr(value);
                font-size:12px;
                background: blue;
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
        <!--<script src="js/owl.carousel.js"></script>-->
        <style>
            #btn-back-to-top {
                position: fixed;
                bottom: 20px;
                right: 20px;
                display: none;
            }

        </style>
        <style>

            .autocomplete-items {
                position: absolute;
                border: 1px solid #d4d4d4;
                border-bottom: none;
                border-top: none;
                z-index: 99;
                /*position the autocomplete items to be the same width as the container:*/
                top: 100%;
                left: 0;
                right: 0;
            }
            .autocomplete-items div {
                padding: 10px;
                cursor: pointer;
                background-color: white;
                border-bottom: 1px solid #d4d4d4;
                color: black;
                text-align: start;
            }
            .autocomplete-items div:hover {
                /*when hovering an item:*/
                background-color: #e9e9e9;
            }
            .autocomplete-active {
                /*when navigating through the items using the arrow keys:*/
                background-color: DodgerBlue !important;
                color: black;
            }
            .hidden {
                display: none;
            }
            body {
                font-family: Montserrat;
            }
        </style>
    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

        <nav id="navbar" class="navbar navbar-default ">
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
                            <form autocomplete="off" action="/SWP391_SE1637-NET/SearchInforController" style="width: 50%; margin-left: 35%; padding-top: 1.85%">
                                <div class="input-group" style="display: flex">
                                    <input  class="form-control" size="50" placeholder="Search.."  id="myInput" type="text" name="txt">
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
                                <a href="/SWP391_SE1637-NET/CartController" >
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
            <h2 style="font-family: Montserrat, sans-serif; font-size: 60px; color: white">News</h2> 
        </div>


        <!--        <script>
                    $(document).ready(function () {
                        $("a[rel=fancybox]").fancybox();
                    });
                </script>-->

        <!-- Container (About Section) -->

        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                    <div items="${requestScope.news}" var="news">
                        <h1>${news.title}</h1>
                        <p>${news.description}</p>
                        <div id="news__content" >
                            ${news.content}
                        </div>
                    </div>
                    <h2>Related news</h2>
                    <div>
                        <c:forEach items="${requestScope.listInforByCate}" begin="0" end="4" var="LIBC">
                            <div style="display: flex; padding: 25px">
                                <a href="HomeNewsController?iId=${LIBC.iId}&id=${LIBC.id}">
                                    <img src="${LIBC.coverImgPath}" alt="" width="100px">
                                </a>
                                <a href="HomeNewsController?iId=${LIBC.iId}&id=${LIBC.id}" style="padding: 20px">${LIBC.title}</a>
                            </div>
                        </c:forEach>
                    </div>
                </div>


                <div id="imageGallery" style="display: none;">
                    <ul id="xxx" class="list-unstyled row">
                        <c:forEach var="img" items="${requestScope.listImg}">
                            <li class="col-xs-6 col-sm-4 col-md-3" data-src="${img}">
                                <a href="">
                                    <img  class="img-responsive lightbox__image__display" src="${img}" alt="img" style="width: 100px; height: 100px;"/>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="col-sm-12" >

                </div>
            </div>
        </div>
        <button
            type="button"
            class="btn btn-danger btn-floating btn-lg"
            id="btn-back-to-top"
            >
            <i class="fas fa-arrow-up">TOP</i>
        </button>




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


        <!--                <script src="home/home.js"></script>
                        <script src="news/news.js"></script>-->
        <%--<%@include file="components/utility.jsp" %>--%>
        <script src="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/js/lightgallery.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-pager.js/master/dist/lg-pager.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-autoplay.js/master/dist/lg-autoplay.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-fullscreen.js/master/dist/lg-fullscreen.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-zoom.js/master/dist/lg-zoom.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-hash.js/master/dist/lg-hash.js"></script>
        <script src="https://cdn.rawgit.com/sachinchoolur/lg-share.js/master/dist/lg-share.js"></script>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lightview/2.0.0/js/lightview.js"></script>


        <script>
//            lightGallery(document.getElementById('xxx'), {
//                hash: false,
//                easing: "ease",
//                slideEndAnimation: true,
//                startAnimationDuration: 400,
//
//            });

            lightGallery(document.getElementById('xxx'), {
                thumbnail: true,
            });



            let div = document.getElementById('news__content');
            //console.log(div);
            // lay anh trong content
            let imgs = div.querySelectorAll('img');
            for (let i = 0; i < imgs.length; i++) {
                imgs.item(i).classList.add('lightboxImage');
                //console.log(imgs.item(i));
            }



            let lightboxImages = document.querySelectorAll('.lightboxImage');
            //console.log(lightboxImages);
            let lightboxImagesDisplay = document.querySelectorAll('.lightbox__image__display');
            //console.log(lightboxImagesDisplay);
            lightboxImagesDisplay = document.querySelectorAll('.lightbox__image__display');
            for (let i = 0; i < lightboxImages.length; i++) {
                lightboxImages.item(i).addEventListener("click", function () {
                    lightboxImagesDisplay.item(i).click();

                });

            }






        </script>
        <script>
            function autocomplete(inp, arr) {
                /*the autocomplete function takes two arguments,
                 the text field element and an array of possible autocompleted values:*/
                var currentFocus;
                /*execute a function when someone writes in the text field:*/
                inp.addEventListener("input", function (e) {
                    var a, b, i, val = this.value;
                    /*close any already open lists of autocompleted values*/
                    closeAllLists();
                    if (!val) {
                        return false;
                    }
                    currentFocus = -1;
                    /*create a DIV element that will contain the items (values):*/
                    a = document.createElement("DIV");
                    a.setAttribute("id", this.id + "autocomplete-list");
                    a.setAttribute("class", "autocomplete-items");
                    /*append the DIV element as a child of the autocomplete container:*/
                    this.parentNode.appendChild(a);
                    /*for each item in the array...*/
                    for (i = 0; i < arr.length; i++) {
                        /*check if the item starts with the same letters as the text field value:*/
                        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                            /*create a DIV element for each matching element:*/
                            b = document.createElement("DIV");
                            /*make the matching letters bold:*/
                            b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                            b.innerHTML += arr[i].substr(val.length);
                            /*insert a input field that will hold the current array item's value:*/
                            b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                            /*execute a function when someone clicks on the item value (DIV element):*/
                            b.addEventListener("click", function (e) {
                                /*insert the value for the autocomplete text field:*/
                                inp.value = this.getElementsByTagName("input")[0].value;
                                /*close the list of autocompleted values,
                                 (or any other open lists of autocompleted values:*/
                                closeAllLists();
                            });
                            a.appendChild(b);
                        }
                    }
                });
                /*execute a function presses a key on the keyboard:*/
                inp.addEventListener("keydown", function (e) {
                    var x = document.getElementById(this.id + "autocomplete-list");
                    if (x)
                        x = x.getElementsByTagName("div");
                    if (e.keyCode == 40) {
                        /*If the arrow DOWN key is pressed,
                         increase the currentFocus variable:*/
                        currentFocus++;
                        /*and and make the current item more visible:*/
                        addActive(x);
                    } else if (e.keyCode == 38) { //up
                        /*If the arrow UP key is pressed,
                         decrease the currentFocus variable:*/
                        currentFocus--;
                        /*and and make the current item more visible:*/
                        addActive(x);
                    } else if (e.keyCode == 13) {
                        /*If the ENTER key is pressed, prevent the form from being submitted,*/
                        e.preventDefault();
                        if (currentFocus > -1) {
                            /*and simulate a click on the "active" item:*/
                            if (x)
                                x[currentFocus].click();
                        }
                    }
                });
                function addActive(x) {
                    /*a function to classify an item as "active":*/
                    if (!x)
                        return false;
                    /*start by removing the "active" class on all items:*/
                    removeActive(x);
                    if (currentFocus >= x.length)
                        currentFocus = 0;
                    if (currentFocus < 0)
                        currentFocus = (x.length - 1);
                    /*add class "autocomplete-active":*/
                    x[currentFocus].classList.add("autocomplete-active");
                }
                function removeActive(x) {
                    /*a function to remove the "active" class from all autocomplete items:*/
                    for (var i = 0; i < x.length; i++) {
                        x[i].classList.remove("autocomplete-active");
                    }
                }
                function closeAllLists(elmnt) {
                    /*close all autocomplete lists in the document,
                     except the one passed as an argument:*/
                    var x = document.getElementsByClassName("autocomplete-items");
                    for (var i = 0; i < x.length; i++) {
                        if (elmnt != x[i] && elmnt != inp) {
                            x[i].parentNode.removeChild(x[i]);
                        }
                    }
                }
                /*execute a function when someone clicks in the document:*/
                document.addEventListener("click", function (e) {
                    closeAllLists(e.target);
                });
            }

            var countries = [

            <c:forEach items="${requestScope.list}" var="LI">
            "${LI.title}"${not status.last ? ',' : ''}
            </c:forEach>

            ];
            /*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
            autocomplete(document.getElementById("myInput"), countries);
        </script>
        <script>
//Get the button
            let mybutton = document.getElementById("btn-back-to-top");

// When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function () {
                scrollFunction();
            };

            function scrollFunction() {
                if (
                        document.body.scrollTop > 20 ||
                        document.documentElement.scrollTop > 20
                        ) {
                    mybutton.style.display = "block";
                } else {
                    mybutton.style.display = "none";
                }
            }
// When the user clicks on the button, scroll to the top of the document
            mybutton.addEventListener("click", backToTop);

            function backToTop() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
    </body>
</html>
