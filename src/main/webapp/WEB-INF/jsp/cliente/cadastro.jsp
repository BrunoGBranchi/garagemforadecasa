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

<script type="text/javascript"
	src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
<title>Cadastro Do Cliente</title>
</head>

<body>
	<c:import url="../index/cabecalho.jsp"></c:import>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">

				<h2>Cadastrar Cliente</h2>
				<br>
				<form class="form-horizontal"
					action='<c:url value="/cliente/enviar"></c:url>' method="post">

					<div class="form-group">
						<label class="col-sm-2 control-label">Nome: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="nome"
								placeholder="Nome Completo" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">CPF: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="cpf"
								placeholder="CPF" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">Endereço: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="endereco"
								placeholder="Endereço" />
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">Compl: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="complemento"
								placeholder="Complemento" />
						</div>
					</div>

					<br>

					<div class="form-group">
						<label class="col-sm-2 control-label">Estado: </label>
						<div class="col-sm-10">
							<select class="form-control" name="uf" size="1" id="uf"></select>
						</div>
					</div>

					<br>



					<div class="form-group">
						<label class="col-sm-2 control-label">Cidade: </label>
						<div class="col-sm-10">
							<select class="form-control" name="cidade" size="1" id="cidade"></select>
						</div>
					</div>

					<br>



					<div class="form-group">
						<input class="btn btn-success" type="submit" name="Enviar" />

					</div>
				</form>
				<a href="<c:url value = "/cliente/mostrar"/>"><button
						class="btn btn-info">Listar Clientes</button></a>

			</div>
		</div>
	</div>
	
	<c:import url="../index/rodape.jsp"></c:import>
	
	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
	<script type="text/javascript">
		setInterval(function() {

			const data = new Date();

			$('#data-hora')
					.text(
							data.toLocaleDateString() + ' '
									+ data.toLocaleTimeString());

		}, 1000);

		setTimeout(function() {
			$('body').css('background-color', 'white');
			$('fieldset').css('background-color', 'white');
		}, 5000);

		$.ajax({

					'url' : "https://servicodados.ibge.gov.br/api/v1/localidades/estados",
					'type' : "GET",
					'success' : function(listaUf) {
						var option = '<option>Selecione o Estado</option>';
						$.each(listaUf, function(i, obj) {
							option += '<option value="' + obj.sigla + '">'
									+ obj.sigla + '</option>';
						})

						$("#uf").html(option).show();
					}
				});
		$('#uf').change(function(e) {
		var estado = $('#uf').val();
		
		$.ajax({
		'url' : "https://servicodados.ibge.gov.br/api/v1/localidades/estados/"+ estado + "/municipios",
		'type' : "GET",
		'success' : function(listaCidades) {
		var option = '<option>Selecione a Cidade</option>';
		$.each(listaCidades, function(i, obj) {
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