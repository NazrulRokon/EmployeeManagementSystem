package com.emp.mgnt.sys.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.emp.mgnt.sys.bean.UserBean;

public class UserDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hw32", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(UserBean u) {
        int status = 0;
        //u.setFullName(u.getFirstName().concat(u.getLastName()));
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into employees(full_name,username,email,password,present_address,permanent_address,contact_no,sex,department,designation,salary) values (?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getUserName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getPresentAddress());
            ps.setString(6, u.getPermanentAddress());
            ps.setString(7, u.getContactNumber());
            ps.setString(9, u.getSex());
            ps.setString(10, u.getDepartment());
            ps.setString(11, u.getDesignation());
            ps.setFloat(12, u.getSalary());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(UserBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update Employees set full_name=?,username=?,email=?,pasword=?,"
                    + "present_address=?,permanent_address=?,contact_no=?,dob=?,sex=?,department=?,designation=?,salary=? where id=?");
            ps.setInt(1, u.getId());
            ps.setString(2, u.getFullName());
            ps.setString(3, u.getUserName());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getPassword());
            ps.setString(6, u.getPresentAddress());
            ps.setString(7, u.getPermanentAddress());
            ps.setString(8, u.getContactNumber());
            ps.setDate(9, u.getDOB());
            ps.setString(10, u.getSex());
            ps.setString(11, u.getDepartment());
            ps.setString(12, u.getDesignation());
            ps.setFloat(13, u.getSalary());
            status = ps.executeUpdate();
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(UserBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from Employees where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static List<UserBean> getAllRecords() {
        List<UserBean> list = new ArrayList<UserBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Employees");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean u = new UserBean();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("full_name"));
                u.setEmail(rs.getString("email"));
                u.setPresentAddress(rs.getString("present_address"));
                u.setContactNumber(rs.getString("contact_no"));
                u.setDOB(rs.getDate("dob"));
                u.setSex(rs.getString("sex"));
                u.setDepartment(rs.getString("department"));
                u.setDesignation(rs.getString("designation"));
                u.setSalary(rs.getFloat("salary"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static UserBean getRecordById(int id) {
        UserBean u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Employees where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new UserBean();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("full_name"));
                u.setEmail(rs.getString("email"));
                u.setPresentAddress(rs.getString("present_address"));
                u.setContactNumber(rs.getString("contact_no"));
                u.setDOB(rs.getDate("dob"));
                u.setSex(rs.getString("sex"));
                u.setDepartment(rs.getString("department"));
                u.setDesignation(rs.getString("designation"));
                u.setSalary(rs.getFloat("salary"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

    public static List<UserBean> getRecords(int start, int total) {
        List<UserBean> list = new ArrayList<UserBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from Employees limit " + (start - 1) + "," + total);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean e = new UserBean();
                e.setId(rs.getInt(1));
                e.setFullName(rs.getString(2));
                e.setSalary(rs.getFloat(13));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
