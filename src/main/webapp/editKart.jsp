<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>

        <title>Editar Kart</title>
    </head>
    <body>
        <!--Cabecero-->
        <%@ include file="/common/header.jsp" %> 

        <form name="frm-kart" action="${pageContext.request.contextPath}/kart" method="POST" class="was-validated">
           <input id="input-action" type="hidden" name="action" value="update" />
           <input type="hidden" name="id" value="${kart.getKar_id()}" />
           
            <!--Botones de Navegacion -->
        	<section id="actions" class="py-4 mb-4 bg-light">
			    <div class="container">
			        <div class="row">
			            <div class="col-md-3">
			                <a href="main.jsp" class="btn btn-ligth btn-block">
			                    <i class="fas fa-arrow-left"></i> Regresar a la lista
			                </a>
			            </div>
			            <div class="col-md-3">
			                <button type="submit" class="btn btn-success btn-block">
			                    <i class="fas fa-check"></i> Guardar Kart
			                </button>
			            </div>
			            <div class="col-md-3">
			                <button id="btn-delete" type="button" class="btn btn-danger btn-block">
			                    <i class="fas fa-trash"></i> Eliminar Kart
			                </button>
			            </div>
			        </div>
			    </div>
			</section>
        	
            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Kart</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="name" required value="${kart.kar_name}">
                                        <label for="tipus">Tipo</label>           
                                        <select name="tipus" class="form-control" required>
                                        	<c:forEach items="${tipoKarts}" var="tipo">
                                        		<c:choose>
                                        			<c:when test="${tipo.tka_name==kart.kar_tipus.tka_name}">
                                        				<option value="${tipo.tka_name}" selected><c:out value="${tipo.tka_name}"></c:out></option>
                                        			</c:when>
                                        			<c:otherwise>
                                        				<option value="${tipo.tka_name}"><c:out value="${tipo.tka_name}"></c:out></option>
                                        			</c:otherwise>
                                        		</c:choose>
                                        	</c:forEach>
                                        </select>
                                        <label for="power">Potencia</label>
                                        <input type="number" class="form-control" name="power" required value="${kart.kar_power}" step="any">
                                        <label for="price">Precio por minuto</label>
                                        <input type="number" class="form-control" name="price" required value="${kart.kar_price_minute}" step="any">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
                       
        </form>

        <!--Pie de Pagina-->
        <%@ include file="/common/footer.jsp" %> 

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script type="text/javascript">
        	let btnDelete = document.getElementById("btn-delete");
        	btnDelete.onclick = function(){
        		document.getElementById("input-action").value ="delete";
        		document.forms["frm-kart"].submit();
        	}
        
        </script>

    </body>
</html>