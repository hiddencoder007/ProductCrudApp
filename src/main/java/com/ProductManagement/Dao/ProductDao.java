package com.ProductManagement.Dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import com.ProductManagement.entities.Product;


@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate template;  
	public void setTemplate(HibernateTemplate template) {  
	   this.template = template; 
	}
	
	//create a new product
	@Transactional
	public void createProduct(Product product) {
		template.save(product);
	}
	
	//get all products
	public List<Product> getProducts(){
		List<Product> products=template.loadAll(Product.class);
		return products;
	}
	
	//delete a single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p=template.load(Product.class, pid);
		template.delete(p);
	}
	
	//get a single product
	public Product getProduct(int pid) {
		return template.get(Product.class, pid);
	}
}

