<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.83.1">
	<title>Home</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

    <!-- Bootstrap core CSS -->
	<link 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" 
		crossorigin="anonymous">

    <style>
	.bd-placeholder-img {
		font-size: 1.125rem;
		text-anchor: middle;
		-webkit-user-select: none;
		-moz-user-select: none;
		user-select: none;
      }

	@media (min-width: 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
			}
	}
    </style>
  
    <!-- Custom styles for this template -->
    <link href="css/sidebar.css" rel="stylesheet">
</head>
<body class="bg-light">
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
	  <symbol id="home" viewBox="0 0 16 16">
	    <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
	  </symbol>
	  <symbol id="speedometer2" viewBox="0 0 16 16">
	    <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
	    <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
	  </symbol>
	  <symbol id="table" viewBox="0 0 16 16">
	    <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
	  </symbol>
	  <symbol id="people-circle" viewBox="0 0 16 16">
	    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
	    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
	  </symbol>
	  <symbol id="grid" viewBox="0 0 16 16">
	    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
	  </symbol>
	  <symbol id="collection" viewBox="0 0 16 16">
	    <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z"/>
	  </symbol>
	  <symbol id="toggles2" viewBox="0 0 16 16">
	    <path d="M9.465 10H12a2 2 0 1 1 0 4H9.465c.34-.588.535-1.271.535-2 0-.729-.195-1.412-.535-2z"/>
	    <path d="M6 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm0 1a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm.535-10a3.975 3.975 0 0 1-.409-1H4a1 1 0 0 1 0-2h2.126c.091-.355.23-.69.41-1H4a2 2 0 1 0 0 4h2.535z"/>
	    <path d="M14 4a4 4 0 1 1-8 0 4 4 0 0 1 8 0z"/>
	  </symbol>
	  <symbol id="geo-fill" viewBox="0 0 16 16">
	    <path fill-rule="evenodd" d="M4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z"/>
	  </symbol>
	</svg>
	<div class="side">
		<div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px;">
			<a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
				<span class="fs-4">Seu Todoology</span>
			</a>
	  		<hr>
			<ul class="nav nav-pills flex-column mb-auto">
			  <li class="nav-item">
			    <a href="#" class="nav-link active" aria-current="page">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
			      Home
			    </a>
			  </li>
			  <li>
			    <a href="#" class="nav-link text-white">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
			      Seu painel
			    </a>
			  </li>
			  <li>
			    <a href="#" class="nav-link text-white">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
			      Seus projetos
			    </a>
			  </li>
			  <li>
			    <a href="#" class="nav-link text-white">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#geo-fill"/></svg>
			      Lista de tarefas
			    </a>
			  </li>
			  <li>
			    <a href="#" class="nav-link text-white">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
			      Nova atividade
			    </a>
			  </li>
			  <li>
			    <a href="#" class="nav-link text-white">
			      <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
			      Seu perfil
			    </a>
			  </li>
			</ul>
			<hr>
			<div class="dropdown">
				<a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
					<img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
			    	${user.email}
			  	</a>
			  	<ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
				    <li><a class="dropdown-item" href="#">New project...</a></li>
				    <li><a class="dropdown-item" href="#">Settings</a></li>
				    <li><a class="dropdown-item" href="#">Profile</a></li>
				    <li><hr class="dropdown-divider"></li>
				    <li><a class="dropdown-item" href="#">Sign out</a></li>
				</ul>
			</div>
		</div>   
		<div class="col-lg-25 mx-auto my-auto p-3 py-md-3">
			<main>
				<div class="d-flex flex-column p-3">
					<div class="container px-3 py-5" id="featured-3">
						<h2 class="pb-2 border-bottom">Olá, ${user.nome}</h2>
						<h3 class="pb-2 border-bottom">Vamos lá!</h3>
						<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
							<div class="feature col">
								<div class="feature-icon bg-primary bg-gradient">
									<svg class="bi" width="1em" height="1em"><use xlink:href="#collection"/></svg>
								</div>
								<h3>Criar novo projeto</h3>
								<p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
								<a href="/projeto" class="btn btn-primary my-2">criar</a>
							</div>
							<div class="feature col">
								<div class="feature-icon bg-primary bg-gradient">
							    	<svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"/></svg>
							  	</div>
							  	<h3>Criar nova atividade</h3>
							  	<p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
								<a href="/atividade" class="btn btn-primary my-2">criar</a>
							</div>
							<div class="feature col">
								<div class="feature-icon bg-primary bg-gradient">
							    	<svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"/></svg>
							  	</div>
							  	<h3>Criar nova tarefa</h3>
							  	<p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
							  	<a href="/tarefa" class="btn btn-primary my-2">criar</a>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>