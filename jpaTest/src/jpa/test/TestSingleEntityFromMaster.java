package jpa.test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import jpa.po.Addr;
import jpa.po.User;

import org.hibernate.Hibernate;
import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestSingleEntityFromMaster {
	private static EntityManagerFactory factory;
	private EntityManager manager;

	@BeforeClass
	public static void beforClass() {
		factory = Persistence.createEntityManagerFactory("qs");//也称为持久化单元
	}
	@Before
	public void before() {
		manager = factory.createEntityManager();
	}
	@After
	public void after() {
		manager.close();
	}

	

}
