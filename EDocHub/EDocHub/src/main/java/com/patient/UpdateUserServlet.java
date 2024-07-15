package com.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")

public class UpdateUserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//abstraction
		String id = request.getParameter("userid");
		String name =request.getParameter("name");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String phone= request.getParameter("phone");
		String username= request.getParameter("uname");
		String password= request.getParameter("pass");
		
		System.out.println(name);
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updatepatient(id, name, email, age, phone, username, password);
		
		if(isTrue == true)
		{
			List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Patient> patDetails = PatientDBUtil.getPatientDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
