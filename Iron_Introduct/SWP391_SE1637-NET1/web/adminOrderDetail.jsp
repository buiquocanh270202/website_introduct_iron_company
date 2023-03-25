<%-- 
    Document   : manageOrder
    Created on : Mar 6, 2023, 9:42:34 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="components/adminHeadComponent.jsp" %>
        <title>Manage Order</title>
        <!-- Datepicker -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
    </head>
    <body class="sb-nav-fixed">
        <!-- Admin navbar -->
        <%@include file="components/adminNavBarComponent.jsp" %>
        <div id="layoutSidenav">
            <!-- Admin Slidenav -->
            <%@include file="components/adminSlideNavComponent.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage Orders</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">All current orders in system</li>
                        </ol>
                        <c:choose>
                            <c:when test="${not empty requestScope.MSG_SUCCESS}">
                                <div class="alert alert-success fs-3" role="alert">
                                    ${requestScope.MSG_SUCCESS}
                                </div>
                            </c:when>
                            <c:when test="${not empty requestScope.MSG_ERROR}">
                                <div class="alert alert-danger fs-3" role="alert">
                                    ${requestScope.MSG_ERROR}
                                </div>
                            </c:when>
                        </c:choose>



                        <!-- Table OrderDetail  -->
                        <div class="card mb-4">
                            <div class="card-header fw-bold">
                                <i class="bi bi-table"></i>
                                Order Detail Table
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

                    </div>
                </main>
                <!-- Footer -->
                <jsp:include page="components/adminFooter.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="js/my-scripts.js"></script>
        <script>
            let checkin = $('#dp1').datepicker({
                autoclose: true
            }).on('changeDate', function (ev) {
                if (ev.date.valueOf() > checkout.datepicker("getDate").valueOf() || !checkout.datepicker("getDate").valueOf()) {

                    let newDate = new Date(ev.date);
                    newDate.setDate(newDate.getDate() + 1);
                    checkout.datepicker("update", newDate);

                }
                $('#dp2')[0].focus();
            });

            let checkout = $('#dp2').datepicker({
                beforeShowDay: function (date) {
                    if (!checkin.datepicker("getDate").valueOf()) {
                        return date.valueOf() >= new Date().valueOf();
                    } else {
                        return date.valueOf() > checkin.datepicker("getDate").valueOf();
                    }
                },
                autoclose: true

            }).on('changeDate', function (ev) { });
        </script>
    </body>
</html>

