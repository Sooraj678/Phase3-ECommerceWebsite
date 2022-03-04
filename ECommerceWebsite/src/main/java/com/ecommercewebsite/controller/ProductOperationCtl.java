package com.ecommercewebsite.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommercewebsite.entities.Category;
import com.ecommercewebsite.helper.FactoryProvider;
import com.ecommercewebsite.model.CategoryDao;

public class ProductOperationCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductOperationCtl() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		try {
			
			/* With this Servlet we will take task of 2 servlet like: addCategoryServlet 
			 * and addProductServlet */
			
			String op = request.getParameter("operation");
			
			if(op.trim().equals("addcategory")) {
				
				// add Category Servlet Task
				// Fetching Category Data 
				String title = request.getParameter("catTitle");
				String description = request.getParameter("catDescription");
				
				
				Category category =  new Category();
				category.setCategoryTitle(title);
				category.setCategoryDescription(description);
				
				// category data database save
				
				CategoryDao categoryDao =  new CategoryDao(FactoryProvider.getFactory());
				int catId = categoryDao.saveCategory(category);
				//out.println("Category data saved in DB: ");
				HttpSession httpSession =  request.getSession();
				httpSession.setAttribute("message", "Category added successfully : "+catId);
				response.sendRedirect("admin.jsp");
				return;
				
				
				
			}else if (op.trim().equals("addproduct")) {
				// add Product Servlet Task
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
