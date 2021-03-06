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
                        <h4>Listado de Clientes</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>NIF</th>
                                <th>Nombre</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="cliente" items="${clientes}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cliente.nif}</td>
                                    <td>${cliente.name} ${cliente.surname}</td>
                                    <td>
                                    <c:choose>
                                    	<c:when test="${cliente.balance==0 }">
                                    		<font color="red"><fmt:formatNumber value="${cliente.balance}" type="currency" currencySymbol="€"/></font>
                                    	</c:when>
                                    	<c:when test="${cliente.balance>=3000 }">
                                    		<font color="darkkhaki"><fmt:formatNumber value="${cliente.balance}" type="currency" currencySymbol="€"/></font>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<fmt:formatNumber value="${cliente.balance}" type="currency" currencySymbol="€"/>
                                    	</c:otherwise>
                                    </c:choose>
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/client?action=edit&idClient=${cliente.id}"
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

            <!--Inicio Tarjetas para los totales-->
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency" />
                        </h4>
                    </div>
                </div>

                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>        
            </div>
            <!--Fin Tarjetas para los totales-->
            
        </div>
    </div>
</section>
                        