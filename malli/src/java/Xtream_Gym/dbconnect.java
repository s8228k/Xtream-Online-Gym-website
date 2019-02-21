package Xtream_Gym;

import java.sql.*;

public class dbconnect {

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/xgym";
String database = "xgym";
String userid = "root";
String password = "";
    public void connect(){
        try {
        Class.forName(driver);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }
        Connection connection ;
        Statement statement;
        ResultSet resultSet;
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
}
