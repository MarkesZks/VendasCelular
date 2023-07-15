<%-- 
    Document   : cell_cons_geral
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
        <title>Consulta de Produtos - Geral</title>
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-25..200"/>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }      
            th, td{
                padding: 4px;
                text-align: left;
                border: 1px solid #DDD;
            }
            tr:hover {background-color: #D6EEEE;}            
            .material-symbols-outlined {
                font-variation-settings:
                'FILL' 0,
                'wght' 400,
                'GRAD' 0,
                'opsz' 24
            }
        </style>
        
    </head>
      <body>
        <h1>Produtos [Consulta-Lista]</h1>
        <%             
            /*-- Consulta --*/                         
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); // Driver para MySQL -- Registra a Dll
                String url = "jdbc:mysql://localhost:3306/lojacell"; // Determina o servidor e banco(DB)
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement(); // Criar uma instrução com base na conexão.                
                String sql = "SELECT * FROM produto";       
                
                ResultSet rs = stmt.executeQuery(sql);
        %>        
               
        <table style="width:100%">
            <tr bgcolor="F3F3F3">
               <th>#</th>
               <th>Id.</th>
               <th>Nome</th>
               <th>Valor</th>
               <th>Cor</th>
               <th>Estado</th>
               <th>Fabricação</th>
               <th>Apagar</th>
               <th>Atualizar</th>
            </tr>
                
        <%
                while (rs.next()) {
        %>
            <tr>
               <td><%= rs.getRow() %></td>
               <td><%= rs.getString("id") %></td>
               <td> <a href="cell_cons.jsp?nome_prod=<%= rs.getString("nome") %> "> <%= rs.getString("nome") %> </a> </td>
               <td><%= rs.getString("valor") %></td>
               <td><%= rs.getString("cor") %></td>
               <td><%= rs.getString("estado") %></td>
               <td><%= rs.getString("fabricacao") %></td>
               <td> <a href="cell_del.jsp?id=<%= rs.getString("id") %> "> <span class="material-symbols-outlined">delete</span> </a> </td>
               <td> <a href="cell_alt_edit.jsp?id=<%= rs.getString("id") %> "> <span class="material-symbols-outlined">update</span> </td>
            </tr>
        <%
                }    
        %>
        </table>
        <%
                stmt.close();             
            } catch (Exception ex) {
                out.println("<br> Erro:" + ex);
            }
        %>    
        <br><br>
        <button onclick="document.location='index.html'"> Início</button>
      </body>
</html>
