<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>GoPark - Configurações</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-dashboard sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/anuncio?action=listar">
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
      <li class="nav-item">
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
      <li class="nav-item active">
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
          <form action="anuncio" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" name="cidade"  class="form-control bg-light border-0 small" placeholder="Pesquisar por cidade" aria-label="Search" aria-describedby="basic-addon2">
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
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
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
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Usuário</span>
                <img class="img-profile rounded-circle" src="https://findicons.com/files/icons/1994/vista_style_business_and_data/128/users.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
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
          <h1 class="h3 mb-4 text-gray-800">Configurações do Perfil</h1>
          <!-- Perfil Usuário -->
          <div class="row">
            <div class="col-lg-4 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Perfil</h6>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-lg-12">
                      <img src="img/person.jpg" class="mx-auto d-block avatar rounded-circle">
                    </div>
                    <!-- NOME -->
                    <div class="col-lg-12 text-center">
                      <h4 class="m-0 font-weight-bold text-primary">Terry Crews</h4>
                    </div>
                    <!--USER NAME-->
                    <div class="col-lg-12 text-center">
                      <h6 class="m-0 font-weight-bold text-secondary">terrycrews01</h6>
                    </div>
                    <!--CELULAR-->
                    <div class="col-lg-6">
                      <h6 class="m-0 font-weight-bold text-primary">Celular:</h6>
                      <h6 class="m-0 font-weight-bold text-secondary">(11) 01234-5678</h6>
                    </div>
                    <!--CPF-->
                    <div class="col-lg-6">
                      <h6 class="m-0 font-weight-bold text-primary">CPF: </h6>
                      <h6 class="m-0 font-weight-bold text-secondary">123.456.789-00</h6>
                    </div>
                    <!--DATA NASCIMENTO-->
                    <div class="col-lg-6">
                      <h6 class="m-0 font-weight-bold text-primary">Data de Nascimento:</h6>
                      <h6 class="m-0 font-weight-bold text-secondary">01/01/2020</h6>
                    </div>
                    <!--SEXO-->
                    <div class="col-lg-6">
                      <h6 class="m-0 font-weight-bold text-primary">Sexo:</h6>
                      <h6 class="m-0 font-weight-bold text-secondary">Masculino</h6>
                    </div>
                    <!--EMAIL-->
                    <div class="col-lg-12">
                      <h6 class="m-0 font-weight-bold text-primary">Email:</h6>
                      <h6 class="m-0 font-weight-bold text-secondary">rm010203@fiap.com.br</h6>
                    </div>
                    <!--BIOGRAFIA-->
                    <div class="col-lg-12">
                      <h6 class="m-0 font-weight-bold text-primary">Biografia:</h6>
                      <h6 class="m-0 font-weight-bold text-secondary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a enim eget nisl pellentesque tincidunt. Vestibulum ullamcorper suscipit mattis. Integer ac erat eget orci dapibus molestie. Quisque id nibh vehicula, euismod dolor et, cursus leo. Praesent tellus odio, venenatis nec ultrices a, mollis ut orci. Aenean id odio ac diam interdum vulputate id vel nunc.</h6>
                    </div>
                    <!-- MODAL E BOTAO EDITAR-->
                    <div class="col-lg-12">
                      <br>
                      <a class="btn btn-primary float-right" href="#" data-toggle="modal" data-target="#editPerfil"><i class="fas fa-user-edit"></i> Editar</a>

                      <!-- MODAL EDITAR PERFIL -->
                      <div class="modal fade" id="editPerfil" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header bg-modal">
                              <h5 class="modal-title text-color" id="exampleModalLabel">Deseja editar seu Perfil?</h5>
                              <button class="close text-color" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <div class="row">
                                <div class="col-lg-12 mb-4">
                                  <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                      <h6 class="m-0 font-weight-bold text-primary">Editar Informações</h6>
                                    </div>
                                    <div class="card-body">
                                      <form class="user">
                                        <div class="form-group row">
                                          <!-- Nome -->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" id="" placeholder="Nome">
                                          </div>
                                          <!-- Name User-->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" id="" placeholder="Nome de Usuário">
                                          </div>
                                        </div>
                                        <div class="form-group row">
                                          <!-- Celular -->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" id="" placeholder="Celular" onkeypress="$(this).mask('(00) 00000-0000')">
                                          </div>
                                          <!-- CPF -->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user"  id="" placeholder="CPF" onkeypress="$(this).mask('000.000.000-00');">
                                          </div>
                                        </div>
                                        <div class="form-group row">
                                          <!-- Data de Nascimento -->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" id="" placeholder="Data de nascimento" onkeypress="$(this).mask('00/00/0000')">
                                          </div>
                                          <!-- SEXO M or F -->
                                          <div class="col-sm-6 mb-3 mb-sm-0">
                                            <select class="form-control sex-user" id="sexUser">
                                              <option>Masculino</option>
                                              <option>Feminino</option>
                                            </select>
                                          </div>
                                        </div>
                                        <div class="form-group">
                                          <!-- EMAIL -->
                                          <input type="email" class="form-control form-control-user" id="" placeholder="Digite seu email...">
                                        </div>
                                        <div class="form-group row">
                                          <!-- Senha -->
                                          <div class="col-sm-12 mb-3 mb-sm-0">
                                            <input type="password" class="form-control form-control-user" id="" placeholder="Senha">
                                          </div>
                                          <!-- Biografia-->
                                          <textarea class="form-control biografia" name="Biografia" rows="5" cols="50" wrap="virtual" placeholder="Biografia..."></textarea>
                                        </div>
                                        <hr class="sidebar-divider">
                                         <button class="btn btn-primary btn-right" type="button">Salvar</button>
                                      </form>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="modal-footer bg-modal">
                              <button class="btn btn-danger" type="button" data-dismiss="modal">Cancelar</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- FIM DO MODAL EDITAR PERFIL-->

                    </div>
                  </div>
                </div>
              </div>
            </div>

          <!-- CARTÂO-->
            <div class="col-lg-6 mb-4">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Forma de pagamento</h6>
                </div>
                <div class="card-body">
                  
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
