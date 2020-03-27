<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GoPark - Registro</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

</head>

<body class="bg-gray-200">

<div class="container login-padding">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-login"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Crie sua conta!</h1>
                        </div>
                        <form:form modelAttribute="usuario" action="${s:mvcUrl('cadastro.cadastrar').build()}"
                                   method="POST"
                                   class="user needs-validation">
                            <div class="form-group row">
                                <!-- Nome -->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" name="nome"
                                                placeholder="Nome" path="nome"/>
                                </div>
                                <!-- Name User-->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" name="usuario"
                                                placeholder="Nome de Usuário" path="usuario"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <!-- Celular -->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" name="celular"
                                                placeholder="Celular" minlength="11" maxlength="11"
                                                onkeypress="$(this).mask('(00) 00000-0000')" path="celular"/>
                                </div>
                                <!-- CPF -->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" name="cpf"
                                                placeholder="CPF" minlength="11" maxlength="11"
                                                onkeypress="$(this).mask('000.000.000-00');" path="cpf"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <!-- Data de Nascimento -->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" name="nascimento"
                                                placeholder="Data de nascimento" minlength="8" maxlength="8"
                                                onkeypress="$(this).mask('00/00/0000')" path="nascimento"/>
                                </div>
                                <!-- SEXO M or F -->
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:select class="form-control sex-user" name="sexo" id="sexUser" path="sexo">
                                        <form:option value="M">Masculino</form:option>
                                        <form:option value="F">Feminino</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <!-- EMAIL -->
                                <form:input type="email" class="form-control form-control-user" name="email"
                                            placeholder="Digite seu email..." path="email"/>
                            </div>
                            <div class="form-group row">
                                <!-- Senha -->
                                <div class="col-sm-12 mb-3 mb-sm-0">
                                    <form:input type="password" class="form-control form-control-user" name="senha"
                                                placeholder="Senha" path="senha"/>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary btn-user btn-block" value="Registrar">
                            </input>
                        </form:form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="${s:mvcUrl('recuperacao-senha').build()}">Esqueceu a senha?</a>
                        </div>
                        <div class="text-center">
                            <a class="small" href="${s:mvcUrl('login').build()}">Ja possui uma conta? Acesse!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
<script src="js/validate.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>
