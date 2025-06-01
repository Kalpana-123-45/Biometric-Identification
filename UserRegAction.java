/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.register;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/UserRegAction")
@MultipartConfig(maxFileSize = 16177215)
public class UserRegAction extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/biometric_identification";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
         HttpSession session = request.getSession();
        
        
       
        
       
         InputStream inputStream = null;
        Part filePart = request.getPart("image");
        String fname=filePart.getSubmittedFileName();
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            String sql = "INSERT INTO userreg (id,username, email, password, gender, address, image,imgname) values (?,?, ?, ?, ?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
             statement.setString(1,id);
            statement.setString(2, username);
            statement.setString(3, email);
            statement.setString(4, password);
            statement.setString(5, gender);
            statement.setString(6, address);
     
         session.setAttribute("id", id);

            if (inputStream != null) {
                statement.setBlob(7, inputStream);
            }
            statement.setString(8, fname);
            int row = statement.executeUpdate();
            if (row > 0)
            {
         System.out.println("image upload sucess");
                response.sendRedirect("userregsucess.jsp?reg=success");
             
               
            } else {
                response.sendRedirect("userreg.jsp?regg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
