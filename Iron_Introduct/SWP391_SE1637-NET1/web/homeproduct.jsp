<%-- 
    Document   : manageAccount
    Created on : Oct 8, 2022, 4:48:20 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>VietNam Shoring&System Scaffolding Equipment Parts Supplier</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta property="og:title" content="Scaffolding Products in x scaffolding company ? Top 10 best scaffolding company" />
        <meta property="og:description" content=" X is Scaffolding Equipment Supplier In VietNam. CE Certified Systems & Shoring Scaffold Parts For Your Safety Construction. Ask Us Price." />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/home/product.css">
        
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
        </style>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

        <!-- <div class="jumbotron">
          <div class="container text-center">
            <h1>Online Store</h1>      
            <p>Mission, Vission & Values</p>
          </div>
        </div> -->
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
                                            <a href="HomeCategoryController?cateId=${LC.cateId}" style="text-decoration: none">${LC.cateName}</a>
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
        <div class="jumbotron text-center" style="background-image: url(https://c1.wallpaperflare.com/preview/178/164/53/architecture-industry-factory-building-building.jpg); background-repeat: no-repeat; background-size: 150%; background-origin: inherit">
            <h1 style="color: white">Reliable Scaffolding Equipment Manufacturer</h1> 
            <p style="color: white">We sell this</p> 
                        <meta name="description" content="Wellmade is Scaffolding Equipment Supplier In VietNam CE Certified Systems Shoring Scaffold Parts For Your Safety Construction Ask Us Price"  />

            <form autocomplete="off" action="/SWP391_SE1637-NET/SearchProductController" style="width: 50%; margin-left : 25%">
                <div class="input-group" >
                    <input  class="form-control" size="50" placeholder="Product"  id="myInput" type="text" name="txt">
                    <div class="input-group-btn">
                        <button type="submit" class="btn btn-danger">Search</button>
                    </div> 
                </div> 
            </form>

        </div>
        <!-- ${LA.status eq 1 and (LA.role eq 1 or LA.role eq 2) } -->    
        <div class="container">    
            <ol class="breadcrumb">
                <li><a href="home">Home</a></li>
                <li class="active">Categories</li>
                <li class="active">${listCategoriesById.cateName}</li>
            </ol>
            <div class="row">
                <c:forEach items="${requestScope.listCate}" var="LC">
                    <c:if test="${LC.status eq 1}"> 
                        <c:forEach items="${requestScope.listProducts}" var="LP">

                            <c:if test="${LP.status eq 1 and (LP.cateId  eq LC.cateId)}">
                                <div class="col-sm-4">
                                    <div class="panel panel-primary">
                                        <!--  ${StringUtils.lowerCase(StringUtils.replace(StringUtils.stripAccents(StringUtils.trim(LP.pName)), ' ', '-'))} -->   
                                        <div class="panel-heading" style="text-align: center ;"><a href="HomeProductDetailController/${LP.url}" class="normal-font" style="text-decoration: none; color: white">${LP.pName}</a> </div>                                <div class="panel-body" style="    border-bottom-left-radius: 5px;
                                                                                                                                                                                                        border-bottom-right-radius: 5px;"><a href="HomeProductDetailController/${LP.url}" class="normal-font"><img src="${LP.imgPath}"  class="img-responsive" style="width: 320px;height: 220px;" alt="Image"></a></div>
                                        <form name="f" action="" method="post">
                                            <div class="panel-body" style="text-align: center">
                                                <a onclick="addToCartAsync(${LP.pId})" class="btn btn-outline-dark mt-auto w-50 like btn btn-default">Add To Cart</a>
                                                <!--                                <a href="CartController" class="like btn btn-default" type="button">Cart</a>-->
                                                <a href="HomeProductDetailController/${LP.url}" class="like btn btn-default" type="button">Details</a> 
                                            </div>                            
                                        </form> 
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </c:forEach>        
            </div>
        </div><br>



        <footer id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Chicago, US</p>
                    <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
                </div>
                <div class="col-sm-4 slideanim">
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
        <%@include file="components/utility.jsp" %>
    </body>
    <script src="home/product.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
                                                    $(document).ready(function () {
                                                        $("#searchInput").on("keyup", function () {
                                                            var keyword = $(this).val();
                                                            if (keyword.length >= 2) {
                                                                $.ajax({
                                                                    url: "search",
                                                                    method: "GET",
                                                                    data: {keyword: keyword},
                                                                    dataType: "json",
                                                                    success: function (data) {
                                                                        var results = "";
                                                                        for (var i = 0; i < data.length; i++) {
                                                                            results += "<div>" + data[i] + "</div>";
                                                                        }
                                                                        $("#searchResults").html(results);
                                                                    },
                                                                    error: function (jqXHR, textStatus, errorThrown) {
                                                                        console.log(textStatus, errorThrown);
                                                                    }
                                                                });
                                                            } else {
                                                                $("#searchResults").html("");
                                                            }
                                                        });
                                                    });
    </script>
    <script type="text/javascript">
        function buy(pId) {
            document.f.action = "buy?pId=" + pId;
            document.f.submit();
        }
    </script>
    <script src="${pageContext.request.contextPath}/home/product.js"></script>
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
        <c:forEach items="${requestScope.listCate}" var="LC">
            <c:if test="${LC.status eq 1}">
                <c:forEach items="${requestScope.listProductsSearch}" var="LPS">
                    <c:if test="${LPS.status eq 1 and (LPS.cateId  eq LC.cateId) }">
        "${LPS.pName}"${not status.last ? ',' : ''}
                    </c:if>
                </c:forEach>
            </c:if>
        </c:forEach>
        ];
        /*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
        autocomplete(document.getElementById("myInput"), countries);
    </script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="js/toast-alert.js"></script>
    <script>
        function addToCartAsync(pId) {

            axios.get('/SWP391_SE1637-NET/AddToCartController', {

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
</html>
