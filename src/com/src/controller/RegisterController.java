package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.LoginModel;
import com.src.model.RegisterModel;
import com.src.service.DbIntr;
import com.src.service.FactoryClass;


@WebServlet("/Register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String ccpassword = request.getParameter("ccpassword");	
			String address=request.getParameter("address");
			String phone=request.getParameter("phone");			
			
			HashMap<String,String> errors=new HashMap<>();
			
			/*
			 * import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
ServletContext context = getServletContext();
			List<String> namesList=(List<String>)context.getAttribute("namesList");

			*/
			
			
			if(username==null | username.length()==0) 
			{
				errors.put("eusername","username cannot be blank");
							
			}
			else {
				
				request.setAttribute("cusername", username);
				
			}

			if(email==null | email.length()==0)
			{
				

				errors.put("eemail","email cannot be blank");
				
				
			}
			else {
				
				request.setAttribute("cemail", email);
				
			}

			if(password==null | password.length()<=3) {
				

				errors.put("password","password must be more than 5 chars");
				
				
			}
			else if(!password.equals(ccpassword)) {
				
				errors.put("epassword","password must be same as confirm password");

			}
			else {
				
				request.setAttribute("cpassword", password);
			}
			request.setAttribute("ccpassword",ccpassword);
			request.setAttribute("caddress", address);
			request.setAttribute("cphone", phone);
			
			if(errors.isEmpty()){		
				
				
				
			RegisterModel registerModel = new RegisterModel();
			registerModel.setUsername(username);
			registerModel.setEmail(email);
			registerModel.setPassword(password);
			registerModel.setAddress(address);
			registerModel.setPhone(phone);
			
			LoginModel loginModel=new LoginModel();
			loginModel.setUsername(username);
			loginModel.setPassword(password);
			DbIntr intr = FactoryClass.getInstance();
			try {
				int i = intr.addUser1(loginModel);
				int i1=intr.addUser(registerModel);
				if(i>0 && i1>0) {
					request.setAttribute("message","Registration success");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
				else {
					request.setAttribute("message","Registration failed");	
					
				}
				
				request.getRequestDispatcher("Index.jsp").forward(request, response);
			} catch (SQLException| IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
			else {
				
				
				request.setAttribute("errorlist", errors);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
