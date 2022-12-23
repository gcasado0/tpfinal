<%-- 
    Document   : add-orador
    Created on : 20 dic. 2022, 19:27:46
    Author     : gcasado0
--%>

<%@include file="/views/partials/header.jsp" %>
<main>
    
<h1> Agregar Orador </h1>
<div class="row">
    <div class="col">                
    </div>
    <div class="col-6">        
        <form method="POST" action="<%=request.getContextPath()%>/orador/create">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" id="nombre" class="form-control" aria-label="Nombre" name="nombre" value="" required>
            </div>
            <div class="mb-3">               
                <label for="apellido" class="form-label">Apellido</label>
                <input type="text" id="apellido" class="form-control" aria-label="Apellido" name="apellido" value="" required>
            </div>                        
            <div class="mb-3">                
                <label for="titulo" class="form-label">T�tulo</label>
                <input type="text" id="titulo" class="form-control" aria-label="T�tulo" name="titulo" value="" required>
            </div>                     
            <div class="mb-3">           
                <label for="inicio" class="form-label">Inicio</label>
                <input type="date" id="inicio" class="form-control" aria-label="Inicio" name="inicio" value="" required>
            </div>         
            <div class="input-group mb-3">
                <span class="input-group-text">Resumen</span>
                 <textarea class="form-control" placeholder="Sobre qu� quieres hablar" aria-label="Resumen" name="resumen" required></textarea>
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
