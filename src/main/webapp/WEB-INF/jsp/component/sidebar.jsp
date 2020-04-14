<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%-- TODO CHECAR SE NÃO QUEBROU CSS --%>

<ul class="navbar-nav bg-dashboard sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center"
       href="${s:mvcUrl('anuncio.listar').build()}">
        <div class="sidebar-brand-icon">
            <img class="logo-gp" src="${pageContext.request.contextPath}/img/logo.png"/>
        </div>
        <div class="sidebar-brand-text mx-3">GoPark</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="${s:mvcUrl('anuncio.listar').build()}">
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
        <a class="nav-link" href="${s:mvcUrl('anunciar').build()}">
            <i class="fas fa-fw fa-car"></i>
            <span>Anunciar</span>
        </a>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="${s:mvcUrl('meus-anuncios').build()}">
            <i class="fas fa-fw fa-parking"></i>
            <span>Meus Anúncios</span>
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
        <a class="nav-link" href="${s:mvcUrl('configuracoes').build()}">
            <i class="fas fa-fw fa-user-alt"></i>
            <span>Configurações</span>
        </a>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="${s:mvcUrl('agendamentos').build()}">
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