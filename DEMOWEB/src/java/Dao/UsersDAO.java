/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Users;
/**
 *
 * @author SUALAPTOP24h.NET
 */
public class UsersDAO {

    public boolean checkEmail(String email) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM users WHERE user_email='" + email + "'";
        PreparedStatement ps;
        try {
            ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean insertUser(Users u){
        Connection connection= DBConnect.getConnecttion();
        String sql="INSERT INTO users VALUES(?,?,?,?)";
        try {
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1,u.getUserID());
            ps.setString(2,u.getUserEmail());
            ps.setString(3,u.getUserPass());
            ps.setBoolean(4,u.isUserRole());
            ps.executeUpdate();
            return  true;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
