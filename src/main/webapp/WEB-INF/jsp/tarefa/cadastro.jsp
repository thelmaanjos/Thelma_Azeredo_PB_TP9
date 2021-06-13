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
<title>Cadastro de tarefas</title>
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
				<h2>Crie uma tarefa</h2>
			</div>
			<div class="col-md-7 col-lg-8 mx-auto">
				<form class="needs-validation" novalidate action="/projeto/incluir"
					method="post">
					<div class="row g-3">
						<div class="col-sm-6">
							<label for="firstName" class="form-label">Título</label>
							<input type="text" class="form-control" name="titulo"
								value="Terminar Projeto de Bloco" required>
							<div class="invalid-feedback">Insira um nome para o seu
								projeto</div>
						</div>
						<div class="col-sm-6">
							<label for="username" class="form-label">Autor</label>
							<div class="input-group has-validation">
								<span class="input-group-text">@</span> <input type="text"
									class="form-control" name="autor" value="${user.nome}" required>
								<div class="invalid-feedback">Insira o autor do projeto</div>
							</div>
						</div>
						<div class="col-12">
							<label for="text" class="form-label">Descrição da tarefa
								<span class="text-muted">(Opcional)</span>
							</label>
							<textarea class="form-control" id="message"
								placeholder="Descreva um pouco o seu projeto :)" name="descTarefa"
								rows="3">
	              			</textarea>
						</div>
						<div class="col-sm-6">
							<label for="text" class="form-label">Início</label>
							<!-- Datepicker as text field -->
							<div class="input-group date " data-date-format="mm/ddd/yyyy">
								<input type="text" name="inicioTarefa" class="form-control" placeholder="dd/mm/yyyy">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<label for="text" class="form-label">Previsão de término</label>
							<!-- Datepicker as text field -->
							<div class="input-group date " data-date-format="mm/ddd/yyyy">
								<input type="text" name="terminoTarefa" class="form-control" placeholder="dd/mm/yyyy">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-th"></span>
								</div>
							</div>
						</div>
						<hr class="my-4">
					</div>
					<div class="d-flex justify-content-center">
						<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
							tarefa</button>
					</div>
				</form>
				<c:if test="${not empty tarefas}">
					<h3>Projetos criados:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">Autor</th>
								<th scope="col">Descrição</th>
								<th scope="col">Início</th>
								<th scope="col">Término</th>

								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="t" items="${tarefas}">
								<tr>
									<td>${t.id}</td>
									<td>${t.titulo}</td>
									<td>${t.autor}</td>
									<td>${t.descTarefa}</td>
									<td>${t.inicioTarefa}</td>
									<td>${t.terminoTarefa}</td>
									<td><a href="/tarefa/${t.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty tarefas}">
					<h3>Não existem tarefas criados.</h3>
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
