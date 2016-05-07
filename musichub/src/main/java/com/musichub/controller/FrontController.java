package com.musichub.controller;
import java.io.FileWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.musichub.dao.ProductDAOImpl;
import com.musichub.model.*;
import com.musichub.service.ProductService;

@Controller
public class FrontController {
	
	@Autowired
	ProductService serv;
	
	 @RequestMapping("/")
	  public ModelAndView HomePage()
	  {
		  
		  ModelAndView model=new ModelAndView("index");
		  return model;
	  }
	 @RequestMapping("/index")
	  public ModelAndView indexPage()
	  {
		  
		  ModelAndView model=new ModelAndView("index");
		  return model;
	  }
	@RequestMapping("/Login")
	  public ModelAndView HomeWorld()
	  {
		  
		  ModelAndView model=new ModelAndView("Login");
		  return model;
	  }
	
	  @RequestMapping("/Register")
			  public ModelAndView LoginWorld()
			  {
				  
				  ModelAndView model=new ModelAndView("Register");
				  return model;
			  }
	  @RequestMapping("/Products")
	  public ModelAndView ProductPage()
	 
	  {   
		//System.out.println(serv.mapRow("Side-blown","Yamaha","Also known as a transverse flute, you hold it horizontally or sideways to play",1000,"Flute"));
		 Gson gson=new Gson();
		  List<Product>list= serv.getAllProducts();
		  String json=gson.toJson(list);
		  System.out.println(json);  		  
		   System.out.println("prod"); 
           ModelAndView model=new ModelAndView("Products");
		  model.addObject("product",json);
		  return model;
	  }
	
	  
	  @RequestMapping("/ProductDetails")
	  public ModelAndView ProductDeatilsPage(@ModelAttribute("p")Product p)
	  { 
		  ModelAndView model=new ModelAndView("ProductDetails");
		  System.out.println(p.getId());
		  return model;
	  }
	  
}
