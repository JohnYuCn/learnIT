/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2015 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2015-1-5 下午04:44:26
 * @version V1.0
 */
package cn.tvcms.shop.productmodel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.shop.pojo.ModelStyle;
import cn.tvcms.shop.pojo.ProductModel;

/**
 * @ClassName: MoldService
 * @Description: 商品类型service
 * @author miaoxiaochen
 * @date 2015-1-5 下午04:44:26
 * 
 */
@Service
public class ModelService {
	@Autowired
	private CommonDao cmd;
	
	/**
	 * 
	 * @Title: getProductMold
	 * @Description: 用过ID获取ProductMold实体
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:17:16
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public ProductModel getProductMold(int id){
		ProductModel model=new ProductModel();
		model=cmd.findById(ProductModel.class, id);
		model.setMoldStyles(cmd.queryHQL("from ModelStyle where pmdID = "+model.getPmdID()));
		return model;
	}
	
	/**
	 * 
	 * @Title: addOrUpdateProductMold
	 * @Description: 增加修改商品类型
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:17:56
	 * @param productModel
	 */
	public void addOrUpdateProductMold(ProductModel productModel,int count){
		productModel.setStyleCount(count);
		cmd.saveOrUpdate(productModel);
	}
	

	/**
	 * 
	 * @Title: deleteMoldStyle
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:44:53
	 * @param modelStyle
	 */
	public void deleteMoldStyle(ModelStyle modelStyle){
		cmd.delete(modelStyle);
	}
	/**
	 * 
	 * @Title: deleteProductMold
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:45:29
	 * @param model
	 */
	public void deleteProductMold(ProductModel model){
		cmd.delete(model);
	}
	/**
	 * 
	 * @Title: getMoldStylesByProMoldID
	 * @Description: 通过商品类型id获得旗下的详细属性
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:47:48
	 * @param pmdID
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ModelStyle> getMoldStylesByProMoldID(int pmdID){
		return cmd.queryHQL("from ModelStyle where pmdID="+pmdID);
	}
	/**
	 * 
	 * @Title: getProductMolds
	 * @Description: 获取商品类型的列表
	 * @author miaoxiaochen
	 * @date 2015-1-6 上午10:50:48
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ProductModel> getProductMolds(){
		return cmd.queryHQL("from ProductModel order by addDate desc");
	}

	/**
	 * @Title: getProductMoldsByName
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:26:45
	 * @param name
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ProductModel> getProductMoldsByName(String name) {
		// TODO Auto-generated method stub
		return cmd.queryHQL("from ProductModel where name like '%"+name+"%' order by addDate desc ");
	}
}
