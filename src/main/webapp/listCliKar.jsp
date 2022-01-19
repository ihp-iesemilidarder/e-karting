<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es-ES" variant="euro"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Carreras</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Cliente</th>
                                <th>Kart</th>
                                <th>Fecha</th>
                                <th>Hora Inicio</th>
                                <th>Hora Final</th>
                                <th>Circuito</th>
                                <th>Posici&oacute;n</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="clikart" items="${clikarts}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${clikart.cxk_cli_id.name} ${clikart.cxk_cli_id.surname}</td>
                                    <td>${clikart.cxk_kar_id.kar_name}</td>
                                    <td>${clikart.cxk_date}</td>
                                    <td>${clikart.cxk_time_start}</td>
                                    <td>${clikart.cxk_time_finish}</td>
                                    <td>${clikart.cxk_circuit}</td>
                                    <td>${clikart.cxk_position}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/clikar?action=edit&idClient=${clikart.cxk_cli_id.id}&idKart=${clikart.cxk_kar_id.kar_id}"
                                           class="btn btn-secondary">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
                        