
<%@page import="java.util.List"%>
<%@page import="maria.persistencia.FichaPoliciaDao"%>
<%@page import="maria.negocios.FichaPolicial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

            <!-- Optional theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
                    <nav class="navbar navbar-inverse" style="margin-bottom: 0px;">
                        <div class="container-fluid">
                          <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarContent">
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button>
                            <a href="index.jsp" class="navbar-brand">Pol&iacute;cia Federal</a>
                          </div>
                          <div class="collapse navbar-collapse" id="navbarContent">
                            <ul class="nav navbar-nav">
                              <li><a href="cadastra-fichapolicial.jsp"><span class="glyphicon glyphicon-plus"></span> Cadastrar Meliante</a></li>
                              <li><a href="altera.jsp"><span class="glyphicon glyphicon-retweet"></span> Alterar ficha</a></li>
                              <li><a href="listar.jsp.jsp"><span class="glyphicon glyphicon-th-list"></span> Listar Todos</a></li>
                              <li><a href="listaForagidos.jsp"><span class="glyphicon glyphicon-screenshot"></span> Listar Foragidos</a></li>
                              <li><a href="remover.jsp"><span class="glyphicon glyphicon-minus"></span> Remover</a></li>
                              

                            </ul>
                          </div>
                        </div>
                      </nav>
                <div class="jumbotron">
                    <img src="policia.gif" height = "80px">
                    <h1>Delegacia <small>alterar</small></h1>
                    <br>    
                </div>       
            
        <div class="table-responsive"> 
          <table class="table table-striped table-bordered">
            <thead>
            <td>ID</td>
            <td>Nome</td>
            <td>CPF</td>
            <td>Residencia</td>
            <td>Tipo de Delito</td>
            <td>Data</td>
            <td>Hora</td>
            <td>Local</td>
            <td>Estado</td>

    
        </thead>
        <%
            FichaPoliciaDao dao = new FichaPoliciaDao();
            List<FichaPolicial> delitos = dao.getLista();

            for (FichaPolicial delito : delitos) {
        %>
        <tr>
            <td> <%= delito.getId()%></td>
            <td> <%= delito.getNome()%></td>
            <td> <%= delito.getCpf()%> </td>
            <td> <%= delito.getResidencia()%> </td>
            <td> <%= delito.getDelito()%> </td>
            <td> <%= delito.getData()%> </td>
            <td> <%= delito.getHora()%> </td>
            <td> <%= delito.getLocal()%> </td>
            <td> <%= delito.getEstado()%> </td>

           
        </tr>
        <%
            }
        %>
        </table>
        </div>
    <br>
                    <form action="mvc">
                        <input type="text" style="display: none;" value="AlteraFichaLogic" name="logica" />
                        <span class="label label-default">ID da ficha a ser laterada</span> <br><input type="text" class="form-control" id="usr"  name="id"/><br><br>
                        <span class="label label-default">Nome</span> <br><input type="text" class="form-control" id="usr" name="nome"/><br><br>
                        <span class="label label-default">CPF</span> <br><input type="text" class="form-control" id="usr"" name="cpf"/><br><br>
                        <span class="label label-default">Residencia</span> <br><input type="text" class="form-control" id="usr" name="residencia"/><br><br>
                        <span class="label label-default">Delito</span> <br><input type="text" class="form-control" id="usr" name="delito"/><br><br>
                        <span class="label label-default">Data</span> <br><input type="text" class="form-control" id="usr" name="data"/><br><br>
                        <span class="label label-default">Hora</span> <br><input type="text" class="form-control" id="usr" name="hora"/><br><br>
                        <span class="label label-default">Local</span> <br><input type="text" class="form-control" id="usr" name="local"/><br><br>
                        <span class="label label-default">Estado</span> <br><input type="text" class="form-control" id="usr" name="estado"/><br><br>
                        <span class="label label-default">Avatar</span> <br><input type="text" class="form-control" id="usr" name="avatar"/><br><br>
                        <p class="pager" style="line-height: 70px;">
                            <input type="submit" class="btn btn-inverse btn-large" value="Submit"/>
                        </p>
                    </form>
                        
        </div>
    </body>
</html>
