package com.musichub.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.musichub.model.Product;

@Repository("data")
public class ProductDAOImpl implements ProductDAO
{   
 List<Product> dao=null;
 @Autowired
 SessionFactory sessionFactory; 
 Transaction tx=null;

   public ProductDAOImpl()
	{
	dao=new ArrayList();	 
    }

public Session getSession(){
	return sessionFactory.openSession();
}
public List<Product> getAllProduct() {
	 Session session=getSession();
     tx = session.beginTransaction();
     String hql = "FROM Product";
     Query query =session.createQuery(hql);
     dao=(List<Product>)query.list();
     return dao;
     
	}
 
	public int addProduct(String name,String brand,String description,double price,String category) {
		
	
		 int id=0;
		 
			 Session session=getSession();
	         tx = session.beginTransaction();
	        Product p=new Product();
	        p.setName(name);
	        p.setBrand(brand);
	        p.setCategory(category);
	        p.setDescription(description);
	        p.setPrice(price);
	        id=(Integer)session.save(p);
	       	tx.commit();
	        session.close();
		 return id;
	   }
}