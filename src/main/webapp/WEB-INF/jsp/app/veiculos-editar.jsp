<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GoPark - Editar Veículo</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

    <!-- Latest compiled and minified CSS -->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/knockout-file-bindings.css">

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

                <!-- Início Conteúdo -->

                <%--@elvariable id="veiculo" type="spring"--%>
                <form:form modelAttribute="veiculo" method="POST" action="${s:mvcUrl('veiculo.editar').build()}"
                           id="editar">
                    <div class="row">
                        <div class="col-lg-6 mb-4">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="row">
                                        <h4 class="col-sm-9 mb-3 mb-sm-0 font-weight-bold text-primary">Editar
                                            Veículo</h4>
                                        <form:input type="number" name="id" class="col-sm-3 mb-3 mb-sm-0 form-control"
                                                    path="id" readonly="true"/>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="form-group row">
                                        <!--MARCAS-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select path="marca" class="form-control estados" id="marca"
                                                         name="marca">
                                                <form:option value="">Selecione a Marca</form:option>
                                                <form:option value="CHEVROLET">Chevrolet</form:option>
                                                <form:option value="VOLKSWAGEN">Volkswagen</form:option>
                                                <form:option value="FIAT">Fiat</form:option>
                                                <form:option value="HYUNDAI">Hyundai</form:option>
                                                <form:option value="NISSAN">Nissan</form:option>
                                                <form:option value="RENAULT">Renault</form:option>
                                                <form:option value="FORD">Ford</form:option>
                                                <form:option value="TOYOTA">Toyota</form:option>
                                                <form:option value="JEEP">Jeep</form:option>
                                                <form:option value="HONDA">Honda</form:option>
                                                <form:option value="CITROEN">Citroën</form:option>
                                                <form:option value="MITSUBISHI">Mitsubishi</form:option>
                                                <form:option value="PEUGEOT">Peugeot</form:option>
                                                <form:option value="CHERY">Chery</form:option>
                                                <form:option value="BMW">BMW</form:option>
                                                <form:option value="MERCEDES">Mercedes-Benz</form:option>
                                                <form:option value="KIA">Kia</form:option>
                                                <form:option value="AUDI">Audi</form:option>
                                                <form:option value="VOLVO">Volvo</form:option>
                                                <form:option value="LANDROVER">Land Rover</form:option>
                                                <form:option value="AIMA">Aima</form:option>
                                                <form:option value="AVELLOZ">Avelloz</form:option>
                                                <form:option value="BRAVAX">Bravax</form:option>
                                                <form:option value="BRP">BRP</form:option>
                                                <form:option value="BULL">Bull</form:option>
                                                <form:option value="DAFRA">Dafra</form:option>
                                                <form:option value="DAYANG">Dayang</form:option>
                                                <form:option value="DUCATI">Ducati</form:option>
                                                <form:option value="HAOJUE">Haojue</form:option>
                                                <form:option value="HARLEYDAVIDSON">Harley-Davidson</form:option>
                                                <form:option value="HUSQVARNA">Husqvarna</form:option>
                                                <form:option value="INDIAN">Indian</form:option>
                                                <form:option value="IROS">Iros</form:option>
                                                <form:option value="JONNY">Jonny</form:option>
                                                <form:option value="KASINSKI">Kasinski</form:option>
                                                <form:option value="KAWASAKI">Kawasaki</form:option>
                                                <form:option value="KTM">KTM</form:option>
                                                <form:option value="KYMCO">Kymco</form:option>
                                                <form:option value="MOTOCAR">Motocar</form:option>
                                                <form:option value="MVAGUSTA">MV Agusta</form:option>
                                                <form:option value="PIAGGIO">Piaggio</form:option>
                                                <form:option value="ROYALENFIELD">Royal Enfield</form:option>
                                                <form:option value="SHINERAY">Shineray</form:option>
                                                <form:option value="SUZUKI">Suzuki</form:option>
                                                <form:option value="SWM">SWM</form:option>
                                                <form:option value="TRAXX">Traxx</form:option>
                                                <form:option value="TRIUMPH">Triumph</form:option>
                                                <form:option value="VESPA">Vespa</form:option>
                                                <form:option value="WUYANG">Wuyang</form:option>
                                                <form:option value="YAMAHA">Yamaha</form:option>
                                            </form:select>
                                        </div>

                                        <!-- TIPO DE VEÍCULO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select path="veiculo" class="form-control estados" id="veiculo"
                                                         name="veiculo">
                                                <form:option value="">Selecione o Tipo</form:option>
                                                <form:option value="MOTO">Moto</form:option>
                                                <form:option value="CARRO">Carro</form:option>
                                            </form:select>
                                        </div>

                                        <!--CATEGORIA VEICULO-->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:select path="categoria" class="form-control estados" name="categoria">
                                                <form:option value="">Categoria</form:option>
                                                <form:option value="HATCH">Hatch</form:option>
                                                <form:option value="SEDAN">Sedan</form:option>
                                                <form:option value="SUV">SUV</form:option>
                                                <form:option value="PERUA">Perua</form:option>
                                                <form:option value="PICAPE">Picape</form:option>
                                            </form:select>
                                        </div>
                                    </div>

                                    <!--Modelo Veiculo-->
                                    <div class="form-group row">
                                        <div class="col-sm-12 mb-3 mb-sm-0">
                                            <form:input path="modelo" name="modelo"
                                                        class="form-control form-control-user estados"
                                                        placeholder="Modelo do Veículo"/>
                                        </div>
                                    </div>
                                    <div class="form-group row">

                                        <!-- ANO VEICULO -->

                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input type="number" class="form-control form-control-user estados"
                                                        placeholder="Ano do Veículo" path="ano" name="ano"/>
                                        </div>

                                        <!-- PLACA -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user estados"
                                                        placeholder="Placa do Veículo" name="placa" path="placa"/>
                                        </div>

                                        <!-- COR DO VEICULO -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <form:input class="form-control form-control-user estados"
                                                        placeholder="Cor do Veiculo" name="cor" path="cor"/>
                                        </div>

                                    </div>
                                    <!--IMAGEM UPLOAD-->
                                    <div class="well" data-bind="fileDrag: multiFileData">
                                        <div class="form-group row">
                                            <div class="col-md-6 mb-3 mb-sm-0">
                                                <!-- ko foreach: {data: multiFileData().dataURLArray, as: 'dataURL'} -->
                                                <img style="height: 100px; margin: 5px;" class="img-rounded  thumb"
                                                     data-bind="attr: { src: dataURL }, visible: dataURL">
                                                <!-- /ko -->
                                                <div data-bind="ifnot: fileData().dataURL">
                                                    <label class="drag-label">Arraste os Arquivos</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3 mb-sm-0">
                                                <input type="file" multiple data-bind="fileInput: multiFileData, customFileInput: {
                                                    buttonClass: 'btn btn-primary',
                                                    fileNameClass: 'disabled form-control',
                                                    onClear: onClear,
                                                }" accept="image/*">
                                            </div>
                                        </div>
                                    </div>
                                    <!--ENVIAR ANUNCIO-->
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <button class="btn btn-primary btn-right" type="submit">Enviar</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>


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
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/knockout/3.1.0/knockout-min.js'></script>
<script src="${pageContext.request.contextPath}/js/knockout-file-bindings.js"></script>

<!--Upload imagem-->
<script>
    var viewModel = {};
    viewModel.fileData = ko.observable({
        dataURL: ko.observable(),
        // can add "fileTypes" observable here, and it will override the "accept" attribute on the file input
        // fileTypes: ko.observable('.xlsx,image/png,audio/*')
    });
    viewModel.multiFileData = ko.observable({dataURLArray: ko.observableArray()});
    viewModel.onClear = function (fileData) {
        if (confirm('Você deseja excluir está imagem?')) {
            fileData.clear && fileData.clear();
        }
    };
    viewModel.debug = function () {
        window.viewModel = viewModel;
        console.log(ko.toJSON(viewModel));
        debugger;
    };
    viewModel.onInvalidFileDrop = function (failedFiles) {
        var fileNames = [];
        for (var i = 0; i < failedFiles.length; i++) {
            fileNames.push(failedFiles[i].name);
        }
        var message = 'Invalid file type: ' + fileNames.join(', ');
        alert(message)
        console.error(message);
    };
    ko.applyBindings(viewModel);
</script>

</body>

</html>