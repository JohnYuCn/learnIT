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

	@Test
	public void testPersist() {
		User u = new User();
		u.setAge(102);
		u.setUname("john");
		u.getTels().add("abc");
		u.getTels().add("xyz");
		
		Addr a1=new Addr();
		a1.setAddrName("bj");
		a1.setU(u);
		u.setAddr(a1);
		manager.getTransaction().begin();
		manager.persist(u);
		manager.getTransaction().commit();
		System.out.println(u.getId());
	}

	@Test
	public void testFind() {
		User u=manager.find(User.class, 10);//始终进行立即加载
//		User u=manager.find(User.class, 100); 此时u为null
		System.out.println(u.getId()+","+u.getUname());

	}
	
//	Hibernate: update users set age=?, first_name=?, last_name=?, sex=?, uname=? where id=?
//	Hibernate: update addr set addrName=?, u_id=? where id=?
	@Test
	public void testUpdate(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.find(User.class, 1);//managed status
		u.setUname("john21");
		u.getAddr().setAddrName("sh2");
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
		u.setUname("tom2");
		u.getAddr().setAddrName("sy1");
		User u1=manager.merge(u);//立即执行一次按id 的查询，并将快照放入快照池中，此时u1 is managed
		//此时u仍然为游离态，对其做的更新不会同步到数据库中
		//此时如果未设定cascad=merge,则不能对addr进行更新
		tx.commit();
	}
	
	@Test
	public void testDelete(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.getReference(User.class, 1);//级联删除
		manager.remove(u);//u is deleted statu
		tx.commit();
	}
	
	@Test
	public void testRefersh(){
		User u=manager.getReference(User.class, 1);
		u.setUname("helo");
		u.getAddr().setAddrName("bai1");
		manager.getTransaction().begin();
		System.out.println("开始refersh....");
		manager.refresh(u);//将数据库的数据根据数据变脏与否自动进行重新加载
		
		System.out.println(u.getUname());
		System.out.println(u.getAddr().getAddrName());
		manager.getTransaction().commit();
	}
	@Test
	public void testDetach(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		User u=manager.find(User.class, 1);
		manager.detach(u);//将某一对象从缓存中踢出
		
		u.setUname("tom");//对游离对象的更新，不会发生缓存清理
		u.getAddr().setAddrName("123dder");//当casecade!=detached时，将会发生更新
		tx.commit();
	}
	
	public static void main(String[] args) {
		
	}

}
