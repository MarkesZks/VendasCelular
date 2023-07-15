<%-- 
    Document   : cell_cad.jsp
    Created on : 10/06/2023, 21:03:31
    Author     :  Gabriel Marques e Fellipe Mattew
--%>

<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" import="java.sql.*" import="java.util.Date"%>
<%@page import="controles.Produto" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Cadastro de Produtos</title>
    </head>
    <body>
        <h1>Produtos [Cadastro]</h1>
        <%
            /*-- Entrada --*/
            String nome = request.getParameter("nome_prod");
            float valor = Float.parseFloat(request.getParameter("valor"));
            Date fabrica = new SimpleDateFormat("yyy-MM-dd").parse( request.getParameter("fabrica") );
            String cor = request.getParameter("cor");
            String armazenamento = request.getParameter("armazenamento");
            String estado = request.getParameter("estado");

            /*-- Process --*/
            Produto prod = new Produto(0, nome, valor, armazenamento, cor, estado, fabrica);

            /*-- Saída --*/
            out.println("<b>Registro [Produto]:</b>");
            out.println("<br> Cod......: "           + prod.getCod());
            out.println("<br> Nome......: "          + prod.getNome());
            out.println("<br> Valor......: "         + prod.getValor());
            out.println("<br> Armazenamento......: " + prod.getArmazenamento());
            out.println("<br> Cor......: "           + prod.getCor());
            out.println("<br> Estado......: "        + prod.getEstado());
            out.println("<br> Data de Fabricação: "  + prod.getFabrica()); 
            String s_dt_fab = new SimpleDateFormat("yyy/MM/dd").format(prod.getFabrica());
            out.println("<br> Data (str) de Fabricação: " + s_dt_fab); 

            /*-- Gravação --*/                         
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); // Driver para MySQL -- Registra a Dll
                String url = "jdbc:mysql://localhost:3306/lojacell"; // Determina o servidor e banco(DB)
                Connection conexao = DriverManager.getConnection(url, "root", "");

                Statement stmt = conexao.createStatement(); // Criar uma instrução com base na conexão. 
                
               
                String sql = "INSERT INTO produto(nome, valor, armazenamento, cor, estado, fabricacao) VALUES ('" + 
                prod.getNome() + "', "
                + prod.getValor() +", '"
                + prod.getArmazenamento() +"', '"
                + prod.getCor() +"', '"
                + prod.getEstado() +"', '"
                + s_dt_fab + "')";   
                
                
//                "INSERT INTO produto(nome, valor, fabricacao) VALUES ('" + 
//                                                    prod.getNome() + "', " + prod.getValor() + ", '" + s_dt_fab + "')";            
                
                /*-- out.println("<br> <br>SQL: " + sql); --*/
                stmt.executeUpdate(sql);
                stmt.close();
                
                out.println("<br> Registro inserido com sucesso!");
            } catch (Exception ex) {
                out.println("<br> Erro:" + ex);
            }
        %>   
        <br><br>
        <button onclick="document.location='index.html'"> Início</button>
    </body>
</html>
