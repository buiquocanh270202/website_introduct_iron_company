<%-- 
    Document   : admin
    Created on : Oct 5, 2022, 6:58:11 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="components/adminHeadComponent.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="supporter/supporter.css"/>
        <title>Supporter</title>
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
                        <h1 class="mt-4">Message</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Overview</li>
                        </ol>
                        
                        <!-- Account Table -->
                        <div class="card mb-4">
                            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
                            <div class="container">
                                <div class="row clearfix">
                                    <div class="col-lg-12">
                                        <div class="card chat-app">
                                            <div id="plist" class="people-list">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="fa fa-search"></i></span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Search...">
                                                </div>
                                                <ul class="list-unstyled chat-list mt-2 mb-0">
                                                    <li class="clearfix">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Vincent Porter</div>
                                                            <div class="status"> <i class="fa fa-circle offline"></i> left 7 mins ago </div>
                                                        </div>
                                                    </li>
                                                    <li class="clearfix active">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Aiden Chavez</div>
                                                            <div class="status"> <i class="fa fa-circle online"></i> online </div>
                                                        </div>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Mike Thomas</div>
                                                            <div class="status"> <i class="fa fa-circle online"></i> online </div>
                                                        </div>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Christian Kelly</div>
                                                            <div class="status"> <i class="fa fa-circle offline"></i> left 10 hours ago </div>
                                                        </div>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Monica Ward</div>
                                                            <div class="status"> <i class="fa fa-circle online"></i> online </div>
                                                        </div>
                                                    </li>
                                                    <li class="clearfix">
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">Dean Henry</div>
                                                            <div class="status"> <i class="fa fa-circle offline"></i> offline since Oct 28 </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="chat">
                                                <div class="chat-header clearfix">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
                                                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                                            </a>
                                                            <div class="chat-about">
                                                                <h6 class="m-b-0">Aiden Chavez</h6>
                                                                <small>Last seen: 2 hours ago</small>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 hidden-sm text-right">
                                                            <a href="javascript:void(0);" class="btn btn-outline-secondary"><i class="fa fa-camera"></i></a>
                                                            <a href="javascript:void(0);" class="btn btn-outline-primary"><i class="fa fa-image"></i></a>
                                                            <a href="javascript:void(0);" class="btn btn-outline-info"><i class="fa fa-cogs"></i></a>
                                                            <a href="javascript:void(0);" class="btn btn-outline-warning"><i class="fa fa-question"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="chat-history">
                                                    <ul class="m-b-0">
                                                        <li class="clearfix">
                                                            <div class="message-data text-right">
                                                                <span class="message-data-time">10:10 AM, Today</span>
                                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                                            </div>
                                                            <div class="message other-message float-right"> Hi Aiden, how are you? How is the project coming along? </div>
                                                        </li>
                                                        <li class="clearfix">
                                                            <div class="message-data">
                                                                <span class="message-data-time">10:12 AM, Today</span>
                                                            </div>
                                                            <div class="message my-message">Are we meeting today?</div>
                                                        </li>
                                                        <li class="clearfix">
                                                            <div class="message-data">
                                                                <span class="message-data-time">10:15 AM, Today</span>
                                                            </div>
                                                            <div class="message my-message">Project has been already finished and I have results to show you.</div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="chat-message clearfix">
                                                    <div class="input-group mb-0">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text"><i class="fa fa-send"></i></span>
                                                        </div>
                                                        <input type="text" class="form-control" placeholder="Enter text here...">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a href="https://uhchat.net/"><button onclick="">Hello</button></a>
                        <script>
                            openPage(): window.
                        </script>
                    </div>
                </main>
                <!-- Footer -->
                <jsp:include page="components/adminFooter.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>   
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="demo/chart-area-demo.js"></script>
        <script src="demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/my-user.js"></script>
    </body>
</html>
