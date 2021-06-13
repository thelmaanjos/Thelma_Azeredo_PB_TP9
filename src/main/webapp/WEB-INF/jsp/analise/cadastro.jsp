<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>An�lise</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="screen"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">
	<div class="container">
		<main>
			<div class="py-5 text-center">
				<h2>Tarefa - An�lise</h2>
			</div>
			<div class="col-md-7 col-lg-8 mx-auto">
				<form class="needs-validation" novalidate action="/analise/incluir"
					method="post">
					<div class="row g-3">
						<div class="col-sm-6">
							<label class="form-label">Nome da tarefa em an�lise</label> <input
								type="text" class="form-control" name="titulo"
								value="Projeto de Bloco" required>
							<div class="invalid-feedback">Insira um nome</div>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Quantidade de requisitos
								funcionais</label> <input type="number" class="form-control"
								name="qtdReqFunc" value="10" required>
							<div class="invalid-feedback">Insira a quantidade</div>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Quantidade de requisitos n�o
								funcionais</label> <input type="number" class="form-control"
								name="qtdReqFunc" value="5" required>
							<div class="invalid-feedback">Insira a quantidade</div>
						</div>
						<div class="col-12">
							<label for="text" class="form-label">Descreva seus
								requisitos funcionais </label>
							<textarea class="form-control" id="message"
								placeholder="comente!" name="descRecFunc" rows="3">
	              			</textarea>
						</div>
						<div class="col-12">
							<label for="text" class="form-label">Descreva seus
								requisitos n�o funcionais </label>
							<textarea class="form-control" id="message"
								placeholder="comente!" name="descRecNaoFunc" rows="3">
	              			</textarea>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Total do or�amento</label> <input
								type="number" class="form-control" name="orcamento"
								value="R$10.530" required>
							<div class="invalid-feedback">Insira o valor</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="form-label">Data da reuni�o</label>
							<!-- Datepicker as text field -->
							<div class="input-group date " data-date-format="mm/ddd/yyyy">
								<input type="text" name="dataReuniao" class="form-control"
									placeholder="dd/mm/yyyy">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="mb-3">Est� validado?</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="isValidated"
									value="true" checked> <label class="form-check-label">Sim</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="isValidated"
									value="false"> <label class="form-check-label">N�o</label>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="mb-3">Est� verificado?</label>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="isVerificated" value="true" checked> <label
									class="form-check-label">Sim</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="isVerificated" value="false"> <label
									class="form-check-label">N�o</label>
							</div>
						</div>
						<hr class="my-4">
					</div>
					<div class="d-flex justify-content-center">
						<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
							tarefa</button>
					</div>
				</form>
				<c:if test="${not empty analises}">
					<h3>Tarefas em an�lise criadas:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">Qtd requisitos funcionais</th>
								<th scope="col">Qtd requisitos n�o funcionais</th>
								<th scope="col">Descri��o req funcionais</th>
								<th scope="col">Descri��o req n�o funcionais</th>
								<th scope="col">Or�amento</th>
								<th scope="col">Reuni�o</th>
								<th scope="col">Verificado?</th>
								<th scope="col">Validado?</th>
								<th scope="col">A��es</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="a" items="${analises}">
								<tr>
									<td>${a.id}</td>
									<td>${a.titulo}</td>
									<td>${a.qtdReqFunc}</td>
									<td>${a.qtdReqNaoFunc}</td>
									<td>${a.descReqFunc}</td>
									<td>${a.descReqNaoFunc}</td>
									<td>${a.orcamento}</td>
									<td>${a.dataReuniao}</td>
									<td>${a.isValidated}</td>
									<td>${a.isVerificated}</td>
									<td><a href="/analise/${a.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty analises}">
					<h3>N�o existem tarefas em an�lise.</h3>
				</c:if>
			</div>
		</main>
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!-- Plugin pro Datapicker novo -->
		<script
			src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/js/bootstrap-datepicker.min.js'></script>
		<script>
			$('.input-group.date').datepicker({
				format : "mm/dd/yyyy"
			});
		</script>
	</div>
</body>
</html>
