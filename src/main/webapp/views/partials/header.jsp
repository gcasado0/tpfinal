<%-- 
    Document   : header
    Created on : 19 dic. 2022, 18:31:35
    Author     : gcasado0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
    <title>Conferencia Bs As</title>
</head>
<body class="container min-vh-100">        
    <header>
        <!-- Menu -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary ">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>/img/codoacodo.png" alt="" width="150px"  class="d-inline-block align-text-center">
                Sistema Gestión de Conferencias
            </a>          
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>    
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 fs-6 justify-content-end">                    
                    <li class="nav-item">
                        <a class="nav-link" href="/tpfinal/orador/list">Oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Salir</a>
                    </li>
                </ul>
            </div>
        </div>
        </nav>            
    </header>
