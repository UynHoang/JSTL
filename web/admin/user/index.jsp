<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
     <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title> Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="./assets/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="./assets/admin/css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    
    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../inc/sidebar.jsp"%>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <%@include file="../inc/header.jsp"%>
                <!-- Main Content -->
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Users</h1>
                    <p class="mb-4">Danh sách các user đã đăng ký trong CornSalad Store .</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Users Table</h6>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Email</th>
                                            <th>Pass</th>
                                            <th>Role</th>
                                            <th>#</th>
                                            <th>#</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="index" value="0"/>
                                        <c:forEach items="${userList}" var="user">
                                            <c:set var="index" value="${index + 1}"/>
                                            <tr>
                                                <td>${index}</td>
                                                <td>${user.email} </td>
                                                <td>${user.password}</td>
                                                <td>${user.role}</td>
                                                <td>
                                                    <a href="EditUserServlet?userId=${user.id}">Edit</a>
                                                </td>
                                                <td>
                                                    <a href="DeleteUserServlet?userId=${user.id}">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                <!-- End of Main Content -->

                <!-- Footer -->
                <%@include file="../inc/footer.jsp" %>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <!-- Bootstrap core JavaScript-->
        <script src="./assets/admin/vendor/jquery/jquery.min.js"></script>
        <script src="./assets/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="./assets/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="./assets/admin/js/sb-admin-2.min.js"></script>
        <!-- Page level plugins -->
        <script src="./assets/admin/vendor/chart.js/Chart.min.js"></script>
        <!-- Page level custom scripts -->
        <script src="./assets/admin/js/demo/chart-area-demo.js"></script>
        <script src="./assets/admin/js/demo/chart-pie-demo.js"></script>

    </body>

</html>