<%-- 
    Document   : TestEveryThing
    Created on : Mar 9, 2023, 5:02:20 PM
    Author     : nguye
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #autocomplete-list {
                position: absolute;
                z-index: 1;
                background-color: #f1f1f1;
                border: 1px solid #ddd;
                max-height: 200px;
                overflow-y: auto;
            }

            #autocomplete-list li {
                padding: 10px;
                cursor: pointer;
            }

            #autocomplete-list li:hover {
                background-color: #e9e9e9;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" id="search-input">
        <ul id="menu-item" class="menu-item">
            <c:forEach items="${requestScope.listP}" var="LPP">
                <c:if test = "${LPP.isStatus() eq true}">
                    <li class="nav-item dropdown dropbtn">
                        <a>${LPP.getpName()}</a>
                        <input name="pId" value="${LPP.pId}">
                        <div class="dropdown">
                            <div class="dropdown-content">
                                <c:forEach items="{requestScope.cate}" var="c">
                                    <c:if test="${LPP.pId eq c.pId}">
                                        <a href="HomeListInforByCate?id={LPC.id}&index=1" style="text-decoration: none">${c.name}</a>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </li>
                </c:if>
            </c:forEach>
        </ul>

        <script>
//            $(document).ready(function() {
//            //Xử lý sự kiện khi click vào một mục menu
//            $('#menu').on('click', 'li:has(ul) > a', function() {
//            var menuId = $(this).attr('data-menu-id');
//                    var ul = $(this).siblings('ul');
//                    if (ul.is(':visible')) {
//            ul.slideUp('fast');
//            } else {
//            //Gửi Ajax request để lấy danh sách con của mục menu
//            $.ajax({
//            url: 'GetChildMenuServlet',
//                    type: 'GET',
//                    dataType: 'html',
//                    data: {menuId: menuId},
//                    success: function(data) {
//                    ul.html(data);
//                            ul.slideDown('fast');
//                    }
//            });
//            }
//            return false;
            $(document).ready(function () {
                $(".menu-item").click(function () {
                    var pId = $(this).data("pId");
                    $.ajax({
                        url: "menu",
                        data: {pId: pId},
                        dataType: "json",
                        success: function (data) {

                        }
                    });
                });


            });
        </script>
    </body>
</html>
