package com.ProductManagement.Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.ProductManagement.entities.User;

@Component
public class UserDao {
	
	@Autowired
	private HibernateTemplate template;  
	public void setTemplate(HibernateTemplate template) {  
	   this.template = template; 
	}

	@Transactional
	public void createUser(User user) {
		template.save(user);
	}
	
}
