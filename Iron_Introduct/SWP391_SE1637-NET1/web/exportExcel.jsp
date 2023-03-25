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

        <link rel="icon" type="image/x-icon" href="./images/favicon.png"/>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <!--        <link href="css/admin-styles.css" rel="stylesheet" />-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <<link rel="stylesheet" href="home/home.css"/>


        <title>Export</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="cart/css/cart.css" />
        <link rel="stylesheet" href="cart/css/content.css" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->

        <link href="http://www.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script src="http://www.bootstrapcdn.com/twitter-bootstrap/2.2.1/js/bootstrap.min.js"></script>
        <script src="js/table2excel.js"></script> 
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
                    <a class="navbar-brand" href="HomeInforController"><img style="margin: -29px" src="https://scontent.fhan14-3.fna.fbcdn.net/v/t1.15752-9/335393788_6236929339680056_567381039334376682_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=bB7wiuc3iDMAX8-gy1f&_nc_ht=scontent.fhan14-3.fna&oh=03_AdSgS2EfmQ0ypVI6n9hUdfnZmsWdYSbglooGcQlcb0ttSA&oe=643A6735" alt="LOGO" width="75px"/></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <c:forEach items="${requestScope.listInforCate}" var="LPP">
                            <c:if test = "${LPP.getpId() eq 0 && LPP.isStatus()}">
                                <li class="nav-item dropdown dropbtn">
                                    <a href="">${LPP.getName()}</a>
                                    <div class="dropdown">
                                        <div class="dropdown-content">
                                            <c:forEach items="${requestScope.listInforCate}" var="c">
                                                <c:if test="${c.pId eq LPP.id && c.isStatus()}">
                                                    <a href="/SWP391_SE1637-NET/HomeListInforByCate?id=${c.id}&pId=${c.pId}&index=1" style="text-decoration: none">${c.name}</a>
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
                                            <a href="/SWP391_SE1637-NET/HomeCategoryController?cateId=${LC.cateId}" style="text-decoration: none">${LC.cateName}</a>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="/SWP391_SE1637-NET/HomeOrderController">ORDER</a>
                        </li>
                        <li>
                            <a  href="CartController" >
                                    CART
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron text-center" style="background-image: url(https://c1.wallpaperflare.com/preview/178/164/53/architecture-industry-factory-building-building.jpg); background-repeat: no-repeat; background-size: 150%; background-origin: inherit">
            <h1 style="color: white">Export</h1>
            <p>Get data for you</p>
            
        </div>


        <!-- Table OrderDetail  -->
        <div class="card mb-4">
            <div class="card-header fw-bold">
                <i class="bi bi-table"></i>
                Order Detail Table
                <span class="float-end">
                    <!-- Button trigger modal -->
                    <button  class="btn btn-primary" id="downloadexcel">
                        <i class="bi bi-plus-square"></i> Export To Excel
                    </button><!-- comment -->
                </span>
            </div>
            <div class="card-body">
                <table id="completedOrderTable">
                    <thead>
                        <tr>

                            <th>Product Name</th>
                            <th>Product Category</th>
                            <th>Description</th>
                            <th>Size</th>
                            <th>Weight</th>                                           
                            <th>Price</th>

                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Product Name</th>
                            <th>Product Category</th>
                            <th>Description</th>
                            <th>Size</th>
                            <th>Weight</th>                                           
                            <th>Price</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <c:forEach items="${requestScope.listProductOrder}" var="LPO">
                            <c:set var="categoryDisplayed" value="false" />
                            <tr>
                                <td>${LPO.pName}</td>
                                <c:forEach items="${requestScope.listCategories}" var="LC">
                                    <c:if test="${LC.cateId eq LPO.cateId}">
                                        <c:if test="${categoryDisplayed eq false}">
                                            <td>${LC.cateName}</td>
                                            <c:set var="categoryDisplayed" value="true" />
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <td>${LPO.description}</td>
                                <td>${LPO.kichCo}</td>
                                <td>${LPO.trongLuong}</td>
                                <td>${LPO.price}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
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


        <script>
            document.getElementById('downloadexcel').addEventListener('click', function () {//id button

                var table2excel = new Table2Excel();
                table2excel.export(document.querySelectorAll("#completedOrderTable")); // #+id table
                window.location.href = "homeproduct";

            });

        </script>

    </body>



    <script src="js/product.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="js/my-user.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>

    <script src="js/my-scripts.js"></script>
</html>