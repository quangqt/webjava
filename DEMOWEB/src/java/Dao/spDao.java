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
import java.util.ArrayList;
import model.sp;

public class spDao {
// get danh soD sản phẩm dựa vào mã danh mục

    public ArrayList<sp> getListsp() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM sanpham";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<sp> list = new ArrayList<>();
        while (rs.next()) {
            sp product = new sp();
            product.setMasp(rs.getLong("Masp"));
            product.setTensp(rs.getString("Tensp"));
            product.setHinhanh(rs.getString("Hinhanh"));
            product.setGia(rs.getDouble("gia"));
            product.setMota(rs.getString("Mota"));
            list.add(product);
        }
        return list;
    }
    public sp getProduct(long masp) throws SQLException{
        Connection connection=DBConnect.getConnecttion();
        String sql="SELECT * FROM sanpham WHERE masp='"+masp+"'";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        sp sanpham=new sp();
        while(rs.next()){
        sanpham.setMasp(rs.getLong("masp"));
        sanpham.setTensp(rs.getString("tensp"));
        sanpham.setHinhanh(rs.getString("hinhanh"));
        sanpham.setGia(rs.getDouble("gia"));
        sanpham.setMota(rs.getString("mota"));
        }
        return sanpham; 
    }
    public ArrayList<sp> getListspByloaisp(long Maloai)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM sanpham WHERE maloai = '" + Maloai + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<sp> list = new ArrayList<>();
        while (rs.next()) {
            sp product = new sp();
            product.setMasp(rs.getLong("Masp"));
            product.setTensp(rs.getString("Tensp"));
            product.setHinhanh(rs.getString("Hinhanh"));
            product.setGia(rs.getDouble("gia"));
            product.setMota(rs.getString("Mota"));
            list.add(product);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
//        for (sp p : dao.getListspByloaisp(2)) {
//            System.out.println(p.getMasp() + " - " + p.getTensp());
        }

}
