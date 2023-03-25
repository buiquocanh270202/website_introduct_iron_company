<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/17/2023
  Time: 2:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Trade Assurance Carts</title>
                        <meta name="description" content="Alibaba Manufacturer Directory - Suppliers, Manufacturers, Exporters & Importers"  />

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta property="og:title" content="Scaffolding Products in x scaffolding company ? Top 10 best scaffolding company" />
        <meta property="og:description" content=" X scaffolding is designed by Viet, Germany. It is a modular ringlock scaffold system with particular parts. Ask Price Now." />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="cart/css/cart.css" />
        <link rel="stylesheet" href="cart/css/content.css" />
        <link rel="stylesheet" href="home/home.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link href="http://www.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script src="http://www.bootstrapcdn.com/twitter-bootstrap/2.2.1/js/bootstrap.min.js"></script>

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
                    <a class="navbar-brand" href="HomeInforController"><img style="margin: -29px" src="https://scontent.fhan14-3.fna.fbcdn.net/v/t1.15752-9/335393788_6236929339680056_567381039334376682_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=bB7wiuc3iDMAX8-gy1f&_nc_ht=scontent.fhan14-3.fna&oh=03_AdSgS2EfmQ0ypVI6n9hUdfnZmsWdYSbglooGcQlcb0ttSA&oe=643A6735" alt="LOGO" width="90px"/></a>
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
            <h1 style="color: white">Scaffolding Products</h1>
            <p style="color: white">We sell this</p>
            <form>

            </form>
        </div>


        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-2"></div>
                <aside class="col-lg-5">
                    <div class="card">
                        <div class="table-responsive">

                            <table class="table table-borderless table-shopping-cart">
                                <thead class="text-muted">
                                    <tr class="small text-uppercase">
                                        <th scope="col">Product</th>
                                        <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                                    </tr>
                                </thead>
                                <c:if test="${mess!=null && isRemove == true}">
                                    <div class="alert alert-success" role="alert">
                                        ${mess}
                                    </div>
                                </c:if>
                                <c:if test="${mess!=null && isRemove == false}">
                                    <div class="alert alert-danger" role="alert">
                                        ${mess}
                                    </div>
                                </c:if>

                                <c:choose>
                                    <c:when test="${sessionScope.carts == null || sessionScope.carts.size() == 0}">
                                        <h3 style="font-family: Montserrat">Cart is empty!</h3>
                                    </c:when>
                                    <c:otherwise>

                                        <c:forEach items="${carts}" var="p">
                                            <tr>
                                                <td>
                                                    <figure class="itemside align-items-center">
                                                        <div class="aside"><img src="${p.value.product.imgPath}" class="img-sm" /></div>
                                                        <figcaption class="info">
                                                            <a href="HomeProductDetailController?pId=${p.value.product.pId}" class="title text-dark" data-abc="true">${p.value.product.pName}</a>

                                                            <p class="text-muted small">
                                                                ${p.value.product.description} <br>
                                                            </p>
                                                        </figcaption>
                                                    </figure>
                                                </td>


                                                <td class="text-right d-none d-md-block">
                                                    <a href="RemoveItem?pId=${p.value.product.pId}" class="btn btn-light" data-abc="true">
                                                        Remove
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </c:otherwise>
                                </c:choose>
                            </table>
                        </div>
                    </div>
                </aside>

                <aside class="col-lg-3">

                    <div class="card mb-3">
                        <div class="card-body">

                        </div>
                    </div>
                    <%-- <c:forEach items="${listOrder}" var="p1">
                     <tr>
                         <td>
                             <figure class="itemside align-items-center">
                                 <div class="aside"><img src="${p1.imgPath}" class="img-sm" /></div>
                                 <figcaption class="info">
                                     <a href="#" class="title text-dark" data-abc="true">${p1.pName}</a>

                            <p class="text-muted small">
                                    ${p1.kichCo} <br>
                            </p>
                        </figcaption>
                    </figure>
                </td>
           <tr>
            </c:forEach> --%>
                    <div class="card">
                        <div class="card-body">

                            <hr />
                            <!--                            <button href="#" class="" data-abc="true">
                                                            Export Price Quotation
                                                        </button>-->


                            <c:choose>
                                <c:when test="${sessionScope.customer == null}">
                                    <button type="button" class="btn btn-out btn-primary btn-square btn-main" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Export Price Quotation</button>
                                </c:when>
                                <c:otherwise>
                                    <button type="button" class="btn btn-out btn-primary btn-square btn-main"><a href="CustomerReorderController">Export Price Quotation</a></button>
                                </c:otherwise>
                            </c:choose>

                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <hr />
                                            <%-- Modal --%>
                                            <h3 class="modal-title" id="exampleModalLabel">Customer Informations</h3>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="CustomerInforController" method="post">
                                                <div class="form-group">
                                                    <label for="recipient-name" class="form-control-label">Full Name:</label>
                                                    <input type="text" class="form-control" id="recipient-name" name="cusName">
                                                </div>

                                                <div class="form-group">
                                                    <label for="recipient-name" class="form-control-label">Email:</label>
                                                    <input type="text" class="form-control" id="recipient-name" name="email">
                                                </div>

                                                <div class="form-group">
                                                    <label for="recipient-name" class="form-control-label">Phone:</label>
                                                    <input type="text" class="form-control" id="recipient-name" name="phone">
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>


                                                    <button   type="submit" class="btn btn-primary trigger-btn" name="action" value="CusInfor">Submit</button>



                                                </div>

                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </aside>

                <div class="col-lg-2"></div>
            </div>
        </div>

        <br /><br />

        <footer id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p>
                        <span class="glyphicon glyphicon-map-marker"></span> Chicago, US
                    </p>
                    <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                    <p>
                        <span class="glyphicon glyphicon-envelope"></span> myemail@something.com
                    </p>
                </div>
                <div class="col-sm-4 slideanim">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required />
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required />
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea
                    ><br />
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">
                                Send
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>



    <script src="js/product.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="js/my-user.js"></script>
</html>