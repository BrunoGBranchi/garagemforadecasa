<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Abastecer veiculo</title>
<link href="<c:url value="/resource/Bootstrap/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h1 class="text-center">Bem Vindo!</h1>
				<form class="form-group"
					action='<c:url value="/index/verificar"></c:url>' method="post">
					<div class="form-group">
						<label>Informe o codigo de acesso: </label> 
						<input class="form-control" type="password"
							name="senha" required="required" placeholder="Sua Senha" />
					</div>
					
					<input class="btn btn-default" type="submit" name="Enviar" />
				</form>
			</div>
		</div>
	</div>
	<a href = "/your.groupid/abastecimento/cadastro"><button class="btn btn-primary">Abrir Sistema</button></a>
</body>
</html>