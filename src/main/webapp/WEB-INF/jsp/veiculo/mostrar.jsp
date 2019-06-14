<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1.0">

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">


<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>

    <title>Lista Veiculos</title>
</head>

<body>

	<c:import url="../index/cabecalho.jsp"></c:import>
	
    <div class="container">
        <div class="panel ">
            <div class="panel-footer">
                <h2>Veiculos Cadastrados</h2>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th class="text-center">#</th>
                        <th class="text-center">Cliente</th>
                        <th class="text-center">Placa</th>
                        <th class="text-center">Marca</th>
                        <th class="text-center">Modelo</th>
                        <th></th>
                    </tr>
                    <c:forEach var="v" items="${veiculos}">

                        <tr>
                            <td class="text-center">${v.codigo}</td>
                            <td>${v.cliente.nome}</td>
                            <td>${v.placa}</td>
                            <td>${v.marca}</td>
                            <td>${v.modelo}</td>
                            <td class="text-center"><a href="<c:url value = "/veiculo/excluir/${v.codigo}"/>"> <button class="btn btn-danger"> <i class="fas fa-trash"></i></button></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <br> <a href="<c:url value = "/veiculo/cadastro"/>"> <button class="btn btn-info">Cadastrar novo
                Veiculo</button></a> 
        </div>
    </div>

	<c:import url="../index/rodape.jsp"></c:import>
	
	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
	
    
</body>

</html>