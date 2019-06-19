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
    <title>Cadastro da Vaga do Veículo</title>
</head>

<body>

	<c:import url="../index/cabecalho.jsp"></c:import>

    <div class="row col-sm-2 bg-info text-center">
        <div class="jumbotron">
            <div class="container ">
                <h4>VALORES DAS VAGAS</h4>
                ________________<br>
                Vaga P: R$2,00<br><br>
                Tamanho: <br>
                Comp: 2,5 <br>
                Larg: 2,0 
                <br>
                ________________<br>                
                Vaga M: R$3,00<br>
                <br>
                Tamanho: <br>
                Comp: 4,5 <br>
                Larg: 3,5
                <br>
                ________________<br>
                Vaga G: R$5,00
                <br><br>
                Tamanho: <br>
                Comp: 8,0 <br>
                Larg: 4,0
                <br><br>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">

                <h2>Cadastro Da Vaga Do Veículo</h2>
                <br>
                <form class="form-horizontal" action='<c:url value="/vaga/enviar"></c:url>' method="post">
					
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Cliente: </label>
                        <div class="col-sm-10">
                            <select class="form-control" name="cliente.codigo" size="1" id="cliente">
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
                            <select class="form-control" name="placa" size="1" id="veiculo">
                            </select>
                        </div>
                    </div>

                    <br>
                   
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="radios">Tamanhos das Vagas:</label>
                                <div class="col-md-4">
                                    <label class="radio-inline" for="radios-0">
                                        <input type="radio" name="pequeno"  value="p" checked="checked">
                                        P
                                    </label>
                                    <label class="radio-inline" for="radios-1">
                                        <input type="radio" name="medio"  value="m">
                                        M
                                    </label>
                                    <label class="radio-inline" for="radios-2">
                                        <input type="radio" name="grande" value="g">
                                        G
                                    </label>

                                </div>
                            </div>

                    <br>
                    <div class="form-group">
						<label class="col-sm-2 control-label">Horas: </label>
						<div class="col-sm-2">
							<input class="form-control" type="number" name="horas" id="horas" />
						</div>
					</div>
					
                    <br>
                    <br>
                    
                    <div class="form-group">
                        <Button class="btn btn-success" type="submit"> Cadastrar </Button>
                    </div>
                </form>
				<a href="<c:url value = "/vaga/mostrar"/>"> <button class="btn btn-info">Listar
                            Vagas</button></a>

            </div>
        </div>
    </div>
	
	<c:import url="../index/rodape.jsp"></c:import>
	
    <script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
	<script type="text/javascript">

	$('#cliente').change(function(e){
	var cliente = $('#cliente').find('option:selected').data('codigo');
		$.ajax({

			'url': "dinamico/"+cliente,
			'type': "GET",
			'success': function(listaVeiculos){	    
	          	var option = '<option>Selecione o Veiculo</option>';
	          		$.each(listaVeiculos, function(i, obj){
	              		option += '<option>'+obj.modelo+'</option>';
	          		})  		
	       		
	       		$("#veiculo").html(option).show(); 
	    }
	})
	});

	
	</script>
</body>

</html>