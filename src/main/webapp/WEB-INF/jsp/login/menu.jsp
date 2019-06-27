<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Acessar Sistema</title>

<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css">

<link href="<c:url value="/resources/css/menu.css"/>" rel="stylesheet"
	type="text/css">


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<script type="text/javascript" src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>

<script src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>


</head>
<body>
	<c:import url="../index/cabecalho.jsp"></c:import>
	 
	    <div class="container-fluid">
        <div class="row topo">
            <div class="mensagem">
                <h1>GARAGEM FORA DE CASA</h1>
                <h3>Bem-Vindo!</h3>
                <hr class="divide">
            </div>
        </div>
    </div>
	
	<c:import url="../index/rodape.jsp"></c:import>
	
	<script type="text/javascript"
		src="<c:url value="/webjars/jquery/1.9.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/webjars/bootstrap/3.4.1/js/bootstrap.js"/>"></script>
		
		
</body>
</html>