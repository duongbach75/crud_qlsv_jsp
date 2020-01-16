/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.model;

import com.java.bean.Student;
import com.java.dbconnect.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 *
 * @author DUONG BACH
 */
public class StudentModel {

    public List<Student> getStudent() throws ClassNotFoundException, SQLException {
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "SELECT * FROM `student` WHERE 1";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        List<Student> l = new ArrayList<>();
        while (rs.next()) {
            Student s = new Student();
            s.setId(rs.getInt("id"));
            s.setName(rs.getString("name"));
            s.setAdress(rs.getString("address"));
            s.setEmail(rs.getString("email"));
            s.setPhone(rs.getString("phone"));
            l.add(s);
        }
        return l;
    }
    
    public Student getStudentbyId(int id) throws ClassNotFoundException, SQLException {
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "SELECT * FROM `student` WHERE id=?";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();
        Student s = new Student();
        while (rs.next()) {
            
            s.setId(rs.getInt("id"));
            s.setName(rs.getString("name"));
            s.setAdress(rs.getString("address"));
            s.setEmail(rs.getString("email"));
            s.setPhone(rs.getString("phone"));
            
        }
        return s;
    }
    
    public void addStudent(Student s) throws ClassNotFoundException, SQLException{
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "INSERT INTO `student`(`name`, `address`, `email`, `phone`) VALUES (?,?,?,?)";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        pstmt.setString(1,s.getName() );
        pstmt.setString(2,s.getAdress());
        pstmt.setString(3,s.getEmail());
        pstmt.setString(4,s.getPhone());
        pstmt.executeUpdate();
    }
    public void deleteStudent(String id) throws ClassNotFoundException, SQLException{
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "DELETE FROM `student` WHERE id=?";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(id));
        pstmt.executeUpdate();
    }
    
    public void updateStudent(int id, Student s) throws ClassNotFoundException, SQLException{
        DBConnector db = new DBConnector();
        Connection cnn = db.getConnection();
        String sql = "UPDATE `student` SET `name`=?,`address`=?,`email`=?,`phone`=? WHERE id=?";
        PreparedStatement pstmt = cnn.prepareStatement(sql);
        pstmt.setString(1, s.getName());
        pstmt.setString(2, s.getAdress());
        pstmt.setString(3, s.getEmail());
        pstmt.setString(4, s.getPhone());
        pstmt.setInt(5, id);
        pstmt.executeUpdate();
    }
}
