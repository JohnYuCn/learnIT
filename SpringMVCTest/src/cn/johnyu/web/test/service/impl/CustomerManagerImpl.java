package cn.johnyu.web.test.service.impl;

import cn.johnyu.web.pojo.Customer;
import cn.johnyu.web.test.service.CustomerManager;

public class CustomerManagerImpl implements CustomerManager {

	@Override
	public void addCustomer(Customer c) {
		System.out.println("customer manager impl is wroking.....");

	}

}
