/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.model;

import com.java.bean.login;
import com.java.dbconnect.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DUONG BACH
 */
public class LoginModel {
    public void addLogin(login s) throws ClassNotFoundException, SQLException{
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "INSERT INTO `login`(`user`, `pass`) VALUES (?,?)";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        pstmt.setString(1,s.getUser() );
        pstmt.setString(2,s.getPass());
        pstmt.executeUpdate();
    }
    public int checkLogin(String user, String pass) throws ClassNotFoundException, SQLException{
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "SELECT * FROM login WHERE user=? AND pass=?";
        PreparedStatement pstmt = cnn.prepareStatement(sql);   
       pstmt.setString(1, user);
       pstmt.setString(2, pass);
        ResultSet rs = pstmt.executeQuery(); 
       if (rs.next())
        return 1;
        else return 0;
    }
}
