package com.src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.Cart;
import com.src.service.DbIntr;
import com.src.service.FactoryClass;

/**
 * Servlet implementation class Placed
 */
@WebServlet("/Placed")
public class Placed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Placed() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		System.out.println(username);
		
		Cart c=new Cart();
		c.setUsername(username);
		
		DbIntr intr = FactoryClass.getInstance();	
		try {
			int i = intr.addPlaced(c);
			
			if(i>0){
				//go to welcome page
				request.setAttribute("username", username);
		
				request.getRequestDispatcher("confirm.jsp").forward(request, response);
			}
			}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
