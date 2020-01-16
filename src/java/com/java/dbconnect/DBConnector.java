/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.dbconnect;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DUONG BACH
 */
public class DBConnector {
 public Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cnn =DriverManager.getConnection("jdbc:mysql://localhost:3306/sinhvien", "root", "");
        return cnn;
    }    
}
