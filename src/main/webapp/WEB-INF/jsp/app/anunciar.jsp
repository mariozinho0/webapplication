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
                                <form:form modelAttribute="anuncio" action="${s:mvcUrl('anunciar.cadastrar').build()}"
                                           method="POST" class="user">
                                    <div class="form-group row">
                                        <!-- CEP -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user" name="cep"
                                                        minlength="8" maxlength="8" placeholder="CEP"
                                                        onkeypress="$(this).mask('00000-000')" path="endereco.cep"/>
                                        </div>
                                        <!-- ENDEREÇO -->
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user"
                                                        name="endereco"
                                                        placeholder="Endereço" path="endereco.endereco"/>
                                        </div>
                                        <!-- NÚMERO -->
                                        <div class="col-sm-3 mb-3 mb-sm-0">
                                            <form:input type="number" class="form-control form-control-user"
                                                        name="numero"
                                                        placeholder="Número" path="endereco.numero"/>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!-- BAIRRO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user" name="bairro"
                                                        placeholder="Bairro" path="endereco.bairro"/>
                                        </div>
                                        <!-- CIDADE -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user"
                                                        name="cidade" placeholder="Cidade" path="endereco.cidade"/>
                                        </div>
                                        <!-- ESTADO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select class="form-control estados" id="Estados" name="estado"
                                                         path="endereco.estado">
                                                <!-- TODO VALIDAÇÃO DO ESTADO EM BRANCO -->
                                                <form:option
                                                             value="">Selecione o Estado</form:option>
                                                <form:option value="AC">Acre</form:option>
                                                <form:option value="AL">Alagoas</form:option>
                                                <form:option value="AP">Amapá</form:option>
                                                <form:option value="AM">Amazonas</form:option>
                                                <form:option value="BA">Bahia</form:option>
                                                <form:option value="CE">Ceará</form:option>
                                                <form:option value="DF">Distrito Federal</form:option>
                                                <form:option value="ES">Espírito Santo</form:option>
                                                <form:option value="GO">Goiás</form:option>
                                                <form:option value="MA">Maranhão</form:option>
                                                <form:option value="MT">Mato Grosso</form:option>
                                                <form:option value="MS">Mato Grosso do Sul</form:option>
                                                <form:option value="MG">Minas Gerais</form:option>
                                                <form:option value="PA">Pará</form:option>
                                                <form:option value="PB">Paraíba</form:option>
                                                <form:option value="PR">Paraná</form:option>
                                                <form:option value="PE">Pernambuco</form:option>
                                                <form:option value="PI">Piauí</form:option>
                                                <form:option value="RJ">Rio de Janeiro</form:option>
                                                <form:option value="RN">Rio Grande do Norte</form:option>
                                                <form:option value="RS">Rio Grande do Sul</form:option>
                                                <form:option value="RO">Rondônia</form:option>
                                                <form:option value="RR">Roraima</form:option>
                                                <form:option value="SC">Santa Catarina</form:option>
                                                <form:option value="SP">São Paulo</form:option>
                                                <form:option value="SE">Sergipe</form:option>
                                                <form:option value="TO">Tocantins</form:option>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!-- VAGAS -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input type="number" class="form-control form-control-user"
                                                        name="vagas"
                                                        placeholder="Número de Vagas" path="vagas"/>
                                        </div>
                                        <!-- CATEGORIA -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select class="form-control estados" name="categoria" path="categoria">
                                                <form:option selected="selected"
                                                             value="">Veículo Compativel:</form:option>
                                                <form:option value="HATCH">Hatch</form:option>
                                                <form:option value="SEDAN">Sedan</form:option>
                                                <form:option value="SUV">SUV</form:option>
                                                <form:option value="PERUA">Perua</form:option>
                                                <form:option value="PICAPE">Picape</form:option>
                                            </form:select>
                                        </div>
                                        <!-- DIMENSÔES -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user" name="dimensoes"
                                                        placeholder="Dimensões em metros"
                                                        onkeypress="$(this).mask('00x00')" path="dimensoes"/>
                                        </div>
                                    </div>
                                    <!-- DISPONIBILIDADE -->
                                    <div class="form-group row">
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select class="form-control estados" name="disponibilidade"
                                                         path="disponibilidade">
                                                <form:option selected="selected" value="">Disponibilidade:</form:option>
                                                <form:option value="MANHA">Manhã</form:option>
                                                <form:option value="TARDE">Tarde</form:option>
                                                <form:option value="NOITE">Noite</form:option>
                                                <form:option value="MADRUGADA">Madrugada</form:option>
                                                <form:option value="TOTAL">Total</form:option>
                                            </form:select>
                                        </div>
                                        <!-- PREÇO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user" name="preco"
                                                        placeholder="Preço"
                                                        onkeypress="$(this).mask('R$ #0,00',{reverse: false})"
                                                        path="preco"/>
                                        </div>
                                        <!-- MODALIDADE -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select class="form-control estados" title="Anunciar por:"
                                                         data-style="select-special" name="modalidade"
                                                         path="modalidade">
                                                <form:option selected="selected" value="">Anunciar por:</form:option>
                                                <form:option value="HORA">Hora</form:option>
                                                <form:option value="DIA">Dia</form:option>
                                                <form:option value="MES">Mês</form:option>
                                            </form:select>
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
