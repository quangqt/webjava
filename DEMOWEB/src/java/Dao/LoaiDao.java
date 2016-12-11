/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author SUALAPTOP24h.NET
 */
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.loaisp;

public class LoaiDao {
// get danh sách thể loại

    public ArrayList<loaisp> getListLoaisp() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM loaisp";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<loaisp> list = new ArrayList<>();
        while (rs.next()) {
            loaisp category = new loaisp();
            category.setMaloai(rs.getInt("Maloai"));
            category.setTenloai(rs.getString("Tenloai"));
            list.add(category);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        LoaiDao dao = new LoaiDao();
        for (loaisp ds : dao.getListLoaisp()) {
            System.out.println(ds.getMaloai() + " - " + ds.getTenloai());
        }
    }
}
