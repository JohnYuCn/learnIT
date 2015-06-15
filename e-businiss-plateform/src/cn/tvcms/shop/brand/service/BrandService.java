/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-30 上午10:08:36
 * @version V1.0
 */
package cn.tvcms.shop.brand.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.shop.pojo.Brand;

/**
 * @ClassName: BrandService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author miaoxiaochen
 * @date 2014-12-30 上午10:08:36
 * 
 */
@Service
public class BrandService {
	@Autowired
	private CommonDao cmd;
	
	public void addOrUpdateBrand(Brand brand){
		cmd.saveOrUpdate(brand);
	}
	
	public void addBrand(Brand brand){
		cmd.save(brand);
	}
	
	public void modifyBrand(Brand brand){
		cmd.update(brand);
	}
	
	public void deleteBrand(Brand brand){
		cmd.delete(brand);
	}
	
	@SuppressWarnings("unchecked")
	public List<Brand> getBrands(){
		return cmd.queryHQL("from Brand");
	}
	
	@SuppressWarnings("unchecked")
	public List<Brand> getBrandsByName(String name){
		return cmd.queryHQL("from Brand where name like '%"+name+"%'");
	}
	
	public Brand getBrandByID(int id){
		return cmd.findById(Brand.class, id);
	}
}
