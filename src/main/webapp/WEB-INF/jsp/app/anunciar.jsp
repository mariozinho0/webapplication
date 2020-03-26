<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                <h1 class="h3 mb-4 text-gray-800">Anunciar Vaga</h1>
                <!-- Cadastrar anúncio -->
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Criar Anúncio</h6>
                            </div>
                            <div class="card-body">
                                <form:form action="${s:mvcUrl('anunciar.cadastrar').build()}"
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
                                            <input type="text" class="form-control form-control-user" name="endereco.endereco"
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
                                                   name="cidade" placeholder="Cidade">
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
                                        <!--Preço-->
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
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->

        <c:import url="../component/footer.jsp"></c:import>

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

<c:import url="../component/logout-modal.jsp"></c:import>

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
