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
<title>Desenvolvimento</title>
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
				<h2>Tarefa - Desenvolvimento</h2>
			</div>
			<div class="col-md-7 col-lg-8 mx-auto">
				<form class="needs-validation" novalidate action="/desenvolvimento/incluir"
					method="post">
					<div class="row g-3">
						<div class="col-sm-6">
							<label class="form-label">Nome da tarefa em desenvolvimento</label> <input
								type="text" class="form-control" name="titulo"
								value="Projeto de Bloco" required>
							<div class="invalid-feedback">Insira um nome</div>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Quantidade geral de erros</label> <input
								type="number" class="form-control" name="qtdErros" value="10"
								required>
							<div class="invalid-feedback">Insira a quantidade</div>
						</div>
						<div class="col-12">
							<label for="text" class="form-label">Descri��o
								computacional </label>
							<textarea class="form-control" id="message"
								placeholder="comente!" name="descComputacional" rows="3">
	              			</textarea>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Porcentagem dos testes
								conclu�dos</label> <input type="number" class="form-control"
								name="pctTestesConcluidos" value="85%" required>
							<div class="invalid-feedback">Insira a porcentagem</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="form-label">Data da entrega
								semanal</label>
							<!-- Datepicker as text field -->
							<div class="input-group date " data-date-format="mm/ddd/yyyy">
								<input type="text" name="entregasSemanais" class="form-control"
									placeholder="dd/mm/yyyy">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="mb-3">Usar� framework?</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="hasFramework"
									value="true" checked> <label class="form-check-label">Sim</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="hasFramework"
									value="false"> <label class="form-check-label">N�o</label>
							</div>
						</div>
						<hr class="my-4">
					</div>
					<div class="d-flex justify-content-center">
						<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
							tarefa</button>
					</div>
				</form>
				<c:if test="${not empty desenvolvimentos}">
					<h3>Tarefas em desenvolvimento criadas:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">Qtd geral de erros</th>
								<th scope="col">Descri��o computacional</th>
								<th scope="col">% testes conclu�dos</th>
								<th scope="col">Data da entrega semanal</th>
								<th scope="col">Framework?</th>
								<th scope="col">A��es</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="d" items="${desenvolvimentos}">
								<tr>
									<td>${d.id}</td>
									<td>${d.titulo}</td>
									<td>${d.qtdErros}</td>
									<td>${d.descComputacional}</td>
									<td>${d.pctTestesConcluidos}</td>
									<td>${d.entregasSemanais}</td>
									<td>${d.hasFramework}</td>
									<td><a href="/desenvolvimento/${d.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty desenvolvimentos}">
					<h3>N�o existem tarefas em desenvolvimento.</h3>
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
