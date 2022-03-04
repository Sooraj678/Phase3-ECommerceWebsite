package com.ecommercewebsite.model;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ecommercewebsite.entities.Category;

public class CategoryDao {

	private SessionFactory factory;

	public CategoryDao(SessionFactory factory) {
		this.factory = factory;
	}
	
	//Saves the Category data to DB
	public int saveCategory(Category cat) {
			
		int catId =0;
		try {
			Session session =  this.factory.openSession();
			Transaction tx = session.beginTransaction();
			catId = (int) session.save(cat);
			tx.commit();

			session.close();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return catId;
	}
	
}
