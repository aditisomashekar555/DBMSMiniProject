package com.src.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.src.model.*;

public class DbImpl implements DbIntr {
	private static Connection con;
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aditi","aditi");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("no");
			e.printStackTrace();
		}
		
		
	}
	
	public RegisterModel fetchByUser(String username)throws SQLException {
		String sql="select * from register where username=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, username);
		ResultSet rs = stmt.executeQuery();
		RegisterModel c=new RegisterModel();
		
		while(rs.next()) {
			
			c.setEmail(rs.getString("email"));
			c.setAddress(rs.getString("address"));
			c.setPhone(rs.getString("phone"));
			
		}
		return c;
		
	}

	public int addUser(RegisterModel rm) throws SQLException{
			
		String sql="insert into register values(?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, rm.getUsername());
		ps.setString(2,rm.getEmail());
		ps.setString(3,rm.getPassword());
		ps.setString(4,rm.getAddress());
		ps.setString(5,rm.getPhone());
		return ps.executeUpdate();
		
		
	}
	
	public int addUser1(LoginModel lm) throws SQLException{
		String s="insert into login values(?,?)";
		PreparedStatement ps1 = con.prepareStatement(s);
		ps1.setString(1, lm.getUsername());
		ps1.setString(2,lm.getPassword());
		return ps1.executeUpdate();
	}
	
	public int addPlaced(Cart c) throws SQLException{
		String s="update cart set confirm='true' where username=?";
		PreparedStatement ps1 = con.prepareStatement(s);
		ps1.setString(1,c.getUsername());
		
		return ps1.executeUpdate();
	}
	
	public boolean login(LoginModel lm) throws SQLException  {
		String sql="select username,password from login where username=? and password=?";
		PreparedStatement prepareStatement = con.prepareStatement(sql);
		prepareStatement.setString(1, lm.getUsername());
		prepareStatement.setString(2,lm.getPassword());
		ResultSet executeQuery = prepareStatement.executeQuery();
		return executeQuery.next();
	
	}
	
	public List<Clothes> fetchClothes() throws SQLException{
		String sql="select * from clothes";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		List<Clothes> data=new ArrayList<>();
		while(rs.next()) {
			Clothes c=new Clothes();
			c.setClothes_id(rs.getInt("clothes_id"));
			c.setCategory(rs.getString("category"));
			c.setStyle(rs.getString("style"));
			c.setSizes(rs.getString("sizes"));
			c.setCost(rs.getString("cost"));
			c.setColour(rs.getString("colour"));
			c.setImages(rs.getString("images"));
			data.add(c);
		}
		return data;
	}
	
	
	public Clothes fetchById(int id)throws SQLException {
		String sql="select * from clothes where clothes_id=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		Clothes c=new Clothes();
		
		while(rs.next()) {
			c.setClothes_id(rs.getInt("clothes_id"));
			c.setCategory(rs.getString("category"));
			c.setStyle(rs.getString("style"));
			c.setSizes(rs.getString("sizes"));
			c.setCost(rs.getString("cost"));
			c.setColour(rs.getString("colour"));
			c.setImages(rs.getString("images"));
		}
		return c;
		
	}
	
	public List<Clothes> fetchCollection(String str) throws SQLException{
		String sql="select * from clothes where category=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,str);
		ResultSet rs = stmt.executeQuery();
		List<Clothes> data=new ArrayList<>();
		while(rs.next()) {
			Clothes c=new Clothes();
			c.setClothes_id(rs.getInt("clothes_id"));
			c.setCategory(rs.getString("category"));
			c.setStyle(rs.getString("style"));
			c.setSizes(rs.getString("sizes"));
			c.setCost(rs.getString("cost"));
			c.setColour(rs.getString("colour"));
			c.setImages(rs.getString("images"));
			data.add(c);
		}
		return data;
	}
	
	public List<Clothes> fetchCollection1(String str) throws SQLException{
		String sql="select * from clothes c,brand b where c.clothes_id=b.brand_id and brand_name=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,str);
		ResultSet rs = stmt.executeQuery();
		List<Clothes> data=new ArrayList<>();
		while(rs.next()) {
			Clothes c=new Clothes();
			c.setClothes_id(rs.getInt("clothes_id"));
			c.setCategory(rs.getString("category"));
			c.setStyle(rs.getString("style"));
			c.setSizes(rs.getString("sizes"));
			c.setCost(rs.getString("cost"));
			c.setColour(rs.getString("colour"));
			c.setImages(rs.getString("images"));
		
			data.add(c);
		}
		return data;
	}
	
	public List<Clothes> fetchCart(String str) throws SQLException{
		String sql="select * from clothes where clothes_id IN (select clothes_id from cart where username=?) ";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,str);
		ResultSet rs = stmt.executeQuery();
		List<Clothes> data=new ArrayList<>();
		while(rs.next()) 
		{
			Clothes c=new Clothes();
			c.setClothes_id(rs.getInt("clothes_id"));
			c.setCategory(rs.getString("category"));
			c.setStyle(rs.getString("style"));
			c.setSizes(rs.getString("sizes"));
			c.setCost(rs.getString("cost"));
			c.setColour(rs.getString("colour"));
			c.setImages(rs.getString("images"));
			data.add(c);
		}
		return data;
	}
	
	public int addCart(Cart c) throws SQLException{
		String s="insert into cart values(?,?,?)";
		PreparedStatement ps1 = con.prepareStatement(s);
		ps1.setString(1, c.getUsername());
		ps1.setInt(2,c.getClothes_id());
		ps1.setString(3, "Null");
		return ps1.executeUpdate();
	}
}
