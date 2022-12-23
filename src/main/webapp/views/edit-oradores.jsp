<%-- 
    Document   : edit-oradores
    Created on : 23 dic. 2022, 10:42:20
    Author     : gcasado0
--%>

<%@page import="model.Orador"%>
<%@include file="/views/partials/header.jsp" %>
<main>
    
<h1> Editar Orador </h1>

<%
    
    Orador o = (Orador) session.getAttribute("current_orador");
    if (o==null) {
        //Redirigir a ventana de error
    }
    
%>    
<div class="row">
    <div class="col">                
    </div>
    <div class="col-6">        
        <form method="POST" action="<%=request.getContextPath()%>/orador/update">
            <input type="hidden" name="id" value="<%=o.getId()%>">
            <div class="mb-3">     
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" id="nombre" class="form-control" placeholder="Nombre" aria-label="Nombre" name="nombre" value="<%=o.getNombre()%>" required>
            </div>
            <div class="mb-3">
                <label for="apellido" class="form-label">Apellido</label>
                <input type="text" id="apellido" class="form-control" placeholder="Apellido" aria-label="Apellido" name="apellido" value="<%=o.getApellido()%>" required>
            </div>                        
            <div class="mb-3">                
                <label for="titulo" class="form-label">Título</label>
                <input type="text" id="titulo" class="form-control" placeholder="Título" aria-label="Título" name="titulo" value="<%=o.getTitulo()%>" required>
            </div>                     
            <div class="mb-3">             
                <label for="inicio" class="form-label">Inicio</label>
                <input type="date" id="inicio" class="form-control" placeholder="Inicio" aria-label="Inicio" name="inicio" value="<%=o.getInicio()%>" required>
            </div>         
            <div class="input-group mb-3">
                <span class="input-group-text">Resumen</span>
                 <textarea class="form-control" placeholder="Sobre qué quieres hablar" aria-label="Resumen" name="resumen" required><%=o.getResumen()%></textarea>
            </div>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary">Guardar</button>
                <a class="btn btn-secondary" href="<%=request.getContextPath()%>/orador/list">Cancelar</a>
            </div>                        
        </form>
    </div>
    <div class="col">

    </div>
</div>

</main>
<%@include file="/views/partials/footer.jsp" %>
