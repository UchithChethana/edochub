package com.patient;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//pholimorphism
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("userid");
		boolean isTrue;
		
		
		isTrue = PatientDBUtil.deletePatirnt(id);
		
		if(isTrue==true) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("userinsert.jsp");
			 dispatcher.forward(request , response);
		} 
		else {
			List<Patient> patDetails=PatientDBUtil.getPatientDetails(id);
			request.setAttribute("patDetails", patDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			 dispatcher.forward(request , response);
		}
		
	}

}
