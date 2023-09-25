<%-- 
    Document   : prod_del.jsp
    Created on : 25 de set. de 2023, 16:13:41
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Apagar Produtos</title>
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
        <h1>Produtos [Apagar]</h1>
        <form name="frmApagarProd" method="post" action="cell_del.jsp">
            Id: <input type="text" name="id"> <p>            
            <input type="reset" value="Limpar">
            <input type="submit" value="Apagar" name="apagar"> <p>                   
        </form>
    </body>
</html>

