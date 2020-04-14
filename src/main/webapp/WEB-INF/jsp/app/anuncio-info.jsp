<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GoPark - Informações do Anúncio</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->

    <c:import url="../component/sidebar.jsp"></c:import>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->

            <c:import url="../component/topbar.jsp"></c:import>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">Informações do Anúncio</h1>

                <!-- Início Conteúdo -->

                <div class="row">

                    <div class="col-xl-6 col-md-6 mb-6">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body card-body-margin">
                                <div class="row no-gutters align-items-center">
                                    <img class="img-anuncio" src="img/estac03.jpg">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1 home-padding">
                                            <i class="fas fa-map-marker-alt" style="color: red;"></i>
                                            CIDADE - ESTADO - CEP
                                        </div>
                                        <div class="h6 mb-0 font-weight-bold font-color">
                                            Endereço:
                                        </div>
                                        <div class="h6 mb-0 font-weight-bold font-price">
                                            Disponibilidade:
                                        </div>
                                        <div class="h6 mb-0 font-weight-bold font-color">
                                            Veículo compativel & Disponibilidade
                                        </div>
                                        <div class="h6 mb-0 font-weight-bold font-price" id="preco">
                                            Preço:
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <a href="#" class="btn btn-primary btn-user btn-block btn-padding">Alugar</a>
                                        <input hidden value="${anuncio.id}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Fim Conteúdo -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->

        <c:import url="../component/footer.jsp"></c:import>

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<c:import url="../component/logout-modal.jsp"></c:import>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>