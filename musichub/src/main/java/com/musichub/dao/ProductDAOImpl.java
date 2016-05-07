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

@Repository
public class ProductDAOImpl implements ProductDAO
{   
	private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

public Product selectProduct(int productId) {
	 Session session=this.sessionFactory.getCurrentSession();
	 Product p=(Product)session.load(Product.class,new Integer(productId));
	 return p;
}

public void insertProduct(Product p) {
	 Session session=this.sessionFactory.getCurrentSession();
	 session.save(p);
   }

public void deleteProduct(int productId) {
	 Session session=this.sessionFactory.getCurrentSession();
	 Product p=(Product)session.load(Product.class,new Integer(productId));
	 if(p!=null)
		 session.delete(p);
	
}

public void updateProduct(Product p) {
	 Session session=this.sessionFactory.getCurrentSession();
     session.update(p);
     
	
}

public List<Product> getAllProduct() {
	 Session session=this.sessionFactory.getCurrentSession();
	Query query=session.createQuery("From Product");
	List<Product> productsList=(List<Product>)query.list();
	return productsList;
}
   
   
/*

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
	   }*/


}