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

<title>Editando cliente...</title>
</head>
<body>

	<c:import url="../index/cabecalho.jsp"></c:import>

	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h2 class="text-center">Editando Cliente</h2>

				<form class="form-horizontal"
					action='<c:url value="/cliente/editando"></c:url>' method="post">

					<input type="hidden" name="codigo" value="${codigo}" />
					<div class="form-group">
						<label class="col-sm-2 control-label">Nome: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="nome"
								value="${clientes.nome}" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">CPF: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="cpf"
								value="${clientes.cpf}" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">Endereço: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="endereco"
								value="${clientes.endereco}" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">Compl: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="complemento"
								value="${clientes.complemento}" />
						</div>
					</div>

					<br>

					<div class="form-group">
						<label class="col-sm-2 control-label">Estado: </label>
						<div class="col-sm-10">
							<select class="form-control" name="uf" size="1" id="uf">
								<option>${clientes.uf}</option>
							</select>
						</div>
					</div>

					<br>



					<div class="form-group">
						<label class="col-sm-2 control-label">Cidade: </label>
						<div class="col-sm-10">
							<select class="form-control" name="cidade" size="1" id="cidade">
								<option>${clientes.cidade}</option>
							</select>
						</div>
					</div>

					<br>



					<div class="form-group">
						<button class="btn btn-success" type="submit">Salvar</button>
					</div>
				</form>
				<a href="<c:url value = "/cliente/mostrar"/>">
					<button class="btn btn-info">Listar Clientes</button>
				</a>

			</div>
		</div>
	</div>

	<c:import url="../index/rodape.jsp"></c:import>

	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
	<script type="text/javascript">
		$
				.ajax({

					'url' : "https://servicodados.ibge.gov.br/api/v1/localidades/estados",
					'type' : "GET",
					'success' : function(listaUf) {
						var option = '<option>${clientes.uf}</option>';
						$
								.each(
										listaUf,
										function(i, obj) {
											option += '<option value="'+obj.nome+'" data-codigo="'+obj.id+'">'
													+ obj.sigla + '</option>';
										})

						$("#uf").html(option).show();
					}
				});
		$('#uf')
				.change(
						function(e) {
							var estado = $('#uf').find('option:selected').data('codigo');

$.ajax({
										'url' : "https://servicodados.ibge.gov.br/api/v1/localidades/estados/"
												+ estado + "/municipios",
										'type' : "GET",
										'success' : function(listaCidades) {
											var option = '<option>Selecione a Cidade</option>';
											$.each(listaCidades, function(i,
													obj) {
												option += '<option>' + obj.nome
														+ '</option>';
											})

											$("#cidade").html(option).show();
										}
									})
						});
	</script>
</body>
</html>