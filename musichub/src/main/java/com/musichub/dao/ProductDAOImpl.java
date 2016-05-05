package com.musichub.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.musichub.model.Product;
@Repository(value="products")
public class ProductDAOImpl implements ProductDAO
{   
 List<Product> dao=null;
 
 public	ProductDAOImpl()
	{
		dao=new ArrayList();
	}
	
 public List<Product> getAllProduct() {
		return dao;
	}
	public void addProduct(int i,String s,String h,String k,String l) {
		
		dao.add(new Product(i,s,h,k,l));
	}
	
	
	
}