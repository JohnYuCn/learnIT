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

public class TestEntityRelation {
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

/**
 * 	级联保存的不同情况
 * 1，当指定为persist,或 all的情况下：进行级联保存
 * 2、其它情况会throw TransientProertyValueException(此时需要先保存User)
 */
	@Test
	public void testPersist() {
		User u = new User();
		u.setAge(102);
		u.setUname("john1");
		Addr a1=new Addr();
		a1.setAddrName("北京");
		a1.setU(u);
		manager.getTransaction().begin();
		manager.persist(u);//只有在不级联情况下使用
		manager.persist(a1);
		manager.getTransaction().commit();
		System.out.println(u.getId());
	}
	
	//为EAGER的情况下进行级联查询
	@Test
	public void testFind() {
		Addr a=manager.find(Addr.class, 1);
//		User u=manager.find(User.class, 100); 此时u为null
		System.out.println(a.getId()+","+a.getAddrName());

	}
	
	/**
	 * 无论级联为何种情况，改变User对象，都会有脏检查机制，会更新User
	 */
	@Test
	public void testUpdate(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		Addr a=manager.find(Addr.class, 1);//managed status
		a.getU().setUname("xxxx");
		//manager.flush();缓存清理，但不提交事务
		tx.commit();
	}
	
	@Test
	public void testMerge(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		Addr a=manager.find(Addr.class, 1);//managed status
		Hibernate.initialize(a.getU());//当设置为“懒加载”时，进行的强制加载（应有更好的办法）
		manager.clear();
		a.getU().setUname("yyyy");
		
		//a is detached statu
//		此时如果cascade设置为merge时，会进行级联merge
		Addr a1=manager.merge(a);
		//立即执行一次按id 的查询，并将快照放入快照池中，此时a1 is managed
		//此时a仍然为游离态，对其做的更新不会同步到数据库
		tx.commit();
	}
	
	@Test
	public void testDelete(){
		EntityTransaction tx=manager.getTransaction();
		tx.begin();
		Addr a=manager.getReference(Addr.class, 5);
		manager.remove(a);//此时设置为cascad=remove时，会进行级联删除
		tx.commit();//只有在清理时才会发生删除动作
	}
	
	@Test
	public void testRefersh(){
		Addr a=manager.find(Addr.class, 3);
		a.setAddrName("ccd");
		a.getU().setUname("csers");//将u加载，并将其变脏
		
		manager.getTransaction().begin();
		
		System.out.println("进行Refresh...........");
		
		manager.refresh(a);//将数据库的数据根据数据变脏与否自动进行重新加载，此时如果设置cascade=refersh时，也会对User进行脏检查
		manager.getTransaction().commit();//此时由于数据已数据库保持同步，所以不会发生清理动作。
		System.out.println(a.getAddrName()+"....."+a.getU().getUname());
	}
	
	
	public static void main(String[] args) {
		
	}

}
