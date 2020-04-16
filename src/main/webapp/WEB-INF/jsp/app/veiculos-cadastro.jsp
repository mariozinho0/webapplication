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

    <title>GoPark - Cadastro Veículo</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

    <!-- Latest compiled and minified CSS -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/styles.css">
    <link type="text/css" rel="stylesheet" href="css/knockout-file-bindings.css">

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
                <h1 class="h3 mb-4 text-gray-800">Cadastro Veículo</h1>

                <!-- Início Conteúdo -->

                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Adicionar Veículo</h6>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <!--MARCAS-->
                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <select class="form-control estados" id="marca" name="marca">
                                            <option value="">Selecione a Marca</option>
                                            <option value="GM">Chevrolet</option>
                                            <option value="VW">Volkswagen</option>
                                            <option value="FIAT">Fiat</option>
                                            <option value="HYUNDAI">Hyundai</option>
                                            <option value="NISSAN">Nissan</option>
                                            <option value="RENAULT">Renault</option>
                                            <option value="FORD">Ford</option>
                                            <option value="TOYOTA">Toyota</option>
                                            <option value="JEEP">Jeep</option>
                                            <option value="HONDA">Honda</option>
                                            <option value="CITROEN">Citroën</option>
                                            <option value="MITSUBISHI">Mitsubishi</option>
                                            <option value="PEUGEOT">Peugeot</option>
                                            <option value="CHERY">Chery</option>
                                            <option value="BMW">BMW</option>
                                            <option value="MERCEDES">Mercedes-Benz</option>
                                            <option value="KIA">Kia</option>
                                            <option value="AUDI">Audi</option>
                                            <option value="VOLVO">Volvo</option>
                                            <option value="LANDROVER">Land Rover</option>
                                            <option value="AIMA">Aima</option>
                                            <option value="Avelloz">Avelloz</option>
                                            <option value="Bravax">Bravax</option>
                                            <option value="BRP">BRP</option>
                                            <option value="Bull">Bull</option>
                                            <option value="Dafra">Dafra</option>
                                            <option value="Dayang">Dayang</option>
                                            <option value="Ducati">Ducati</option>
                                            <option value="Haojue">Haojue</option>
                                            <option value="Harley-Davidson">Harley-Davidson</option>
                                            <option value="Husqvarna">Husqvarna</option>
                                            <option value="Indian">Indian</option>
                                            <option value="Iros">Iros</option>
                                            <option value="Jonny">Jonny</option>
                                            <option value="Kasinski">Kasinski</option>
                                            <option value="Kawasaki">Kawasaki</option>
                                            <option value="KTM">KTM</option>
                                            <option value="Kymco">Kymco</option>
                                            <option value="Motocar">Motocar</option>
                                            <option value="MV Agusta">MV Agusta</option>
                                            <option value="Piaggio">Piaggio</option>
                                            <option value="Royal Enfield">Royal Enfield</option>
                                            <option value="Shineray">Shineray</option>
                                            <option value="Suzuki">Suzuki</option>
                                            <option value="SWM">SWM</option>
                                            <option value="Traxx">Traxx</option>
                                            <option value="Triumph">Triumph</option>
                                            <option value="Vespa">Vespa</option>
                                            <option value="Wuyang">Wuyang</option>
                                            <option value="Yamaha">Yamaha</option>
                                        </select>
                                    </div>

                                    <!-- TIPO DE VEÍCULO -->
                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <select class="form-control estados" id="tipo" name="tipo">
                                            <option value="">Selecione o Tipo</option>
                                            <option value="MOTO">Moto</option>
                                            <option value="CARRO">Carro</option>
                                        </select>
                                    </div>

                                    <!--CATEGORIA VEICULO-->
                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <select class="form-control estados" name="categoria">
                                            <option value="">Categoria</option>
                                            <option value="HATCH">Hatch</option>
                                            <option value="SEDAN">Sedan</option>
                                            <option value="SUV">SUV</option>
                                            <option value="PERUA">Perua</option>
                                            <option value="PICAPE">Picape</option>
                                        </select>
                                    </div>

                                </div>

                                <!--Modelo Veiculo-->
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user estados" placeholder="Modelo do Veículo"/>
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <!-- ANO VEICULO -->

                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <input type="number" class="form-control form-control-user estados" placeholder="Ano do Veículo"/>
                                    </div>

                                    <!-- PLACA -->
                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user estados" placeholder="Placa do Veículo"/>
                                    </div>

                                    <!-- COR DO VEICULO -->
                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user estados" placeholder="Cor do Veiculo"/>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/knockout/3.1.0/knockout-min.js'></script>
<script src="js/knockout-file-bindings.js"></script>

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

<!-- Masks -->
<script type="text/javascript">

    $(document).ready(function () {
        $('#cep').mask('00000-000');
        $('#preco').mask('R$ #0,00', {reverse: false});
        $('#dimensoes').mask('00x00');
        $('#anunciar').submit(function () {
            $('#cep').unmask();
            $('#preco').unmask().mask('#0.00', {reverse: false});
        });
    });

</script>

</body>

</html>