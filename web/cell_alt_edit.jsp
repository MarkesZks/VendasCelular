<%-- 
    Document   : cell_alt_edit
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
        <title>Alteração de Produtos</title>
    </head>
    <body>
        <%
            /*-- Entrada --*/
            String id = request.getParameter("id");  
 /*-- Consulta --*/                         
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); // Driver para MySQL -- Registra a Dll
                String url = "jdbc:mysql://localhost:3306/lojacell"; // Determina o servidor e banco(DB)
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement(); // Criar uma instrução com base na conexão. 
                
                /*-- "SELECT * FROM produto WHERE nome LIKE '%de%'" --*/
                String sql = "SELECT * FROM produto WHERE id = " + id;       
                
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
        %>
                    <h1>Produtos [Alteração]</h1>                
                    <form name="frmCadProd" method="post" action="cell_alt_exec.jsp">
                        Id: <input type="text" name="id" readonly="true" value="<%= rs.getString("id") %>"> <p>
                        Nome: <input type="text" name="nome_prod" value="<%= rs.getString("nome") %>"> <p>
                        Valor: <input type="text" name="valor" value="<%= rs.getString("valor") %>"> <p>
                        <label for="fabrica">Data de Fabricação:</label>
                        <input type="date" id="fabrica" name="fabrica" value="<%= rs.getString("fabricacao") %>"> 
                        <br><br>
                        <input type="reset" value="Limpar">
                        <input type="submit" value="Salvar" name="salvar"> <p>                   
                    </form>       
        <%
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
