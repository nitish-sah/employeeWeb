/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.empweb.utils.JDBCConnectionManager;
import com.exavalu.entities.Role;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class RoleService {
    
    public static ArrayList getAllRoles() {
        ArrayList roleList = new ArrayList();
        try{
            Connection con = JDBCConnectionManager.getMySQLConnection();
            String sql="select * from roles";
            PreparedStatement preparestatement=con.prepareStatement(sql);
            ResultSet rs=preparestatement.executeQuery();
            while (rs.next()) {
                Role role = new Role();
                
                role.setRolesId(rs.getInt("rolesId"));
                role.setRolesName(rs.getString("rolesName"));
                
                roleList.add(role);
                
            }
        }
         catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return roleList;
        
    
    }
}
