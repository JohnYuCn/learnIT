/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-6 下午05:23:12
 * @version V1.0
 */
package cn.tvcms.shop.productmodelstyle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.shop.pojo.ModelStyle;

/**
 * @ClassName: MoldStyleService
 * @Description: 商品类型属性service
 * @author miaoxiaochen
 * @date 2015-1-6 下午05:23:12
 * 
 */
@Service
public class ModelStyleService {
	@Autowired
	private CommonDao cmd;
	/**
	 * 
	 * @Title: addOrUpdateMoldStyle
	 * @Description: 增加修改商品类型属性
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:27:32
	 * @param moldStyle
	 */
	public void addOrUpdateMoldStyle(ModelStyle moldStyle){
		cmd.saveOrUpdate(moldStyle);
	}
	
	/**
	 * 
	 * @Title: getMoldStyleByID
	 * @Description:用过ID获取MoldStyle实体
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:43:57
	 * @param id
	 * @return
	 */
	public ModelStyle getMoldStyleByID(int id){
		return cmd.findById(ModelStyle.class, id);
	}
	
	/**
	 * 
	 * @Title: deleteMoldStyle
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:44:53
	 * @param moldStyle
	 */
	public void deleteMoldStyle(ModelStyle moldStyle){
		cmd.delete(moldStyle);
	}
	
	/**
	 * 
	 * @Title: getMoldStyleCount
	 * @Description: 获得属性总数 
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:01:28
	 * @param pmdID 商品类型的PK
	 * @return
	 */
	public int getMoldStyleCount(int pmdID){
		int i_count =cmd.executeHQLCount("select count(*) from MoldStyle where pmdID="+pmdID);
		return i_count;
	}
	/**
	 * 
	 * @Title: getMoldStyles
	 * @Description: 商品类型属性列表
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:03:24
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ModelStyle> getMoldStyles(){
		return cmd.queryHQL("from MoldStyle");
	}
}
