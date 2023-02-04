/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.empweb.utils.JDBCConnectionManager;
import com.exavalu.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Avijit
 */
public class UserService {

    public static boolean doLogin(String emailAddress, String password) {

        boolean result = false;

        Connection con = JDBCConnectionManager.getMySQLConnection();

        String sql = "Select * from users where emailAddress=? and password=?";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emailAddress);
            preparedStatement.setString(2, password);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                result = true;
            }

            con.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public static boolean signUp(User user) {

        boolean result = false;

        Connection con = JDBCConnectionManager.getMySQLConnection();

        String sql = "INSERT INTO users (emailAddress,password,firstName,lastName,status) "
                + "VALUES (?,?,?,?,?)";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmailAddress());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirstName());
            preparedStatement.setString(4, user.getLastName());
            preparedStatement.setInt(5, 1);

            int rows = preparedStatement.executeUpdate();

            if (rows==1) {
                result = true;
            }

            con.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;

    }

    public static User getUser(String emailAddress) {
        User user= new User();
        Connection con = JDBCConnectionManager.getMySQLConnection();
        try {
            
            String sql = "Select * from users where emailAddress=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emailAddress);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            if(rs.next())
            {
                
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                con.close();
            }
            
        } catch (SQLException ex) {
            
        }
        
        return user;
    }
    

}
