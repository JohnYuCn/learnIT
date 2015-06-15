/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.column.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.column.dao.ColumnDao;
import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TvcmsColumn;

/**
 * 管理栏目service
 * @author lianpeng
 * 2014-6-22 下午02:40:24
 */

@Service
public class ColumnService {
	
	@Autowired
	private CommonDao comm;
	
	@Autowired
	private ColumnDao columnDao;

	public CommonDao getComm() {
		return comm;
	}

	public void setComm(CommonDao comm) {
		this.comm = comm;
	}

	/**
	 * 查询管理目录
	 * @author lianpeng
	 * 2014-6-22 下午02:46:56
	 */
	public List<TvcmsColumn> findAll(){
		
		return comm.findAll(TvcmsColumn.class);
	}
	
	/**
	 * 根据ID查询目录
	 * @author lianpeng
	 * 2014-6-22 下午04:52:54
	 */
	public List<TvcmsColumn> findById(Integer id){
		Criteria ct = comm.createCriteria(TvcmsColumn.class);
		ct.add(Restrictions.eq("bclassId", id));
		ct.addOrder(Order.asc("sort"));
		return comm.findByCriteria(TvcmsColumn.class, ct);
	}
	
	/**
	 * 根据ID查询内容
	 * @author lianpeng
	 * 2014-6-24 下午10:16:28
	 */
	public TvcmsColumn findByIdColumn(Integer id){
		return comm.findById(TvcmsColumn.class, id);
	}
	
	/**
	 * 保存活修改
	 * @author lianpeng
	 * 2014-6-28 上午10:31:55
	 */
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public Integer saveorUpdate(TvcmsColumn tcc){
		if(tcc.getId()==null || "0".equals(tcc.getId())){
			comm.save(tcc);
		}else{
			comm.merge(tcc);
		}
		return tcc.getId();
	}
	
	/**
	 * 删除目录
	 * @author lianpeng
	 * 2014-6-28 下午04:34:43
	 */
	@Transactional
	public void deleteColumn(String ids){
		List<TvcmsColumn> list = columnDao.queryColumn(ids);
		List<Integer> listIds = new ArrayList<Integer>();
		if(list != null){
			listIds = getColumnNode(listIds, list);
		}
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<listIds.size();i++){
			sb.append(listIds.get(i));
			sb.append(",");
		}
		columnDao.deletCont(sb.toString()+ids);
		columnDao.deletColumn(sb.toString()+ids);
	} 
	
	private List<Integer> getColumnNode(List<Integer> listIds ,List<TvcmsColumn> list){
		String [] array = new String[list.size()];
		for(int i=0;i<list.size();i++){
			array[i]= Integer.toString(list.get(i).getId());
			listIds.add(list.get(i).getId());
		}
		list = null;
		if(array.length>0){
			String ids = StringUtils.join(array, ",");
			list = columnDao.queryColumn(ids);
		}
		
		if(list != null){
			getColumnNode(listIds, list);
		}
		return listIds;
	}
	
	/**
	 * 查询模板
	 * @return
	 */
	public Object findTmpAll(String id,Boolean flag){
		List<Template> list =  columnDao.queryTemplate(id);
		List<Map<String,Object>> retList = new ArrayList<Map<String,Object>>();
		if(flag){
			if("1".equals(id)){
				Map<String,Object> map = new HashMap<String, Object>();
				map.put("id", "");
				map.put("templateName", "修改首页模板");
				retList.add(map);
			}else if("2".equals(id)){
				Map<String,Object> map = new HashMap<String, Object>();
				map.put("id", "");
				map.put("templateName", "修改内容模板");
				retList.add(map);
			}else if("3".equals(id)){
				Map<String,Object> map = new HashMap<String, Object>();
				map.put("id", "");
				map.put("templateName", "修改模板");
				retList.add(map);
			}
		}
		for(int i =0;i<list.size();i++){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("id", list.get(i).getId());
			map.put("templateName", list.get(i).getTemplateName());
			retList.add(map);
		}
		return retList;
	}
	
	public String queryFilePath(Integer id){
		List<TvcmsColumn> list =  comm.findAll(TvcmsColumn.class);
		String s = "";
		Integer tempId = null;
		String path = "";
		for(int i=0;i<list.size();i++){
			if(id == list.get(i).getId()){
				tempId = list.get(i).getBclassId();
				path = list.get(i).getFileSave();
				break;
			}
		}
		
		
		List<String> pathList = new ArrayList<String>();
		if(tempId != null){
			pathList = getFilePath(list, tempId,pathList);
			for(int i =pathList.size()-1;i>=0;i--){
				String symbol = "";
				if(!"".equals(s)){
					symbol = "/";
				}
				s = s+symbol+pathList.get(i);
			}
		}
		return s+"/"+path;
	}
	
	/**
	 * 
	 * @Title: getFilePath
	 * @Description:返回父文件夹名称
	 * @author lianpeng
	 * @param list
	 * @param id
	 * @return
	 */
	private List<String> getFilePath(List<TvcmsColumn> list,Integer id,List<String> retList){
		Integer bclassId = null;
		for(int i=0;i<list.size();i++){
			if(id == list.get(i).getId()){
				retList.add(list.get(i).getFileSave());
				bclassId = list.get(i).getBclassId();
				break;
			}
		}
		if(bclassId != null){
			getFilePath(list, bclassId, retList);
		}
		return retList;
	}
	/**
	 * 根据存放路径获取TvcmsColumn。
	 *
	 * @author suntao
	 * 2014-7-27 下午05:20:57
	 * 
	 * @param fileSave 以/分隔的路径
	 */
	public TvcmsColumn findByFileSave(String fileSave) {
		if (fileSave == null || fileSave.length() == 0) { // 取根栏目目录
			Criteria criteria = comm.createCriteria(TvcmsColumn.class);
			criteria.add(Restrictions.isNull("bclassId"));
			List<TvcmsColumn> list = comm.findByCriteria(TvcmsColumn.class, criteria);
			if (list.size() > 0) {
				return list.get(0);
			}
			return null;
		}
		String[] arr = fileSave.split("/");
		
		List<TvcmsColumn> list = findAll();
		
		TvcmsColumn parent = null;
		for (TvcmsColumn col : list) {
			if ("根目录".equals(col.getColumnname())) {
				parent = col;
				break;
			}
		}
		
		for (String str : arr) {
			boolean finded = false;
			for (TvcmsColumn col : list) {
				if (col.getBclassId() != null && parent.getId().intValue() == col.getBclassId()
						&& str.equals(col.getFileSave())) {
					parent = col;
					finded = true;
					break;
				}
			}
			
			if (!finded) {
				parent = null;
				break;
			}
		}
		
		return parent;
	}
	
	
	/**
	 * @Title: findByCont
	 * @Description: 根据id静态化
	 * @author lianpeng
	 * @date 2014-12-7 下午02:12:18
	 * @param ids
	 * @return
	 */
	public TvcmsColumn findByCont(String ids) {
		List<TvcmsColumn> list = columnDao.findByIdColumn(ids);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	/**
	 * @Title: UpdateType
	 * @Description: 批量设置模板
	 * @author lianpeng
	 * @date 2014-12-27 下午03:17:27
	 * @param ids
	 * @param type
	 * @param val
	 */
	@Transactional
	public void UpdateType(String ids,String type,String value){
		if("indexStyle".equals(type)){
			columnDao.updateIndexStyle(ids, value);
		}else if("listStyle".equals(type)){
			columnDao.updateListStyle(ids, value);
		}else if("contStyle".equals(type)){
			columnDao.updateContStyle(ids, value);
		}
	}
	
}
