/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Safirahhadi
 */
public class DBUtils {

  private static final String DB_URL = System.getenv("DB_URL");  // Replace with your database URL
    private static final String DB_USER = System.getenv("DB_USER"); // Replace with your MySQL username
    private static final String DB_PASS = System.getenv("DB_PASS"); // Replace with your MySQL password

    public static Connection getConnection() {

        Connection connection = null;

        try {
            // Load the MySQL JDBC driver (if not automatically loaded)
            Class.forName("com.mysql.cj.jdbc.Driver"); // Not always needed, check your driver version

            // Establish the connection
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            if (connection != null) {
                System.out.println("Connected to MySQL successfully!");
                // You can now use the connection to execute SQL queries
            } else {
                System.out.println("Failed to connect to MySQL.");
            }
            return connection;

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("error connecting to MySQL: " + e.getMessage());
        }
        return null;
    }
}
