<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">
<title>Garagem fora de casa - Entrar</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h1 class="text-center">Bem Vindo!</h1>
				<form class="form-group"
					action='<c:url value="/login/verificar"></c:url>' method="post">
					<div class="form-group">
						<label>Usuario: </label> <input class="form-control" type="text"
							name="user" required="required" placeholder="Seu Usuario" />
					</div>
					<div class="form-group">
						<label>Senha: </label> <input class="form-control" type="password"
							name="senha" required="required" placeholder="Sua Senha" />
					</div>
					<button class="btn btn-success" type="submit" name="Entrar" />
					Login
					</button>
				</form>
				<a href="login/cadastro"><label>Esqueci minha senha</label></a>
				<button class="btn btn-info btn-block">Sou novo aqui!</button>
			</div>
		</div>
	</div>
</body>
</html>