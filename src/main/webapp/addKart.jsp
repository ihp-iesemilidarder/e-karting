<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="agregarKartModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar Kart</h5> 
                <button class="close" data-dismiss="modal"> <span>&times;</span> </button>
            </div>
            
            <form action="${pageContext.request.contextPath}/kart?action=insert" method="POST" class="was-validated">
                
                <div class="modal-body">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" class="form-control" name="name" required />
                    </div>
                    <div class="form-group">
                        <label for="tipus">Tipo</label>
                        <select name="tipus" class="form-control" required>
                        	<option value="" selected disabled>--Elige un tipo--</option>
	                        <c:forEach items="${tipoKarts}" var="tipo">
	                        	<option value="${tipo.tka_name}"><c:out value="${tipo.tka_name}"></c:out></option>
	                        </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="power">Potencia</label>
                        <input type="number" class="form-control" name="power" required step="any">
                    </div>
                    <div class="form-group">
                        <label for="price">Precio por minuto</label>
                        <input type="number" class="form-control" name="price" required step="any"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>    
            </form>
        </div>
    </div>
</div>
    