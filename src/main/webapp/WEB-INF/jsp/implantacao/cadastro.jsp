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
<title>Implantação</title>
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
				<h2>Tarefa - Implantação</h2>
			</div>
			<div class="col-md-7 col-lg-8 mx-auto">
				<form class="needs-validation" novalidate
					action="/implantacao/incluir" method="post">
					<div class="row g-3">
						<div class="col-sm-6">
							<label class="form-label">Nome da tarefa em implantação</label> <input
								type="text" class="form-control" name="titulo"
								value="Projeto de Bloco" required>
							<div class="invalid-feedback">Insira um nome</div>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Quantidade de funcionários a
								serem treinados</label> <input type="number" class="form-control"
								name="qtdFuncTreinados" value="18" required>
							<div class="invalid-feedback">Insira a quantidade</div>
						</div>
						<div class="col-12">
							<label for="text" class="form-label">Considerações finais</label>
							<textarea class="form-control" id="message"
								placeholder="comente!" name="consideracoes" rows="3">
	              			</textarea>
						</div>
						<div class="col-sm-6">
							<label class="form-label">Valor dos custos extras durante
								o projeto concluídos</label> <input type="number" class="form-control"
								name="custosExtras" value="R$3.000" required>
							<div class="invalid-feedback">Insira a porcentagem</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="form-label">Data da entrega
								final</label>
							<!-- Datepicker as text field -->
							<div class="input-group date " data-date-format="mm/ddd/yyyy">
								<input type="text" name="dataEntrega" class="form-control"
									placeholder="dd/mm/yyyy">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="mb-3">Já está instalado?</label>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="isInstalled"
									value="true" checked> <label class="form-check-label">Sim</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="isInstalled"
									value="false"> <label class="form-check-label">Não</label>
							</div>
						</div>
						<hr class="my-4">
					</div>
					<div class="d-flex justify-content-center">
						<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
							tarefa</button>
					</div>
				</form>
				<c:if test="${not empty implantacoes}">
					<h3>Tarefas em implantação criadas:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">Qtd de funcionários a serem treinados</th>
								<th scope="col">Considerações finais</th>
								<th scope="col">Total dos custos extras</th>
								<th scope="col">Data da entrega final</th>
								<th scope="col">Instalado?</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" items="${implantacoes}">
								<tr>
									<td>${i.id}</td>
									<td>${i.titulo}</td>
									<td>${i.qtdFuncTreinados}</td>
									<td>${i.consideracoes}</td>
									<td>${i.custosExtras}</td>
									<td>${i.dataEntrega}</td>
									<td>${i.isInstalled}</td>
									<td><a href="/implantacao/${i.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty implantacoes}">
					<h3>Não existem tarefas em implantação.</h3>
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
