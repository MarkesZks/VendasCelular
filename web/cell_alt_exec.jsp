<%-- 
    Document   : cell_alt_exec
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
        <h1>Produtos [Alteração]</h1>
        <%
            /*-- Entrada --*/
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome_prod");
            float valor = Float.parseFloat(request.getParameter("valor"));
            Date fabrica = new SimpleDateFormat("yyy-MM-dd").parse( request.getParameter("fabrica") );

            /*-- Process --*/
            Produto prod = new Produto(id, nome, valor, fabrica);

            /*-- Saída --*/
            out.println("<b>Alteração [Produto]:</b>");
            out.println("<br> Cod......: " + prod.getCod());
            out.println("<br> Cod......: " + prod.getCod());
            out.println("<br> Nome......: " + prod.getNome());
            out.println("<br> Valor......: " + prod.getValor());
            out.println("<br> Data de Fabricação: " + prod.getFabrica()); 

            String s_dt_fab = new SimpleDateFormat("yyy/MM/dd").format(prod.getFabrica());
            out.println("<br> Data (str) de Fabricação: " + s_dt_fab); 

            /*-- Gravação --*/                         
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); // Driver para MySQL -- Registra a Dll
                String url = "jdbc:mysql://localhost:3306/fabrica"; // Determina o servidor e banco(DB)
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement(); // Criar uma instrução com base na conexão. 
                
                /*-- "UPDATE produto SET nome='[value-2]', valor='[value-3]', fabricacao='[value-4]' WHERE 1" --*/
                String sql = "UPDATE produto SET nome='" + prod.getNome() + "', valor= " + prod.getValor() + ", fabricacao='" + s_dt_fab +
                        "' WHERE id = " + id;            
                
                /*-- out.println("<br> <br>SQL: " + sql); --*/
                stmt.executeUpdate(sql);
                stmt.close();
                
                out.println("<br> Registro alterado com sucesso!");
            } catch (Exception ex) {
                out.println("<br> Erro:" + ex);
            }
        %>   
        <br><br>
        <button onclick="document.location='index.html'"> Início</button>
    </body>
</html>
