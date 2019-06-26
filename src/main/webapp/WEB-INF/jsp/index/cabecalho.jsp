<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>

<script src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>

</head>
<body>
		<div class="navbar-wrapper" style="margin-bottom: 50px;">
		<div class="container-fluid">
			<nav class="navbar navbar-fixed-top navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<i class="fas fa-car carro col-xs-1 col-sm-1 col-md-1 col-lg-1"></i>
					</div>
					<div id="navbar" class="col-xs-10 col-sm-10 navbar-collapse collapse col-md-10 col-lg-10">
						<ul class="nav navbar-nav">
							<li><a href="/SistemaEstacionamento/login/menu">Inicio</a></li>
							<li><a href="/SistemaEstacionamento/cliente/cadastro">Clientes</a></li>
							<li><a href="/SistemaEstacionamento/veiculo/cadastro">Veiculos</a></li>
							<li><a href="/SistemaEstacionamento/vaga/cadastro">Vagas</a></li>
						</ul>
					</div>
					<div class="navbar-right col-xs-1 col-sm-1 col-md-1 col-lg-1">
						<form class="navbar-form navbar-right" action="/SistemaEstacionamento/login/entrar">
							<button type="submit" class="btn btn-danger"> <small class="hidden-sm hidden-xs">Sair</small> <i class="fas fa-door-open ico-sair"></i>
							</button>
						</form>
					</div>
				</div>
			</nav>
			<div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
		
</body>
</html>