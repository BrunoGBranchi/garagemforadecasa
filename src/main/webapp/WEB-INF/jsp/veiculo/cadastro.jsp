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

</head>

<body>

	<c:import url="../index/cabecalho.jsp"></c:import>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">

				<h2>Cadastro Do Veículo</h2>
				<br>
				<form class="form-horizontal"
					action='<c:url value="/veiculo/enviar"></c:url>' method="post">
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Cliente: </label>
						<div class="col-sm-10">
							<select class="form-control" name="cliente.codigo" size="1">
								<c:forEach var="c" items="${clientes}">
									<option value="${c.codigo}">${c.nome}</option>
								</c:forEach>
                            </select>
						</div>
					</div>

					<br>


					<div class="form-group">
						<label class="col-sm-2 control-label">Placa: </label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="placa" placeholder="Placa" />
						</div>
					</div>

					<br>

					<div class="form-group">
						<label class="col-sm-2 control-label">Marca: </label>
						<div class="col-sm-10">
							<select class="form-control" name="marca" size="1" id="marca"></select>
						</div>
					</div>

					<br>

					<div class="form-group">
						<label class="col-sm-2 control-label">Modelo: </label>
						<div class="col-sm-10">
							<select class="form-control" name="modelo" size="1" id="modelo"></select>
						</div>
					</div>

					<br>
					
					<div class="form-group">
						<button class="btn btn-success" type="submit" name="Enviar">Salvar</button>
						<a href="<c:url value = "/veiculo/mostrar"/>"> <button class="btn btn-info">Listar Vagas</button></a>
					</div>
				</form>
				
			 
			</div>
		</div>
	</div>
	
	<c:import url="../index/rodape.jsp"></c:import>
	
	<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
	
<script type="text/javascript">

$.ajax({

	'url': "http://fipeapi.appspot.com/api/1/carros/marcas.json",
	'type': "GET",
	'success': function(listaMarca){	    
      	var option = '<option>Selecione a Marca</option>';
      		$.each(listaMarca, function(i, obj){
          		option += '<option value="'+obj.name+'" data-codigo="'+obj.id+'">'+obj.name+'</option>';
      		})
   		
   		$("#marca").html(option).show(); 
}
});
$('#marca').change(function(e){
var marca = $('#marca').find('option:selected').data('codigo');
	$.ajax({

		'url': "http://fipeapi.appspot.com/api/1/carros/veiculos/"+marca+".json",
		'type': "GET",
		'success': function(listaModelo){	    
          	var option = '<option>Selecione o Modelo</option>';
          		$.each(listaModelo, function(i, obj){
              		option += '<option>'+obj.name+'</option>';
          		})  		
       		
       		$("#modelo").html(option).show(); 
    }
})
});

    
</script>
</body>

</html>