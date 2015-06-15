/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-10-6 下午12:59:11
 * @version V1.0
 */
package cn.tvcms.cms.common.query;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.engine.spi.SessionFactoryImplementor;
import org.hibernate.mapping.Column;
import org.hibernate.mapping.PersistentClass;
import org.hibernate.mapping.Property;
import org.hibernate.persister.entity.AbstractEntityPersister;
import org.hibernate.service.jdbc.connections.spi.ConnectionProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.TypesConvert;
import cn.tvcms.cms.pojo.TableClassMapping;
import cn.tvcms.cms.pojo.columnAttributeMapping;

/**
 * @ClassName: FieldManagement
 * @Description: 数据库字段管理
 * @author sunJingYang
 * @date 2014-10-6 下午12:59:11
 * 
 */
 @Service
public class FieldManagement {
		@Autowired
		private CommonDao commonDao ;
		
		@Autowired
		private HttpSession session;
		@Autowired
	    private SessionFactory sessionFactory;

		/**
		 * 
		 * @Title: getCurrentSession
		 * @Description:得到当前session
		 * @author sunJingYang
		 * @date 2014-10-6 下午01:00:19
		 * @return
		 */
		public Session getCurrentSession() {  
	        return sessionFactory.openSession();  
	    } 
		
		/**
		 * 
		 * @Title: findAllColumn
		 * @Description: 获取类对应的数据库列信息
		 * @author sunJingYang
		 * @date 2014-10-6 下午01:03:23
		 * @param cls
		 * @return
		 * @throws SQLException 
		 */
		public List<columnAttributeMapping> findAllColumn(String className,String xml) throws Exception{
			//Connection conn=sessionFactory.
			Configuration configuration= new AnnotationConfiguration().configure(xml);
			configuration.buildSessionFactory();
			ConnectionProvider cp =((SessionFactoryImplementor)sessionFactory).getConnectionProvider();  
			Connection conn=cp.getConnection();  
			DatabaseMetaData metaData=conn.getMetaData();
			Class cls=Class.forName(className);
			PersistentClass pc=configuration.getClassMapping(cls.getName());
			String tableNamePattern=pc.getTable().getName();
			ResultSet rs=metaData.getColumns(null, null, tableNamePattern, null);
			List<columnAttributeMapping> list=new ArrayList<columnAttributeMapping>();
			//ClassMetadata classMetadata=sessionFactory.getAllClassMetadata().get(cls);
	
			while(rs.next()){
				columnAttributeMapping cam=new columnAttributeMapping();
				String columnName=rs.getObject("COLUMN_NAME").toString();
				cam.setColumnName(columnName);
				Iterator<Property> it=pc.getPropertyIterator();
				while(it.hasNext()){
					Property property=it.next();
					Iterator<Column> its=property.getColumnIterator();
					if(its.hasNext()){
						Column column=its.next();
						if(column.getName().equals(columnName)){
							cam.setAttributeName(property.getName());
						}
					}
				}
				String columnType=rs.getObject("TYPE_NAME").toString();
				cam.setColumnType(columnType);
				cam.setAttributeType(TypesConvert.getType(columnType));
				cam.setColumnSize(Integer.parseInt(rs.getObject("COLUMN_SIZE").toString()));
				cam.setRemarks(rs.getObject("REMARKS").toString());
				String columnDef="";
				if(rs.getObject("COLUMN_DEF")==null){
					columnDef="null";
				}else
				{
					columnDef=rs.getObject("COLUMN_DEF").toString();
				}
				cam.setColumnDef(columnDef);
				cam.setTableName(tableNamePattern);
				cam.setClassName(cls.getName());
				if(rs.getObject("IS_NULLABLE").toString().equals("YES")){
					cam.setIsNull(0);
				}else{
					cam.setIsNull(1);
				}
				list.add(cam);
			}
           	return list;	
		}
		/**
		 * 
		 * @Title: addColumn
		 * @Description: 添加一个字段
		 * @author sunJingYang
		 * @date 2014-10-6 下午05:24:53
		 * @param cam
		 */
		public void addColumn(columnAttributeMapping cam){
			String sql="alter table test add column "+cam.getColumnName()+" "+cam.getColumnType()+"("+cam.getColumnSize()+") default '"+cam.getColumnDef()+"' COMMENT '"+cam.getRemarks()+"'";
			commonDao.executeSql(sql);
		}
		/**
		 * 
		 * @Title: findAllDB
		 * @Description: 查询指定数据库所有表
		 * @author sunjinyang
		 * @throws SQLException 
		 * @date 2014-11-3 上午09:52:51
		 */
		public List<TableClassMapping> findAllDB(String xml) throws Exception{
			Map metaMap=sessionFactory.getAllClassMetadata();
			List<TableClassMapping> list=new ArrayList<TableClassMapping>();
			 for (String key : (Set<String>)metaMap.keySet()) {
		            AbstractEntityPersister classMetadata = (AbstractEntityPersister) metaMap.get(key);
		            String tableName = classMetadata.getTableName().toLowerCase();
		            int index = tableName.indexOf(".");
		            if (index >= 0) {
		                tableName = tableName.substring(index + 1);
		            }
		            String className = classMetadata.getEntityMetamodel().getName();
		            String idName = classMetadata.getIdentifierColumnNames()[0];
		            TableClassMapping tcm=new TableClassMapping();
		            tcm.setClassName(className);
		            tcm.setTableName(tableName);
		            tcm.setPrimaryKey(idName);
		            Class cls=Class.forName(className);
		            Method method=cls.getMethod("getClassNotes");
		            String result= method.invoke(cls.newInstance(), null).toString();
		            tcm.setExplain(result);
		            list.add(tcm);
		        }

           	return list;	
		}
		/**
		 * 
		 * @Title: findClassNotes
		 * @Description:通过类名获取类的注释信息
		 * @author sunjinyang
		 * @date 2014-11-3 下午12:03:00
		 * @param className
		 * @return
		 * @throws Exception
		 */
		public String findClassNotes(String className) throws Exception{
			className=className.replace(".", "/");
			String fileName=session.getServletContext().getRealPath("/")+"/"+className+".java";
			File file=new File(fileName);
			BufferedReader reader=new BufferedReader(new FileReader(file));
			while(reader.ready()){
				String line=reader.readLine();
				if(line.indexOf("@Description")>0){
					return line.substring(line.indexOf("@Description")).trim();
				}
			}
			return null;
		}
        
}
