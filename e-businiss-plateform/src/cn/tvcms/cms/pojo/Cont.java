/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 内容实体类
 * 
 * @author xurannan
 * @version create time：2014年5月22日 下午10:34:20
 * 
 */
@Entity
@Table(name = "tvcms_cont")
public class Cont implements Serializable {
	@Transient
	private  String classNotes="内容";//类的注释

	/**
	 * @return the classNotes
	 */
	public String getClassNotes() {
		return classNotes;
	}

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;// 主键ID

	@Column
	private String title;// 标题

	@Column(name="only_id")
	private String onlyId;//唯一标识，用于复制时，内容的关联
	
	@Column
	private Integer is_b;// 是否粗体

	@Column
	private Integer is_i;// 是否斜体

	@Column
	private Integer is_del;// 是否删除线

	@Column
	private Integer tuijian;// 推荐

	@Column
	private Integer toutiao;// 头条

	@Column
	private String keywords;// 关键词

	@Column
	private String author;// 作者

	@Column(name = "column_id")
	private Integer columnId;// 所属栏目ID

	@Column(name = "title_color")
	private String titleColor;// 标题颜色

	@Column(name = "ext_url")
	private String extUrl;// 外部链接

	@Column(name = "release_time")
	private Date releaseTime;// 发布时间

	@Column(name = "title_img")
	private String titleImg;// 标题图片

	@Column(name = "cont_abs")
	private String contAbs;// 内容摘要

	@Column(name = "info_source")
	private String infoSource;// 信息来源

	@Column(name = "new_content")
	private String newContent;// 新闻正文

	@Column(name = "top_rank")
	private String topRank;// 置顶级别

	@Column(name = "top_rule")
	private String topRule;// 置顶规则

	@Column(name = "top_start_date")
	private Date topStartDate;// 置顶开始日期

	@Column(name = "top_end_date")
	private Date topEndDate;// 置顶结束日期

	private String quanxianset;// 权限设置

	@Column(name = "look_point")
	private String lookPoint;// 查看扣除点数

	@Column
	private Integer hits;// 点击数

	@Column(name = "dow_num")
	private Integer dowNum;// 下载数

	@Column(name = "filename_path")
	private String filenamePath;// 文件保存路径

	@Column
	private String tags;// 标签

	@Column(name = "up_time")
	private Date upTime;// 定时上线时间

	@Column(name = "down_time")
	private Date downTime;// 定时下线时间

	@Column(name = "comment_option")
	private Integer commentOption;// 评论选项

	@Column(name = "is_deleted")
	private Integer isDeleted;// 删除标识

	@Column(name = "create_user_id")
	private Integer createUserId;// 创建用户

	@Column(name = "create_time")
	private Date createTime;// 创建时间

	@Column(name = "modify_user_id")
	private Integer modifyUserId;// 修改用户

	@Column(name = "modify_time")
	private Date modifyTime;// 修改时间

	@Column(name = "delete_user_id")
	private Integer deleteUserId;// 删除用户

	@Column(name = "delete_time")
	private Date deleteTime;// 删除时间
	
	@Column(name = "pv_count")
	private Integer pvNumber;//pv访问
	
	@Column(name = "uv_count")
	private Integer uvNumber;//uv访问
	
	@Column(name = "cont_temp")
	private Integer contTemp;//内容模版
	
	
	@Column
	private String recommend;//推荐数目
	
	@Column(name="no_recommend")
	private String noRecommend;//不推荐数目
	
	@Column(name="is_model")//切换模式
	private Integer isModel;
	

	/**
	 * @return the isModel
	 */
	public Integer getIsModel() {
		return isModel;
	}

	/**
	 * @param isModel 要设置的 isModel
	 */
	public void setIsModel(Integer isModel) {
		this.isModel = isModel;
	}

	/**
	 * @return the contTemp
	 */
	public Integer getContTemp() {
		return contTemp;
	}

