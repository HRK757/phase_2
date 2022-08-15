package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.*;

/**
 * Servlet implementation class AssignSubjectClass
 */
@WebServlet("/AssignSubjectClass")
public class AssignSubjectClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignSubjectClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Configuration con=new Configuration();
		con.configure("hibernate.cfg.xml");
		
		String cls = request.getParameter("cls");
		String subject = request.getParameter("subject");
				
		// Step2: Create session
		SessionFactory sf  = con.buildSessionFactory();
		Session session = sf.openSession();
		
		// Step 3: Begin Transaction
		Transaction tx = session.beginTransaction();
		
		String hql_cls= "from Classes where name='" + cls + "'";
		List<Classes> classes = session.createQuery(hql_cls).list();
		
		String hql_subject = "update Subject s set s.cls=:n where s.subid=:sd";
		
		Query query = session.createQuery(hql_subject);
		query.setParameter("n", cls.getClass());
		query.setParameter("sn", subject);
				
		query.executeUpdate();
		tx.commit();
		session.close();
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewClass.jsp");
        dispatcher.forward(request, response); 
	}

}
