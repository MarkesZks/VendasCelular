<%-- 
    Document   : prod_cons.jsp
    Created on : 25 de set. de 2023, 16:12:41
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    
<html>
    <head>
        <title>Consulta de Produtos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
              body{
                background-color: #FBFBFB;
                text-align: center;
            }
        </style>
            
    </head>
    <body>
        
        <h1>Produtos [Consulta-Contém]</h1>
        <form name="frmConsProd" method="post" action="cell_cons.jsp">
            Nome: <input type="text" name="nome_prod"> <p>            
            <input type="reset" value="Limpar">
            <input type="submit" value="Consultar" name="cons"> <p>                   
        </form>
    </body>
</html>