	/**
	 * @param contTemp 要设置的 contTemp
	 */
	public void setContTemp(Integer contTemp) {
		this.contTemp = contTemp;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getIs_b() {
		return is_b;
	}

	public void setIs_b(Integer is_b) {
		this.is_b = is_b;
	}

	public Integer getIs_i() {
		return is_i;
	}

	public void setIs_i(Integer is_i) {
		this.is_i = is_i;
	}

	public Integer getIs_del() {
		return is_del;
	}

	public void setIs_del(Integer is_del) {
		this.is_del = is_del;
	}

	public Integer getTuijian() {
		return tuijian;
	}

	public void setTuijian(Integer tuijian) {
		this.tuijian = tuijian;
	}

	public Integer getToutiao() {
		return toutiao;
	}

	public void setToutiao(Integer toutiao) {
		this.toutiao = toutiao;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	public String getTitleColor() {
		return titleColor;
	}

	public void setTitleColor(String titleColor) {
		this.titleColor = titleColor;
	}

	public String getExtUrl() {
		return extUrl;
	}

	public void setExtUrl(String extUrl) {
		this.extUrl = extUrl;
	}

	public Date getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getContAbs() {
		return contAbs;
	}

	public void setContAbs(String contAbs) {
		this.contAbs = contAbs;
	}

	public String getNewContent() {
		return newContent;
	}

	public void setNewContent(String newContent) {
		this.newContent = newContent;
	}

	public String getTopRank() {
		return topRank;
	}

	public void setTopRank(String topRank) {
		this.topRank = topRank;
	}

	public String getTopRule() {
		return topRule;
	}

	public void setTopRule(String topRule) {
		this.topRule = topRule;
	}

	public Date getTopStartDate() {
		return topStartDate;
	}

	public void setTopStartDate(Date topStartDate) {
		this.topStartDate = topStartDate;
	}

	public Date getTopEndDate() {
		return topEndDate;
	}

	public void setTopEndDate(Date topEndDate) {
		this.topEndDate = topEndDate;
	}

	public String getQuanxianset() {
		return quanxianset;
	}

	public void setQuanxianset(String quanxianset) {
		this.quanxianset = quanxianset;
	}

	public String getLookPoint() {
		return lookPoint;
	}

	public void setLookPoint(String lookPoint) {
		this.lookPoint = lookPoint;
	}

	public Integer getHits() {
		return hits;
	}

	public void setHits(Integer hits) {
		this.hits = hits;
	}

	public Integer getDowNum() {
		return dowNum;
	}

	public void setDowNum(Integer dowNum) {
		this.dowNum = dowNum;
	}

	public String getFilenamePath() {
		return filenamePath;
	}

	public void setFilenamePath(String filenamePath) {
		this.filenamePath = filenamePath;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public Date getUpTime() {
		return upTime;
	}

	public void setUpTime(Date upTime) {
		this.upTime = upTime;
	}

	public Date getDownTime() {
		return downTime;
	}

	public void setDownTime(Date downTime) {
		this.downTime = downTime;
	}

	public Integer getCommentOption() {
		return commentOption;
	}

	public void setCommentOption(Integer commentOption) {
		this.commentOption = commentOption;
	}

	/**
	 * @return the isDeleted
	 */
	public Integer getIsDeleted() {
		return isDeleted;
	}

	/**
	 * @param isDeleted 要设置的 isDeleted
	 */
	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public int getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getModifyUserId() {
		return modifyUserId;
	}

	public void setModifyUserId(Integer modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public int getDeleteUserId() {
		return deleteUserId;
	}

	public void setDeleteUserId(Integer deleteUserId) {
		this.deleteUserId = deleteUserId;
	}

	public Date getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the onlyId
	 */
	public String getOnlyId() {
		return onlyId;
	}

	/**
	 * @param onlyId 要设置的 onlyId
	 */
	public void setOnlyId(String onlyId) {
		this.onlyId = onlyId;
	}

	/**
	 * @param classNotes 要设置的 classNotes
	 */
	public void setClassNotes(String classNotes) {
		this.classNotes = classNotes;
	}

	/**
	 * @return the pvNumber
	 */
	public Integer getPvNumber() {
		return pvNumber;
	}

	/**
	 * @param pvNumber 要设置的 pvNumber
	 */
	public void setPvNumber(Integer pvNumber) {
		this.pvNumber = pvNumber;
	}

	/**
	 * @return the uvNumber
	 */
	public Integer getUvNumber() {
		return uvNumber;
	}

	/**
	 * @param uvNumber 要设置的 uvNumber
	 */
	public void setUvNumber(Integer uvNumber) {
		this.uvNumber = uvNumber;
	}

	/**
	 * @return the recommend
	 */
	public String getRecommend() {
		return recommend;
	}

	/**
	 * @param recommend 要设置的 recommend
	 */
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	/**
	 * @return the noRecommend
	 */
	public String getNoRecommend() {
		return noRecommend;
	}

	/**
	 * @param noRecommend 要设置的 noRecommend
	 */
	public void setNoRecommend(String noRecommend) {
		this.noRecommend = noRecommend;
	}

	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * @param author 要设置的 author
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/**
	 * @return the infoSource
	 */
	public String getInfoSource() {
		return infoSource;
	}

	/**
	 * @param infoSource 要设置的 infoSource
	 */
	public void setInfoSource(String infoSource) {
		this.infoSource = infoSource;
	}


}
