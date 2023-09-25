<%-- 
    Document   : prod_cad.jsp
    Created on : 25 de set. de 2023, 16:11:27
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Cadastro de Produtos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
              body{
                background-color: #FBFBFB;
            }
            h1{
                  text-align: center;
                  margin: 20px 0px 80px;
            }
            form{   
               text-align: center;
            }
            form>p{
                font-size:20px; 
                font-weight: 500;
            }
        </style>
    </head>
    <body>
        
        <h1>Cadastro de Celulares</h1>
        <form name="frmCadProd" method="post" action="cell_cad.jsp">
               <!-- Forms com campos dos valores-->
            <p>Nome: <input type="text" name="nome_prod" placeholder="Nome"> <p/>
           <p> Valor: <input type="text" name="valor" placeholder="Valor"> <p/>
           <p> Cor: <input type="text" name="cor" placeholder="Azul"> <p/>
          <p>  Armazenamento: <input type="text" name="armazenamento" placeholder="150GB"> <p/>
         <p>   Estado: <input type="text" name="estado" placeholder="Excelente"> <p/>
            <label for="fabrica">Data de Fabricação:</label>
            <input type="date" id="fabrica" name="fabrica"> <p>
                
            <br><br>
               <!-- Botões de Salvar no BD e Limpar campos-->
            <input type="submit" value="Salvar" name="salvar">
            <input type="reset" value="Limpar">
            
        </form>
    </body>
</html>
