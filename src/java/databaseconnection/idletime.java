package databaseconnection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.awt.MouseInfo;
import java.awt.Point;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class idletime {
    public void calculate() {
        try {
            String user="gopi";
            String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
            Connection con=dbconnection.getConnection();
            //create a new statement using the connection
            Statement st=con.createStatement();
            long idleTime = 0 ;
            long start = System.currentTimeMillis();
            Point currLocation = MouseInfo.getPointerInfo().getLocation();
            while(true){
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(idletime.class.getName()).log(Level.SEVERE, null, ex);
                }
                Point newLocation = MouseInfo.getPointerInfo().getLocation();
                if(newLocation.equals(currLocation)){
                    //not moved
                    idleTime = System.currentTimeMillis() - start;if(idleTime>40000)
                    {
                        String query="insert into inactive (user,datetime,inactive) values('"+user+"','"+timeStamp+"','"+idleTime+"')";
                        st.executeUpdate(query);
                    }
                    
                }
                else{
                    System.out.printf("Idle time was: %s ms", idleTime);
                    idleTime=0;
                    start =  System.currentTimeMillis();
                    break;
                }
                currLocation = newLocation;
                
            }   } catch (SQLException ex) {
            Logger.getLogger(idletime.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}
