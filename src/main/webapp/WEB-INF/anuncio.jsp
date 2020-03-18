<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GoPark - Anúncio</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

    <!-- Latest compiled and minified CSS -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-dashboard sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center"
           href="${pageContext.request.contextPath}/anuncio?action=listar">
            <div class="sidebar-brand-icon">
                <img class="logo-gp" src="img/logo.png"/>
            </div>
            <div class="sidebar-brand-text mx-3">GoPark</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/anuncio?action=listar">
                <i class="fas fa-fw fa-home"></i>
                <span>Home</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Vagas
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item active">
            <a class="nav-link" href="anuncio.jsp">
                <i class="fas fa-fw fa-car"></i>
                <span>Anunciar</span>
            </a>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fas fa-fw fa-car-side"></i>
                <span>Alugar</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Perfil
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="config.jsp">
                <i class="fas fa-fw fa-user-alt"></i>
                <span>Configurações</span>
            </a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fas fa-fw fa-calendar-alt"></i>
                <span>Agendamentos</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <form action="anuncio" method="get"
                      class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" name="cidade" class="form-control bg-light border-0 small"
                               placeholder="Pesquisar por cidade" aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>


                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Usuário</span>
                            <img class="img-profile rounded-circle"
                                 src="https://findicons.com/files/icons/1994/vista_style_business_and_data/128/users.png">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Configurações
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Sair
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">Anunciar Vaga</h1>
                <!-- Cadastrar anúncio -->
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Criar Anúncio</h6>
                            </div>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/anuncio?postaction=cadastrar"
                                      method="post" class="user">
                                    <div class="form-group row">
                                        <!-- CEP -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" name="cep"
                                                   minlength="8" maxlength="8" placeholder="CEP"
                                                   onkeypress="$(this).mask('00000-000')">
                                        </div>
                                        <!-- ENDEREÇO -->
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" name="endereco"
                                                   placeholder="Endereço">
                                        </div>
                                        <!-- NÚMERO -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <input type="number" class="form-control form-control-user" name="numero"
                                                   placeholder="Número">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!-- BAIRRO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" name="bairro"
                                                   placeholder="Bairro">
                                        </div>
                                        <!-- CIDADE -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user"
                                                   name="cidadeanuncio" placeholder="Cidade">
                                        </div>
                                        <!-- ESTADO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select class="form-control estados" id="Estados" name="estado">
                                                <option selected>Selecione o Estado</option>
                                                <option value="AC">Acre</option>
                                                <option value="AL">Alagoas</option>
                                                <option value="AP">Amapá</option>
                                                <option value="AM">Amazonas</option>
                                                <option value="BA">Bahia</option>
                                                <option value="CE">Ceará</option>
                                                <option value="DF">Distrito Federal</option>
                                                <option value="ES">Espírito Santo</option>
                                                <option value="GO">Goiás</option>
                                                <option value="MA">Maranhão</option>
                                                <option value="MT">Mato Grosso</option>
                                                <option value="MS">Mato Grosso do Sul</option>
                                                <option value="MG">Minas Gerais</option>
                                                <option value="PA">Pará</option>
                                                <option value="PB">Paraíba</option>
                                                <option value="PR">Paraná</option>
                                                <option value="PE">Pernambuco</option>
                                                <option value="PI">Piauí</option>
                                                <option value="RJ">Rio de Janeiro</option>
                                                <option value="RN">Rio Grande do Norte</option>
                                                <option value="RS">Rio Grande do Sul</option>
                                                <option value="RO">Rondônia</option>
                                                <option value="RR">Roraima</option>
                                                <option value="SC">Santa Catarina</option>
                                                <option value="SP">São Paulo</option>
                                                <option value="SE">Sergipe</option>
                                                <option value="TO">Tocantins</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!--VAGA-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="number" class="form-control form-control-user" name="vagas"
                                                   placeholder="Número de Vagas">
                                        </div>
                                        <!--CATEGORIA-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select class="form-control estados" name="categoria">
                                                <option selected>Veículo Compativel:</option>
                                                <option value="HATCH">Hatch</option>
                                                <option value="SEDAN">Sedan</option>
                                                <option value="SUV">SUV</option>
                                                <option value="PERUA">Perua</option>
                                                <option value="PICAPE">Picape</option>
                                            </select>
                                        </div>
                                        <!--DIMENSÔES-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" name="dimensoes"
                                                   placeholder="Dimensões em metros" onkeypress="$(this).mask('00x00')">
                                        </div>
                                    </div>
                                    <!--Disponibilidade-->
                                    <div class="form-group row">
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select class="form-control estados" name="disponibilidade">
                                                <option selected>Disponibilidade:</option>
                                                <option value="MANHA">Manhã</option>
                                                <option value="TARDE">Tarde</option>
                                                <option value="NOITE">Noite</option>
                                                <option value="MADRUGADA">Madrugada</option>
                                                <option value="TOTAL">Total</option>
                                            </select>
                                        </div>
                                        <!--VALOR-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" name="preco"
                                                   placeholder="Valor"
                                                   onkeypress="$(this).mask('R$ #0,00',{reverse: false})">
                                        </div>
                                        <!--Modalidade-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select class="form-control estados" title="Anunciar por:"
                                                    data-style="select-special" name="modalidade">
                                                <option selected>Anunciar por:</option>
                                                <option value="HORA">Hora</option>
                                                <option value="DIA">Dia</option>
                                                <option value="MES">Mês</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!--ENVIAR ANUNCIO-->
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <button class="btn btn-primary btn-right" type="submit">Enviar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; GoPark - 2020</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-modal">
                <h5 class="modal-title text-color" id="exampleModalLabel">Deseja encerrar sua sessão?</h5>
                <button class="close text-color" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Selecione "Sair" se você estiver pronto para encerrar sua sessão atual.</div>
            <div class="modal-footer bg-modal">
                <button class="btn btn-danger" type="button" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-primary" href="login.jsp">Sair</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>
