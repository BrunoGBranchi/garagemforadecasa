<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">


<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">

    <title>Lista Veículo</title>
</head>

<body>

	<c:import url="../index/cabecalho.jsp"></c:import>

    <div class="container">
        <div class="panel ">
            <div class="panel-footer">
                <h2>Vagas Cadastradas</h2>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <tr>
                        <th class="text-center">#</th>
                        <th class="text-center">Cliente</th>
                        <th class="text-center">Placa</th>
                        <th class="text-center">Tamanho</th>
                        <th class="text-center">Tempo</th>
                        <th class="text-center">Preço</th>
                        <th></th>
                        
                        
                    </tr>
                    <c:forEach var="vg" items="${vagas}">

                        <tr>
                            <td class="text-center">${vg.codigo}</td>
                            <td>${vg.cliente}</td>
                            <td>${vg.veiculo}</td>
                            <td>${vg.tamanho}</td>
                            <td>${vg.tempo}</td>
                            <td>R$ ${vg.preco}</td>
                            
                            
                            
                            <td><a href="<c:url value = "/vaga/excluir/${vg.codigo}"/>"> <button
                                    class="btn btn-danger"><i class="fas fa-trash"></i></button></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <br> 
            <a href="<c:url value = "/vaga/cadastro"/>"> <button class="btn btn-info">Cadastrar nova Vaga</button></a> 
        </div>
    </div>

	<c:import url="../index/rodape.jsp"></c:import>	
    
</body>

</html>