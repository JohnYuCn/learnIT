/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author wangChuang
 * @date 2015-4-17 下午04:16:52
 * @version V1.0
 */
package cn.tvcms.cms.visit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.pojo.VisitStatistics;

/**
 * @ClassName: VisitStatisticsService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author wangChuang
 * @date 2015-4-17 下午04:16:52
 * 
 */
@Service
public class VisitStatisticsService {
	@Autowired
	private CommonDao dao;
	
	/**
	 * @Title: findAll
	 * @Description: TODO(返回全部数据)
	 * @author wangChuang
	 * @date 2015-4-17 下午04:19:16
	 * @return
	 */
	public List<VisitStatistics> findAll(){
		return dao.findAll(VisitStatistics.class);
	}
	
	/**
	 * @Title: findAll
	 * @Description: TODO(查询当日所有数据)
	 * @author wangChuang
	 * @date 2015-4-17 下午04:19:38
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<VisitStatistics> findByDate(){
		String hql = "";
		String dangqianshijian = DateTools.getSystemDateYYYYMMDD();//当前时间
		String houyitian = DateTools.getSpecifiedDayAfter(DateTools.getSystemDateYYYYMMDD());//后一天
		hql+= "from VisitStatistics where time between '"+dangqianshijian+"' and '"+houyitian+"'";
		return dao.queryHQL(hql);
	}
	/**
	 * @Title: findBtdateAndIp
	 * @Description: TODO(通过当前日期查询    ip的分组查询)
	 * @author wangChuang
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<VisitStatistics> findBydateAndIp(){
		String hql = " from VisitStatistics where 1 = 1 ";
		String dangqianshijian = DateTools.getSystemDateYYYYMMDD();//当前时间
		String houyitian = DateTools.getSpecifiedDayAfter(DateTools.getSystemDateYYYYMMDD());//后一天
		hql+= " and time between '"+dangqianshijian+"' and '"+houyitian+"' ";
		hql+= " group by ip ";
		return dao.queryHQL(hql);
	}
	
	/**
	 * @Title: getDayVisitCount
	 * @Description: TODO(查询日访问量)
	 * @author wangChuang
	 * @date 2015-4-17 下午04:40:44
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getDayVisitCount(){
		List li = findBydateAndIp();
		if(li!=null){
			return li.size();
		}
		return 0;
	}
	/**
	 * @Title: getDayVisitCount
	 * @Description: TODO(查询日浏览量)
	 * @author wangChuang
	 * @date 2015-4-17 下午04:41:31
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getDayLookCount(){
		List li = findByDate();
		if(li!=null){
			return li.size();
		}
		return 0;
	}

	/**
	 * @Title: saveOrUpdate
	 * @Description: TODO(保存对象)
	 * @author wangChuang
	 * @date 2015-4-17 下午05:02:55
	 * @param statistics
	 */
	public void saveOrUpdate(VisitStatistics statistics) {
		dao.saveOrUpdate(statistics);
	}

	/**
	 * @Title: getYesterdayVisitCount
	 * @Description: TODO(昨日访问量)
	 * @author wangChuang
	 * @date 2015-4-17 下午05:20:03
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getYesterdayVisitCount() {
		String hql = " from VisitStatistics where 1 = 1 ";
		String dangqianshijian = DateTools.getSystemDateYYYYMMDD();//当前时间
		String qianyitian = DateTools.getYesterdayDayAfter(DateTools.getSystemDateYYYYMMDD());//前一天
		hql+= " and time between '"+qianyitian+"' and '"+dangqianshijian+"' ";
		hql+= " group by ip ";
		List list = dao.queryHQL(hql);
		if(list!=null){
			return list.size();
		}
		return 0;
	}
	/**
	 * @Title: getYesterdayVisitCount
	 * @Description: TODO(昨日浏览量)
	 * @author wangChuang
	 * @date 2015-4-17 下午05:20:03
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getYesterdayLookCount() {
		String hql = "";
		String dangqianshijian = DateTools.getSystemDateYYYYMMDD();//当前时间
		String qianyitian = DateTools.getYesterdayDayAfter(DateTools.getSystemDateYYYYMMDD());//前一天
		hql+= "from VisitStatistics where time between '"+qianyitian+"' and '"+dangqianshijian+"'";
		List list = dao.queryHQL(hql);
		if(list!=null){
			return list.size();
		}
		return 0;
	}
}
