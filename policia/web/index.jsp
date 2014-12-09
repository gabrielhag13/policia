
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!-- Latest compiled and minified JavaScript -->
             <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

            <!-- Optional theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">


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
                    <h1>Delegacia <small>Ferramentas</small></h1>
                    <br>    
                </div>
                    <a href="cadastra-fichapolicial.jsp" class="btn btn-block btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> Cadastrar Meliante</a>
                    <a href="remover.jsp" class="btn btn-block btn-sm btn-default"><span class="glyphicon glyphicon-minus"></span> Remover Meliante</a>
                    <a href="listar.jsp.jsp" class="btn btn-block btn-sm btn-default"><span class="glyphicon glyphicon-th-list"></span> Listar todos meliantes</a>
                    <a href="listaForagidos.jsp" class="btn btn-block btn-sm btn-default"><span class="glyphicon glyphicon-screenshot"></span> Listar meliantes foragidos</a>
                    <a href="altera.jsp" class="btn btn-block btn-sm btn-default"><span class="glyphicon glyphicon-retweet"></span> Alterar ficha de um meliante</a>
                    

                    
                    
            </div>
    </body>
</html>
