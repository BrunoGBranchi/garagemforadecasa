<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Usuarios cadastrados</title>
</head>
<body>

	<div class="container">
		<div class="panel ">
			<div class="panel-footer">
				<h2>Usuarios Cadastrados</h2>
			</div>
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<th class="text-center">#</th>
						<th class="text-center">Nome</th>
						<th class="text-center">Usuario</th>
						<th></th>
						<th></th>
					</tr>
					<c:forEach var="u" items="${usuarios}">

						<tr>
							<td class="text-center">${u.codigo}</td>
							<td>${u.nome}</td>
							<td>${u.user}</td>
							<td><a href="<c:url value = "/usuarios/editar/${u.codigo}"/>">
									<button class="btn btn-warning">
										<i class="fas fa-pen"></i>
									</button>
							</a></td>
							<td><a
								href="<c:url value = "/usuarios/excluir/${u.codigo}"/>">
									<button class="btn btn-danger">
										<i class="fas fa-trash"></i>
									</button>
							</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<br> <a href="<c:url value = "/usuarios/cadastro"/>">
				<button class="btn btn-info">Cadastrar novo usuario</button>
			</a>
		</div>
	</div>

	<c:import url="../index/rodape.jsp"></c:import>
</body>
</html>