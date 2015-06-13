package cn.johnyu.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.johnyu.web.pojo.Customer;
import cn.johnyu.web.test.service.CustomerManager;

@Controller
public class LoginController {
	
	private CustomerManager cm;
	
	
	// @RequestMapping("/login")
	// public String login(
	// @RequestParam(required = true, defaultValue = "john") String loginName,
	// double salary,boolean sex,
	// ArrayList<String> favs,
	// Model model) {
	// System.out.println(loginName + "....." + salary+"...."+sex);
	// System.out.println(favs.size());
	// for(String s:favs){
	// System.out.println(s);
	// }
	//
	// model.addAttribute("info", "hello:" + loginName);
	// return "success";
	// }

	
	/**
	 * 使用 autowrieByName的方式自动进行了注入
	 * @param cm
	 */
	public void setCm(CustomerManager cm) {
		this.cm = cm;
	}

	/**
	 * 自动封装成实体（包括集合）
	 * @param c
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/login")
	public String login(Customer c, Model model) {
		System.out.println(c.getCname() + "....." + c.getSalary() + "...."
				+ c.isSex());
		System.out.println(c.getFavs().size());
		for (String s : c.getFavs()) {
			System.out.println(s);
		}

		model.addAttribute("info", "hello:");
		cm.addCustomer(c);
		return "success";
	}

	/**
	 * 
	 * 以json的形式返回数据的方法
	 */
	@RequestMapping("/find")
	@ResponseBody
	// 返回json类型数据时使用
	public Customer find() {
		Customer c = new Customer();
		c.setId(100);
		c.setCname("joh英瀚");
		c.setPsd("123");
		c.setBirh(new Date());
		c.getFavs().add("足球");
		c.getFavs().add("音乐");
		return c;
	}
}
