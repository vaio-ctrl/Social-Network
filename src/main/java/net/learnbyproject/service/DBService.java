package net.learnbyproject.service;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class DBService {
    public static String DRIVER;
    public static String URL;
    public static String USER;
    public static String PASSWORD;
    private static final String DATE_PATTERN = "yyyy-MM-dd";
    public static Connection openConnection() {
        try {
            Class.forName(DRIVER);
            Connection c = DriverManager.getConnection(URL, USER, PASSWORD);
            return c;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }   
    public static String getFormattedDate(Date date) {
        return new SimpleDateFormat(DATE_PATTERN).format(date);
    }
    public static Date getFormattedDate(String date) throws ParseException{
        SimpleDateFormat sf = new SimpleDateFormat(DATE_PATTERN);
        java.util.Date parsedDate = sf.parse(date);
        return new Date(parsedDate.getTime()); codec
    }
}
