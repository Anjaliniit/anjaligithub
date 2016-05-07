package com.musichub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.musichub.model.Product;
import com.musichub.service.ProductService;

@Controller
public class AdminController {
	private ProductService productService;
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
		
	}
	@RequestMapping(value="/admins",method=RequestMethod.GET)
	String getAllProducts(Model model)
	{
		    model.addAttribute("admin", new Product());
	        model.addAttribute("listProducts", productService.getAllProduct());
	        return "admin";	
	}
	@RequestMapping(value="/admin/add")
	String insertProduct(@ModelAttribute("admin") Product p)
	{
	if(p.getId()==0)
	{
		productService.insertProduct(p);	
	}
	else{
		productService.updateProduct(p);		
	}
	return "redirect:/admins";
	}
	
	@RequestMapping("/delete/{id}")
	String deleteProduct(@PathVariable("id") int id)
	{
		
		productService.deleteProduct(id);
		
		return "redirect:/admins";
	}
	
	@RequestMapping("/edit/{id}")
    public String updateProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("admin", this.productService.selectProduct(id));
        model.addAttribute("listProducts",this.productService.getAllProduct());
        return "admin";
    }
     
	
}
