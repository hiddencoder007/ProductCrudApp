package com.ProductManagement.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ProductManagement.Dao.ProductDao;
import com.ProductManagement.entities.Product;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDao dao;
			
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String products(Model model) {		
		List<Product> products=dao.getProducts();
		model.addAttribute("products", products);
		return "index";
	}
	
	//show add product form
	@RequestMapping(value="/add-product", method = RequestMethod.GET)
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "add_product_form";
	}
	
	@RequestMapping(value="/handle-product", method = RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product product) {
		System.out.println(product);
		dao.createProduct(product);
		return "redirect:/";
	}
	
	@RequestMapping(value="/delete/{productId}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId")int productId) {
		dao.deleteProduct(productId);
		return "redirect:/";
	}
}
