package com.pack;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;

@WebServlet("/HomeServlet")
public class HomeServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		HttpServletRequest request = (HttpServletRequest) req;

        try {
            // 1. Inputs ghene
            String availStr = request.getParameter("available");
            String totalStr = request.getParameter("total");

            if (availStr != null && totalStr != null) {
                double available = Double.parseDouble(availStr);
                double total = Double.parseDouble(totalStr);

                // 2. Logic: Percentage Calculation
                double percentage = (available / total) * 100;
                
                // Result Format krne (e.g., 75.00)
                request.setAttribute("percent", String.format("%.2f", percentage));

                // 3. Navigation Logic
                if (percentage >= 75) {
                    request.getRequestDispatcher("Pass.jsp").forward(req, res);
                } else {
                    request.getRequestDispatcher("fail.jsp").forward(req, res);
                }
            }
        } catch (NumberFormatException e) {
            res.getWriter().println("Please enter valid numbers!");
        }
    }
		
	}
	

