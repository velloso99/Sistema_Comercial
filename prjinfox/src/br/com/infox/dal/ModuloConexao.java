/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infox.dal;
import java.sql.*;

/**
 *
 * @author vello
 */
public class ModuloConexao {
    //método responsavel por estabelecer a conexão com o banco
    public static Connection conector(){
        java.sql.Connection conexao = null;
        // a linha abaixo chama o driver 
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando informações referente ao banco
        String url= "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";
    }
}
