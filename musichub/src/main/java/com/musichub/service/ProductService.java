package com.musichub.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.musichub.dao.ProductDAOImpl;
import com.musichub.model.Product;


//@Service("serv")
public class ProductService {

	ProductDAOImpl products;
	public ProductService()
	{
		 products=new ProductDAOImpl();
		
		
	}
		
	public boolean mapRow(int i,String h,String j,String k,String l)
	{
    products.addProduct(i,h,j,k,l);
    return true;
	}
	
    public List<Product> getAllProducts() {
    	return products.getAllProduct();
		
	}
	
}
