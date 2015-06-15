/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-26 下午06:33:47
 * @version V1.0
 */
package cn.tvcms.cms.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.ServicesCategory;

/**
 * @ClassName: CodeTtemService
 * @Description: 代码项
 * @author sunJingYang
 * @date 2014-9-26 下午06:33:47
 * 
 */
@Service
public class CodeItemService {
	@Autowired
	private CommonDao commonDao;
	

	/**
	 * @return the commonDao
	 */
	public CommonDao getCommonDao() {
		return commonDao;
	}

	/**
	 * @param commonDao 要设置的 commonDao
	 */
	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

	/**
	 * 
	 * @Title: findAllServices
	 * @Description: 查询所有服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 上午10:00:52
	 * @return
	 */
	public List<ServicesCategory> findAllServices() {
		return commonDao.findAll(ServicesCategory.class);
	}

	/**
	 * 
	 * @Title: isThereAreLower
	 * @Description: 判断项目是否有下一级，有返回true
	 * @author sunJingYang
	 * @date 2014-9-28 上午10:18:46
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public boolean isThereAreLower(Integer id) {
		String hql = "select count(*) from ServicesCategory where superiorId="
				+ id;
		List list = commonDao.queryHQL(hql);
		return Integer.parseInt(list.get(0).toString()) == 0 ? false : true;
	}

	/**
	 * 
	 * @Title: findById
	 * @Description: 根据ID查找项目
	 * @author sunJingYang
	 * @date 2014-9-28 上午11:45:57
	 * @param id
	 * @return
	 */
	public ServicesCategory findById(Integer id) {
		return commonDao.findById(ServicesCategory.class, id);
	}

	/**
	 * 
	 * @Title: delete
	 * @Description: 删除项目
	 * @author sunJingYang
	 * @date 2014-9-23 上午10:06:52
	 * @param idss
	 */
	@Transactional
	public void delete(String[] idss) {
		
		for(int i=0;i<idss.length;i++){
			ServicesCategory sc=commonDao.findById(ServicesCategory.class, Integer.parseInt(idss[i]));
			String hql="delete from ServicesCategory where code like '"+sc.getCode()+"%'";
			commonDao.executeHQL(hql);
		}
		
	}

	/**
	 * 
	 * @Title: updateServicesCategory
	 * @Description: 更新服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 下午01:10:06
	 * @param category
	 */
	@Transactional
	public void updateServicesCategory(ServicesCategory category) {
		commonDao.update(category);
	}

	/**
	 * 
	 * @Title: saveServicesCategory
	 * @Description: 添加服务项目
	 * @author sunJingYang
	 * @date 2014-9-28 下午03:40:36
	 * @param category
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public void saveServicesCategory(ServicesCategory category) {
		String hql = "select code from ServicesCategory where superiorId="
				+ category.getSuperiorId();
		List<String> list = commonDao.queryHQL(hql);
		int code = 0;
		String codes = "";
		if (list.size() > 0) {
			for (String str : list) {
				int temp = Integer.parseInt(str.substring(str.length() - 2));
				if (temp > code) {
					code = temp;
					codes = str.substring(0, str.length() - 2);
				}
			}
		}else{
			code=0;
			ServicesCategory cat=commonDao.findById(ServicesCategory.class,category.getSuperiorId());
			codes=cat.getCode();
		}
		if (code > 9) {
			codes += (code+1);
		} else {
			codes = codes + "0" + (code+1);
		}
		category.setCode(codes);
		commonDao.save(category);
	}
	/***
	 * 
	 * @Title: findListServices
	 * @Description: 截断字符串id获取服务项目的集合
	 * @author sunJingYang
	 * @date 2014-10-8 下午02:47:51
	 * @param ids
	 * @return
	 */
	@Transactional
	public List<ServicesCategory> findListServices(String ids){
		List<ServicesCategory>  list=new ArrayList<ServicesCategory>();
		String id[]=ids.split(",");
		for(int i=0;i<id.length;i++){
			ServicesCategory sc=commonDao.findById(ServicesCategory.class, Integer.parseInt(id[i]));
			list.add(sc);
		}
		return list;
	}
	/**
	 * 
	 * @Title: findCheckedListService
	 * @Description:根据预约项目大类查找其所有子类
	 * @author sunJingYang
	 * @date 2014-10-9 下午04:54:48
	 * @param ids
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public Map<String, List<ServicesCategory>> findCheckedListService(String ids){
		List<ServicesCategory>  list=new ArrayList<ServicesCategory>();
		List<ServicesCategory>  root=new ArrayList<ServicesCategory>();
		List<ServicesCategory>  two=new ArrayList<ServicesCategory>();
		List<ServicesCategory>  three=new ArrayList<ServicesCategory>();
		Map<String, List<ServicesCategory>> map=new HashMap<String, List<ServicesCategory>>();
		Boolean isUp=true;
		String id[]=ids.split(",");
		for(int i=0;i<id.length;i++){
			ServicesCategory sc=commonDao.findById(ServicesCategory.class, Integer.parseInt(id[i]));
			String hql=" from ServicesCategory where code like '"+sc.getCode()+"%'";
			List<ServicesCategory> li=commonDao.queryHQL(hql);
			for (ServicesCategory servicesCategory : li) {
				list.add(servicesCategory);
			}		
		}
		System.out.println(list.size());
		for(int i=0;i<list.size();i++){
			ServicesCategory sc=list.get(i);
			if(sc.getSuperiorId()==1){
				root.add(sc);
			}
		}
		if(root.size()==0){
			isUp=false;
		}
		if(isUp){
			for(int i=0;i<list.size();i++){
				for(int j=0;j<root.size();j++){
					 if(list.get(i).getSuperiorId()==root.get(j).getId()){
						 two.add(list.get(i));
					 }
				    
				}
			}
		}
		if(two.size()==0){
			isUp=false;
		}
		if(isUp){
			for(int i=0;i<list.size();i++){
				for(int j=0;j<two.size();j++){
					int a=two.get(j).getId();
					int b=list.get(i).getSuperiorId();
					 if(a==b){
						 three.add(list.get(i));
					 }
				    
				}
			}
		}

		map.put("root", root);
		map.put("two", two);
		map.put("three", three);
	
		
	
		
		return map;
	}
	/**
	 * 
	 * @Title: findRootServices
	 * @Description: 查找根服务项目
	 * @author sunJingYang
	 * @date 2014-10-8 下午05:48:23
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<ServicesCategory> findRootServices(){
		String hql="from ServicesCategory where superiorId=1";
		return commonDao.queryHQL(hql);
	}

	/**
	 * @Title: findCode
	 * @Description:根据id查找code代码项
	 * @author sunJingYang
	 * @date 2014-10-10 下午05:39:30
	 * @param id
	 * @return
	 */
	public String findCode(Integer id) {
		String hql="select code from  ServicesCategory where id="+id;
		
		return commonDao.queryHQL(hql).get(0).toString();
	}

