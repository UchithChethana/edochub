package com.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PatientInsert")

public class PatientInsert extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String age = request.getParameter("age");
          String phone = request.getParameter("phone");
          String username = request.getParameter("uid");
          String password = request.getParameter("psw");
          
          boolean isTrue;
          
          isTrue = PatientDBUtil.insertuser(name, email, age, phone, username, password);
          
          if(isTrue == true) {
        	  
            //servlet page to navugate the another jsp page user for (request dispatcher)
        	  
        	  RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
        	  dis.forward(request, response);
        	  
          }else {
        	  
        	  RequestDispatcher dis2 = request.getRequestDispatcher("userinsert.jsp");
        	  dis2.forward(request, response);
          }

	}
	
	

}
