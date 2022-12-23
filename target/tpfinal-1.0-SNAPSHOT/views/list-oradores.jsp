<%-- 
    Document   : list-oradores
    Created on : 19 dic. 2022, 19:19:58
    Author     : gcasado0
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Orador"%>
<%@include file="/views/partials/header.jsp" %>
<main>
<h1>Lista de Oradores</h1>
<table class="table table-striped table-hover mb-3">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido</th>
      <th scope="col">Título</th>
      <th scope="col">Inicio</th>
      <th scope="col">Resumen</th>
      <th scope="col">Acción</th>
    </tr>
  </thead>
  <tbody>
    <%
    
        List<Orador> oradores = (List) session.getAttribute("oradores");
        if (oradores!=null) {
            Iterator<Orador> iterator = oradores.iterator();
            while(iterator.hasNext()){
			Orador o = (Orador) iterator.next();%>
        <tr>
            <th scope="row"><%=o.getId()%></th>
            <td><%=o.getNombre()%></td>
            <td><%=o.getApellido()%></td>
            <td><%=o.getTitulo()%></td>
            <td><%=o.getInicio()%></td>
            <td><%=o.getResumen()%></td>
            <td>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <a class="btn btn-primary" href="<%=request.getContextPath()%>/orador/edit?id=<%=o.getId()%>">Editar</a>
                <a class="btn btn-secondary" href="<%=request.getContextPath()%>/orador/delete?id=<%=o.getId()%>">Eliminar</a>
                </div>
            </td>
        </tr>                        
    <%      }
        }
    %>    
  </tbody>
</table>

<div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <a class="btn btn-primary" href="<%=request.getContextPath()%>/views/add-orador.jsp">Agregar</a>
</div>
</main>
<%@include file="/views/partials/footer.jsp" %>