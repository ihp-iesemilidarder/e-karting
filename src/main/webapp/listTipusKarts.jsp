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
                        <h4>Listado de tipus de karts</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de clientes -->
                            <c:forEach var="tkart" items="${tkarts}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${tkart.tka_name}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/tkart?action=delete&nameTipusKart=${tkart.tka_name}"
                                           class="btn btn-danger">
                                            <i class="fas fa-angle-double-right"></i> Eliminar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total tipus de karts</h3>
                        <h4 class="display-4">
                            <i class="fas fa-car-side"></i> ${totalTipusKarts}
                        </h4>
                    </div>
                </div>        
            </div>          
        </div>
    </div>
</section>
                        