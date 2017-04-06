package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/minhaServlet")
public class MinhaServlet extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("Init");
	}
	
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("Destroy");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Service");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><body>Execute service</body></head></html>");
	}

}