	/**
	 * @Title: reckonPrice
	 * @Description: 计算服务项目价格
	 * @author sunJingYang
	 * @date 2014-10-10 下午06:24:28
	 * @param ids
	 * @return
	 */
	public String reckonPrice(String ids) {
		List<ServicesCategory>  list=new ArrayList<ServicesCategory>();
		String id[]=ids.split(",");
		double price=0.0;
		for(int i=0;i<id.length;i++){
			ServicesCategory sc=commonDao.findById(ServicesCategory.class, Integer.parseInt(id[i]));
			list.add(sc);
		}
		for (int i = 0; i < list.size(); i++) {
			
			price+=Double.parseDouble(list.get(i).getPrice());
		}
		
		return String.valueOf(price);
	}

	/**
	 * @Title: findListServices
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @author sunJingYang
	 * @date 2014-10-11 下午03:15:34
	 * @param ids
	 * @param i
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ServicesCategory> findListServices(String ids, int type) {
		List<ServicesCategory>  list=new ArrayList<ServicesCategory>();
		String id[]=ids.split(",");
		for(int i=0;i<id.length;i++){
			ServicesCategory sc=commonDao.findById(ServicesCategory.class, Integer.parseInt(id[i]));
			if(sc.getType()==null||sc.getType()==1){
				sc.setList(commonDao.queryHQL("from ServicesCategory where superiorId="+sc.getId()));
			}
			list.add(sc);
		}
		return list;
	}

	/**
	 * @Title: findListScById
	 * @Description: 根据父id查找其子级项目
	 * @author sunjinyang
	 * @date 2014-10-18 下午01:04:35
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ServicesCategory> findListScById(Integer id) {
		String hql="from ServicesCategory where superiorId="+id;
		return commonDao.queryHQL(hql);
	}

	/**
	 * @Title: findScPriceByHql
	 * @Description: 查询服务项目价格
	 * @author sunjinyang
	 * @date 2014-10-18 下午01:59:06
	 * @param whereHql
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ServicesCategory> findScPriceByHql(String whereHql) {
		String hql="from ServicesCategory "+whereHql;
		return commonDao.queryHQL(hql);
	}

	/**
	 * @Title: findByTerm
	 * @Description: 根据条件模糊查询
	 * @author sunjinyang
	 * @date 2014-10-21 下午12:41:52
	 * @param term
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ServicesCategory> findByTerm(String term) {
		String hql="from ServicesCategory where itemsName like '%"+term+"%'  and id in (select id  from ServicesCategory  where superiorId in (select id from ServicesCategory where type!=1 and superiorId in (select id  from ServicesCategory where superiorId=1)) or type=1)";
		List<ServicesCategory> list=commonDao.queryHQL(hql);
		return list;
	}

}
