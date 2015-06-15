/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-26 下午05:18:57
 * @version V1.0
 */
package cn.tvcms.shop.productclassify.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.shop.pojo.ModelStyle;
import cn.tvcms.shop.pojo.ProAttScreen;
import cn.tvcms.shop.pojo.ProductClassify;
import cn.tvcms.shop.pojo.ProductModel;
import cn.tvcms.shop.product.dao.ProductDao;
import cn.tvcms.shop.productmodel.service.ModelService;

/**
 * @ClassName: ProductClassifyService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-26 下午05:18:57
 * 
 */
@Service
public class ProductClassifyService {
	@Autowired
	private CommonDao cmd;
	@Autowired
	private ProductDao  pd;
	@Autowired
	private ModelService modelService;
	
	/**
	 * 
	 * @Title: addProductClass
	 * @Description: 添加和修改
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:34:49
	 * @param classify
	 */
	@Transactional(readOnly=false, propagation=Propagation.REQUIRED, rollbackFor=Throwable.class)
	public void saveOrUpdateClass(ProductClassify classify){
		cmd.saveOrUpdate(classify);
		if(classify.getProAttScreens()!=null&&classify.getProAttScreens().size()>0){
			List<ProAttScreen> proAttScreens = classify.getProAttScreens();
			for (ProAttScreen proAttScreen : proAttScreens) {
				proAttScreen.setPcsID(classify.getPcsID());
				addOrUpdateProAttScreen(proAttScreen);
			}
		}
	}
	
	/**
	 * 
	 * @Title: deleteProductClass
	 * @Description: 删除
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:35:12
	 * @param classify
	 */
	public void deleteProductClass(ProductClassify classify){
		cmd.delete(classify);
	}
	
	/**
	 * 
	 * @Title: getParentClass
	 * @Description: 获取分类 
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:35:23
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ProductClassify> getParentClass(){
		return cmd.queryHQL("from ProductClassify");
	}
	
	/**
	 * 
	 * @Title: getProClassByParID
	 * @Description: 通过父类ID 查询list
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:35:55
	 * @param parentID
	 * @return
	 */
	@SuppressWarnings("unchecked" )
	public List<ProductClassify> getProClassByParID(int parentID){
		return cmd.queryHQL("from ProductClassify where parentID="+parentID);
	}
	
	/**
	 * 
	 * @Title: getProClassByName
	 * @Description: 用过name模糊查询
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:36:20
	 * @param name
	 * @return
	 */
	@SuppressWarnings("unchecked" )
	public List<ProductClassify> getProClassByName(String name){
		return cmd.queryHQL("from ProductClassify where name like '%"+name+"%' order by sorting");
	}
	/**
	 * 
	 * @Title: getProClasByID
	 * @Description: 通过ID查询
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:36:42
	 * @param id
	 * @return
	 */
	public ProductClassify getProClasByID(int id){
		ProductClassify productClassify=cmd.findById(ProductClassify.class, id);
		productClassify.setProAttScreens(getProAttScreens(id));
		return productClassify;
	}
	
	/**
	 * 
	 * @Title: getProClaSort
	 * @Description: 为分类提供 树状结构图
	 * @author miaoxiaochen
	 * @date 2015-1-6 下午06:37:00
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public  List<ProductClassifyBySort> getProClaSort(){
		List<ProductClassify> classifies=cmd.queryHQL("from ProductClassify");
		List<ProductClassifyBySort> bySorts=new ArrayList<ProductClassifyBySort>();
		List<ProductClassifyBySort> returnSorts=new ArrayList<ProductClassifyBySort>();
		for (ProductClassify productClassify : classifies) {
			bySorts.add(new ProductClassifyBySort(productClassify));
		}
		for (int i = 0; i < bySorts.size() - 1; ++i) {
            for (int j = i + 1; j < bySorts.size(); ++j) {
                if (bySorts.get(j).getClassify().getParentID()==(bySorts.get(i).getClassify().getPcsID())) {
                	bySorts.get(i).addChild(bySorts.get(j));
                }
            }
        }
		ProductClassifyBySort.getProClaSort(bySorts.get(0), 0, returnSorts);
		return returnSorts;
	}
	/**
	 * 
	 * @Title: getProAttScreens
	 * @Description: 获得商品分类下的筛选属性
	 * @author miaoxiaochen
	 * @date 2015-1-13 下午03:06:02
	 * @param pcsID
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<ProAttScreen> getProAttScreens(int pcsID){
		
		return cmd.queryHQL("from ProAttScreen where pcsID="+pcsID);
		
	}
	/**
	 * 
	 * @Title: getMapModelStyleAll
	 * @Description: 获取全部商品类型属性
	 * @author miaoxiaochen
	 * @date 2015-1-13 下午07:53:26
	 * @return
	 */
//	public Map<String,List<ModelStyle>> getMapModelStyleAll(){
//		Map<String,List<ModelStyle>>  map=new HashMap<String, List<ModelStyle>>();
//		List<ProductModel> productMolds = modelService.getProductMolds();
//		for (ProductModel productModel : productMolds) {
//			List<ModelStyle> modelStyles=modelService.getMoldStylesByProMoldID(productModel.getPmdID());
//			map.put(productModel.getPmdID()+"",modelStyles);
//		}
//		return map;
//	}
	public Map<Integer,List<ModelStyle>> getMapModelStyleAll(){
		Map<Integer,List<ModelStyle>>  map=new HashMap<Integer, List<ModelStyle>>();
		List<ProductModel> productMolds = modelService.getProductMolds();
		for (ProductModel productModel : productMolds) {
			List<ModelStyle> modelStyles=modelService.getMoldStylesByProMoldID(productModel.getPmdID());
			map.put(productModel.getPmdID(),modelStyles);
		}
		return map;
	}
	/**
	 * 
	 * @Title: addOrUpdateProAttScreen
	 * @Description: 增加/修改 商品分类 和商品类型属性 关联表
	 * @author miaoxiaochen
	 * @date 2015-1-13 下午07:53:23
	 * @param attScreens
	 */
	public void addOrUpdateProAttScreen(List<ProAttScreen> attScreens){
		for (ProAttScreen proAttScreen : attScreens) {
			cmd.saveOrUpdate(proAttScreen);
		}
	}
	public void addOrUpdateProAttScreen(ProAttScreen attScreens){
			cmd.saveOrUpdate(attScreens);
	}
	
}
