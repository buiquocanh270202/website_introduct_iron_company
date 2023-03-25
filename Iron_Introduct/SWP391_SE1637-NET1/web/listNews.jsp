<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Theme Made By www.w3schools.com -->
        <title>Home</title>
        <meta name="description" content="Manufacturers, Suppliers, Exporters & Importers from the world's largest online B2B marketplace-X.com"  />
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
        
        <!-- icon cart -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

        <style>
            .badge:after{
                content:attr(value);
                font-size:12px;
                background: red;
                border-radius:50%;
                padding:2px;
                position:relative;
                left:-2px;
                top:-10px;
                opacity:0.9;

            }
            .fa.badge{
                background: red;
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
            body {
                font-family: Montserrat !important;
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
                    <a class="navbar-brand" href="#myPage">Logo</a>
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
                        <li><a href="/SWP391_SE1637-NET/HomeInforController">ABOUT</a></li>
                        <li class="nav-item dropdown dropbtn"><a href="HomeListNews?index=1">NEWS</a>
                            <div class="dropdown">
                                <div class="dropdown-content">
                                    <c:forEach items="${requestScope.listInforCate}" var="LIC">
                                        <a href="HomeListInforByCate?id=${LIC.id}&index=1" style="text-decoration: none">${LIC.name}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        </li>

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

        <div class="jumbotron text-center">
            <h1 style="font-family: Montserrat;">News</h1> 
            <p></p> 
            <form>
                <div class="input-group">

                </div>
            </form>
        </div>

        <div style="text-align: center;">
            <ul style="display: inline-block;">
                <c:forEach items="${requestScope.listInforCate}" var="LIC">
                    <li style="display: inline-block; padding-left : 50px; font-size: 20px"><a href="HomeListInforByCate?id=${LIC.id}&index=1">${LIC.name}</a></li>
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
                <h2 class="name h1 left" style="font-family: Montserrat, sans-serif;">
                    News
                </h2>
                <div class="description-culture">

                </div>
                <div class="news-cnt">
                    <c:forEach items="${requestScope.listInfor}" begin="0" end="0" var="LI">
                        <a href="HomeNewsController?iId=${LI.iId}&id=${LI.id}" class="it-news fr">
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
                        <a href="HomeNewsController?iId=${LI.iId}&id=${LI.id}" class="it-news">
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
                        <a href="HomeNewsController?iId=${LI.iId}&id=${LI.id}" class="it-news fr">
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
                        <a href="HomeListNews?index=${num}">${num}</a>
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

            <c:forEach items="${requestScope.listInfor}" var="LI">
            "${LI.title}"${not status.last ? ',' : ''}
            </c:forEach>

            ];
            /*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
            autocomplete(document.getElementById("myInput"), countries);
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
