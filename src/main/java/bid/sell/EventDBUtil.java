package bid.sell;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean createEvent(String name,String address,String phone,String product,String duration)
	{
		isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into seller values(0,'"+name+"','"+address+"','"+phone+"','"+product+"','"+duration+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updateEvent(String name,String address,String phoneNo,String product,String duration)
	{
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Update seller set address='"+address+"',phone='"+phoneNo + "',product='"+product+"',duration='"+duration+"' where name='"+name+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	public static List<seller> geteventDetails(String Name)
	{
		ArrayList<seller> evn = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from seller where name='"+Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String product = rs.getString(5);
				String duration = rs.getString(6);
				
				
				
				seller e = new seller(id,name,address,phone,product,duration);
				
				evn.add(e);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return evn;
	}
	
	public static boolean deteleEvent(String Name)
	{
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from seller where name='"+Name+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}
