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
        <%@include file="components/adminHeadComponent.jsp" %>
        <title>Manage Information</title>
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
                        <h1 class="mt-4">Manage Information</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">All current accounts in system</li>
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
                        <!-- Admin Categories Information Table -->

                        <!-- Admin Information Table -->
                        <div class="card mb-4">
                            <div class="card-header fw-bold">
                                <i class="bi bi-table"></i>
                                Information Detail
                                <span class="float-end">
                                    <select name="id" id="InforCateId" onchange="openLink()">
                                        <option value="AdminInformationController" selected="">All</option>
                                        <c:forEach items="${requestScope.listCate}" var="LC">  
                                            <option value="AdminInformationByCate?id=${LC.id}" >${LC.name}</option>
                                        </c:forEach>
                                    </select>

                                    <script>
                                        // Lấy giá trị đã lưu trữ trong localStorage (nếu có)
                                        var selectedValue = localStorage.getItem('selectedValue');

                                        // Khôi phục giá trị đã lưu trữ (nếu có)
                                        if (selectedValue) {
                                            var selectBox = document.getElementById("InforCateId");
                                            var option = selectBox.querySelector("option[value='" + selectedValue + "']");
                                            if (option) {
                                                option.selected = true;
                                            }
                                        }

                                        // Xử lý sự kiện onchange để lưu giá trị được chọn vào localStorage
                                        var selectBox = document.getElementById("InforCateId");
                                        selectBox.addEventListener('change', function () {
                                            var selectedValue = selectBox.value;
                                            localStorage.setItem('selectedValue', selectedValue);
                                            openLink();
                                        });

                                        // Hàm mở liên kết
                                        function openLink() {
                                            var selectBox = document.getElementById("InforCateId");
                                            var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                                            if (selectedValue) {
                                                window.location.href = selectedValue;
                                            }
                                        }
                                    </script>
                                    <!-- Button trigger modal -->
                                    <button onclick="openPage()" type="button" class="btn btn-primary" >
                                        <i class="bi bi-plus-square"></i>Add New Information
                                    </button>
                                    <script>
                                        function openPage() {
                                            window.location.href = "InsertInforController";
                                        }
                                    </script>
                                </span>


                            </div>
                            <div class="card-body">
                                <form action="DeleteMultiInformation" method="POST">
                                <button type="submit">Delete All</button>
                                <table id="adminAccountTable">
                                    <thead>
                                        <tr>
                                            <th>Action</th>
                                            <th>Id</th>
                                            <th>Title</th>
                                            <th>Cover Image Path</th>
                                            <th>Created Date</th>
                                            <th>Account ID</th>
                                            <th>Information ID</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                        <c:forEach items="${requestScope.listInfor}" var="LA">
                                            <tr>
                                                <td><input type="checkbox" name="check" value="${LA.iId}"></td>
                                                <td>${LA.iId}</td>
                                                <td>${LA.title}</td>
                                                <td><img src="${LA.coverImgPath}" width="100" height="70" alt="alt"/></td>
                                                <td>${LA.createDate}</td>
                                                <td>${LA.accId}</td>
                                                <td>${LA.id}</td>
                                                <td>
                                                    <!-- Block btn -->
                                                    <span>
                                                        <!-- Button trigger modal -->
                                                        <button type="button" class="btn btn-outline-success w-100" data-bs-toggle="modal" data-bs-target="#del${LA.iId}">
                                                            <a style="text-decoration: none; color: green" href="DeleteInforController?iId=${LA.iId}">Delete</a>
                                                        </button>
                                                        <!-- Modal -->
                                                        
                                                    </span>

                                                    <span>
                                                        <!-- Button trigger modal -->
                                                        <button type="button" class="btn btn-outline-success w-100" data-bs-toggle="modal">
                                                            <a  style="text-decoration: none; color: green" href = "UpdateInforController?iId=${LA.iId}">Update</a> 
                                                        </button>
                                                        <!-- Modal -->
                                                    </span>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                           
                                        
                                            
                                    </tbody>
                                </table>
                                 
                            </form>
                            </div>
                        </div>
                        <!-- Active User Account Table -->

                        <!-- Inactive User Account Table -->

                </main>
                <!-- Footer -->
                <jsp:include page="components/adminFooter.jsp"></jsp:include>
            </div>
        </div>
        <script>

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
