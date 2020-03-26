<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GoPark - Editar Anúncio</title>

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

            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->

                <!-- Editar Anúncios -->


                <%-- TODO APRENDER COMO FAZER CHECKBOXES --%>
                <form method="post" action="${pageContext.request.contextPath}/anuncio?postaction=editar" class="user">
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="row">
                                    <h4 class="col-sm-9 mb-3 mb-sm-0 font-weight-bold text-primary">Editar Anúncio</h4>
                                    <input type="number" name="id" class="col-sm-3 mb-3 mb-sm-0 form-control" value="${editobj.id}" readonly>
                                </div>
                            </div>
                            <div class="card-body">
                                    <div class="form-group row">
                                        <!-- CEP -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <input type="text" name="cep" class="form-control form-control-user" minlength="8"
                                                   maxlength="8" placeholder="CEP"
                                                   onkeypress="$(this).mask('00000-000')" value="${editobj.endereco.cep}">
                                        </div>
                                        <!-- ENDEREÇO -->
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="text" name="endereco" class="form-control form-control-user"
                                                   placeholder="Endereço" value="${editobj.endereco.endereco}">
                                        </div>
                                        <!-- NÚMERO -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <input type="number" name="numero" class="form-control form-control-user"
                                                   placeholder="Número" value="${editobj.endereco.numero}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!-- BAIRRO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" name="bairro" class="form-control form-control-user"
                                                   placeholder="Bairro" value="${editobj.endereco.bairro}">
                                        </div>
                                        <!-- CIDADE -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" name="cidade" class="form-control form-control-user"
                                                   placeholder="Cidade" value="${editobj.endereco.cidade}">
                                        </div>
                                        <!-- ESTADO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select name="estado" class="form-control estados" id="Estados">
                                                <option selected value="${editobj.endereco.estado}">${editobj.endereco.estado}</option>
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
                                            <input type="number" name="vagas" class="form-control form-control-user"
                                                   placeholder="Número de Vagas" value="${editobj.vagas}">
                                        </div>
                                        <!--CATEGORIA-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select name="categoria" class="form-control estados">
                                                <option selected value="${editobj.categoria}">${editobj.categoria}</option>
                                                <option value="HATCH">Hatch</option>
                                                <option value="SEDAN">Sedan</option>
                                                <option value="SUV">SUV</option>
                                                <option value="PERUA">Perua</option>
                                                <option value="PICAPE">Picape</option>
                                            </select>
                                        </div>
                                        <!--DIMENSÔES-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" name="dimensoes" class="form-control form-control-user"
                                                   placeholder="Dimensões em metros"
                                                   onkeypress="$(this).mask('00x00')" value="${editobj.dimensoes}">
                                        </div>
                                    </div>
                                    <!--Disponibilidade-->
                                    <div class="form-group row">
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select class="form-control estados" name="disponibilidade">
                                                <option selected value="${editobj.disponibilidade}">${editobj.disponibilidade}</option>
                                                <option value="MANHA">Manhã</option>
                                                <option value="TARDE">Tarde</option>
                                                <option value="NOITE">Noite</option>
                                                <option value="MADRUGADA">Madrugada</option>
                                                <option value="TOTAL">Total</option>
                                            </select>
                                        </div>
                                        <!--VALOR-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" name="preco" class="form-control form-control-user"
                                                   placeholder="Valor"
                                                   onkeypress="$(this).mask('R$ #0,00',{reverse: false})" value="${editobj.preco}">
                                        </div>
                                        <!--Modalidade-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <select name="modalidade" class="form-control estados" title="Anunciar por:"
                                                    data-style="select-special">
                                                <option selected value="${editobj.modalidade}">${editobj.modalidade}</option>
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
