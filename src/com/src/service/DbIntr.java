package com.src.service;

import java.sql.SQLException;
import java.util.List;

import com.src.model.*;

public interface DbIntr {
	public int addUser(RegisterModel rm) throws SQLException;
	public int addUser1(LoginModel lm) throws SQLException;
	public int addPlaced(Cart c) throws SQLException;
	public int addCart(Cart c) throws SQLException;
	public boolean login(LoginModel lm) throws SQLException;
	public List<Clothes> fetchClothes() throws SQLException;
	public Clothes fetchById(int id)throws SQLException;
	public RegisterModel fetchByUser(String username)throws SQLException;
	public List<Clothes> fetchCollection(String str) throws SQLException;
	public List<Clothes> fetchCollection1(String str) throws SQLException;
	public List<Clothes> fetchCart(String str) throws SQLException;

}
