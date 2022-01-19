<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="agregarCarreraModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar Carrera</h5> 
                <button class="close" data-dismiss="modal"> <span>&times;</span> </button>
            </div>
            
            <form action="${pageContext.request.contextPath}/clikar?action=insert" method="POST" class="was-validated">
                
                <div class="modal-body">
                    <div class="form-group">
                        <label for="cliente">Cliente</label>
                        <select class="form-control" name="client" required>
                        	<option value="" disabled selected>--Seleccionar Cliente--</option>
	                        <c:forEach items="${clientes}" var="cliente">
	                        	<option value="${cliente.id}"><c:out value="${cliente.name} ${cliente.surname}"></c:out></option>
	                        </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="kart">Kart</label>
                        <select class="form-control" name="kart" required>
                        	<option value="" disabled selected>--Seleccionar Kart--</option>
	                        <c:forEach items="${karts}" var="kart">
	                        	<option value="${kart.kar_id}"><c:out value="${kart.kar_name}"></c:out></option>
	                        </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="date">Fecha</label>
                        <input type="date" class="form-control" name="date" required>
                    </div>
                    <div class="form-group">
                        <label for="start">Hora Inicio</label>
                        <input type="time" class="form-control" name="start" required />
                    </div>
                    <div class="form-group">
                        <label for="finish">Hora Fin</label>
                        <input type="time" class="form-control" name="finish" required/>
                    </div>
                    <div class="form-group">
                        <label for="circuit">Circuito</label>
                        <input type="text" class="form-control" name="circuit" required/>
                    </div>
                    <div class="form-group">
                        <label for="position">Posición</label>
                        <input type="number" class="form-control" name="position" required min="1" max="50"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>    
            </form>
        </div>
    </div>
</div>
    