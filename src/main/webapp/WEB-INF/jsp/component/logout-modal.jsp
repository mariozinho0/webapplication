<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%-- TODO CHECAR SE NÃO QUEBROU CSS --%>

<!-- Logout Modal -->
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
                <a class="btn btn-primary" href="${s:mvcUrl('login').build()}">Sair</a>
            </div>
        </div>
    </div>
</div>