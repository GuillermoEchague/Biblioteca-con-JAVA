/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conectar_BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class Conectar_BD {
    static Connection con = null;
    static String url = "jdbc:mysql://localhost/prueba_libro";
    static String user = "root";
    static String pass="";  
    
    public static Connection Conectar(){
       
        try {
            Class.forName("com.mysql.jdbc.Driver"); // carga driver
            try {
                con = DriverManager.getConnection(url,user,pass);  // conexion con
            } catch (SQLException ex) {
                Logger.getLogger(Conectar_BD.class.getName()).log(Level.SEVERE, null, ex);
            }
            JOptionPane.showMessageDialog(null,
                    "Conexión exitosa!");  // mensaje de conexion
            

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conectar_BD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
         }  
        
    } 