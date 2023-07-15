<%-- 
    Document   : cell_del.jsp
    Created on : 08/06/2023, 18:20:54
    Author     : Gabriel Marques e Fellipe Mattew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" import="java.sql.*" import="java.util.Date"%>
<%@page import="controles.Produto" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Apagar Produtos</title>
          <style>
                body{
                background-color: #FBFBFB;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Produtos [Apagar]</h1>
        <%
            /*-- Entrada --*/
            String id = request.getParameter("id"); //Recebendo do .html

            /*-- Exec. DB --*/                         
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); // Driver para MySQL -- Registra a Dll
                String url = "jdbc:mysql://localhost:3306/lojacell"; // Determina o servidor e banco(DB)
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement(); // Criar uma instrução com base na conexão. 
                
                /*-- "INSERT INTO produto(nome, valor, fabricacao) VALUES ('Suco Verde', 10.50, '2023/05/23')" --*/
                String sql = "DELETE FROM produto WHERE id = " + id;            
                
                /*-- out.println("<br> <br>SQL: " + sql); --*/
                int i = stmt.executeUpdate(sql);
                
                if (i>0){
                    out.println("<br> Registro excluido com sucesso!");                    
                }else{
                    out.println("<br> Erro na instrução!");
                }
                stmt.close();
                
            } catch (Exception ex) {
                out.println("<br> Erro:" + ex);
            }
        %>   
        <br><br>
        <button onclick="document.location='index.html'"> Início</button>
    </body>
</html>
