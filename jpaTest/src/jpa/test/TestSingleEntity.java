package jpa.test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.transaction.Transaction;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import jpa.po.User;

public class TestSingleEntity {
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

	@Test
	public void testPersist() {
		User u = new User();
		u.setAge(102);
		u.setUname("john");
		manager.getTransaction().begin();
		manager.persist(u);
		manager.getTransaction().commit();
	}

	@Test
	public void testFind() {
		User u=manager.find(User.class, 1);
//		User u=manager.find(User.class, 100); 此时u为null
		System.out.println(u.getId()+","+u.getUname());
	}
	@Test
	public void testReference(){
		User u=manager.getReference(User.class, 1);
//		User u=manager.getReference(User.class, 100);将出现EntityNotFoundException
	}
	@Test
	public void testUpdate(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.find(User.class, 1);//managed status
		u.setUname("john0");
		//manager.flush();缓存清理，但不提交事务
		tx.commit();
	}
	
	@Test
	public void testMerge(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.find(User.class, 1);//managed status
		manager.clear();
		//u is detached statu
		u.setUname("tom");
		User u1=manager.merge(u);//立即执行一次按id 的查询，并将快照放入快照池中，此时u1 is managed
		//此时u仍然为游离态，对其做的更新不会同步到数据库中
		tx.commit();
	}
	
	@Test
	public void testDelete(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.getReference(User.class, 3);
		manager.remove(u);//u is deleted statu
		tx.commit();
	}
	
	@Test
	public void testRefersh(){
		User u=manager.getReference(User.class, 3);
		u.setUname("helo");
		manager.clear();
		manager.getTransaction().begin();
		manager.refresh(u);//将数据库的数据根据数据变脏与否自动进行重新加载
		u.setUname("mmmm");
		System.out.println(u.getUname());
		manager.getTransaction().commit();
	}
	
	
	public static void main(String[] args) {
		
	}

}
