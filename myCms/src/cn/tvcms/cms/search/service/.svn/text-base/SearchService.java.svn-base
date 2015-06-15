/**
 * @Project: 特维内容管理系统
 * @Description: 搜索Service。
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author suntao
 * @date 2014-9-20 上午10:31:53
 * @version V1.0
 */
package cn.tvcms.cms.search.service;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.FieldType;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.Scorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wltea.analyzer.lucene.IKAnalyzer;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.template.service.TemplateService;

/**
 * @ClassName: SearchService
 * @Description: 搜索Service。
 * @author suntao
 * @date 2014-9-20 上午10:31:53
 * 
 */
@Service
public class SearchService {
	private static final  Log log = LogFactory.getLog(SearchService.class);
	
	@Autowired
	private ContService contService;
	
	@Autowired
	private ColumnService columnService;
	
	@Autowired
	private TemplateService templateService;
	
	private Directory directory;
	private Analyzer analyzer;
	
	/**
	 * 创建索引。
	 * @Title: createIndex
	 * @Description: 创建索引。
	 * @author suntao
	 * @date 2014-9-20 下午05:32:26
	 * @param reqType
	 * @param index
	 * @param list
	 * @param content
	 * @param single
	 * @throws Exception
	 */
	public void createIndex(String reqType, String index, String list, String content, String single) throws Exception {
		initDirectory();
		if (directory == null) {
			return;
		}
		IndexWriterConfig indexWriterConfig = new IndexWriterConfig(Version.LUCENE_47, analyzer);
		IndexWriter indexWriter = new IndexWriter(directory, indexWriterConfig);
		try {
			if ("1".equals(reqType)) { // 如果是重建索引
				indexWriter.deleteAll();
			}
			
			if ("1".equals(reqType) || "1".equals(index)) { // 首页
				createIndex(indexWriter);
			}
			
			if ("1".equals(reqType) || "1".equals(list)) { // 列表
				createList(indexWriter);
			}
			
			if ("1".equals(reqType) || "1".equals(content)) { // 内容
				createContent(indexWriter);
			}
			
			if ("1".equals(reqType) || "1".equals(single)) { // 单页面
				createSingle(indexWriter);
			}
		} catch (RuntimeException e) {
			throw e;
		} finally {
			indexWriter.close();
		}
	}
	
	/**
	 * 初始lucene。
	 * @Title: initDirectory
	 * @Description: 初始lucene。
	 * @author suntao
	 * @date 2014-9-20 下午05:33:25
	 */
	private void initDirectory() {
		if (analyzer != null) {
			return;
		}
		synchronized(this) {
			if (analyzer == null) {
				try {
					analyzer = new IKAnalyzer();
					
					String indexPath = SystemUtils.getWebAppRealPath(null);
					indexPath += "/WEB-INF/index";
					log.info("索引路径：" + indexPath);
					File file = new File(indexPath);
					if (!file.exists()) {
						file.mkdirs();
					}
					directory = FSDirectory.open(file);
				} catch (Exception e) {
					log.error(e.getMessage(), e);
				}
			}
		}
	}
	
	/**
	 * 生成首页索引。
	 * @Title: createIndex
	 * @Description: 生成首页索引。
	 * @author suntao
	 * @date 2014-9-20 下午01:59:24
	 * @param indexWriter
	 * @throws Exception
	 */
	private void createIndex(IndexWriter indexWriter) throws Exception {
		String url = "/index.html";
		Document document = createDocument(url);
		indexWriter.updateDocument(new Term("url", url), document);
	}
	
	/**
	 * 生成栏目的索引。
	 * @Title: createList
	 * @Description: 生成栏目的索引。
	 * @author suntao
	 * @date 2014-9-20 下午02:12:10
	 * @param indexWriter
	 * @param localUrl
	 * @throws Exception
	 */
	private void createList(IndexWriter indexWriter) throws Exception {
		TvcmsColumn column = columnService.findByFileSave("");
		createSubColumn(indexWriter, column, "");
	}
	
	/**
	 * 递归生成栏目的索引。
	 * @Title: createSubColumn
	 * @Description: 递归生成栏目的索引。
	 * @author suntao
	 * @date 2014-9-20 下午02:12:33
	 * @param indexWriter
	 * @param column
	 * @param localUrl
	 * @param url
	 * @throws Exception
	 */
	private void createSubColumn(IndexWriter indexWriter, TvcmsColumn column, String url) throws Exception {
		if (column == null) {
			return;
		}
		String localUrl = MessageUtils.getMessage("websiteLocalUrl");
		
		List<TvcmsColumn> list = columnService.findById(column.getId());
		for (TvcmsColumn subColumn : list) {
			String fileSave = subColumn.getFileSave();
			if (fileSave == null || fileSave.length() == 0) {
				continue;
			}
			String colUrl = url + "/" + fileSave;
			Document document = createDocument(colUrl + "/index.html");
			indexWriter.updateDocument(new Term("url", colUrl + "/index.html"), document);
			
			// 生气第2页及以后页面的索引
			URL ur = new URL(localUrl + colUrl + "/index.html");
			HttpURLConnection urlConn = (HttpURLConnection) ur.openConnection();
			// 获取列表总页数
	        String totalPageStr = urlConn.getHeaderField("totalPage");
	        if (totalPageStr != null && totalPageStr.length() > 0) { 
				int totalPage = Integer.parseInt(totalPageStr);
				if (totalPage > 1) { // 如果页数大于1，生成其他页面的静态化文件
					for (int i = 2; i <= totalPage; i++) {
						document = createDocument(colUrl + "/index.html?currPage=" + i);
						indexWriter.updateDocument(new Term("url", colUrl + "/index.html?currPage=" + i), document);
					}
				}
			}
			
			
			createSubColumn(indexWriter, subColumn, colUrl);
		}
	}
	
	/**
	 * 生成内容索引。
	 * @Title: createContent
	 * @Description: 生成内容索引。
	 * @author suntao
	 * @date 2014-9-20 下午02:19:21
	 * @param indexWriter
	 * @param localUrl
	 * @throws Exception
	 */
	private void createContent(IndexWriter indexWriter) throws Exception {
		TvcmsColumn column = columnService.findByFileSave("");
		createSubColumnContent(indexWriter, column, "");
	}
	
	/**
	 * 递归生成内容索引。
	 * @Title: createSubColumnContent
	 * @Description: 递归生成内容索引。
	 * @author suntao
	 * @date 2014-9-20 下午02:19:40
	 * @param indexWriter
	 * @param column
	 * @param localUrl
	 * @param url
	 * @throws Exception
	 */
	private void createSubColumnContent(IndexWriter indexWriter, TvcmsColumn column, String url) throws Exception {
		if (column == null) {
			return;
		}
		List<TvcmsColumn> list = columnService.findById(column.getId());
		for (TvcmsColumn subColumn : list) {
			String fileSave = subColumn.getFileSave();
			if (fileSave == null || fileSave.length() == 0) {
				continue;
			}
			String colUrl = url + "/" + fileSave;
			
			List<Cont> contList = contService.findById(subColumn.getId());
			for (Cont cont : contList) {
				Date createTime = cont.getCreateTime();
				String contUrl = null;
				if (createTime == null) {
					contUrl = colUrl;
				} else {
					String createStr = DateTools.getDateYYYYMMDD(createTime);
					contUrl = colUrl + "/" + createStr;
				}
				contUrl = contUrl + "/" + cont.getId() + ".html";
				
				Document document = createDocument(contUrl);
				indexWriter.updateDocument(new Term("url", contUrl), document);
			}
			
			createSubColumnContent(indexWriter, subColumn, colUrl);
		}
	}
	
	/**
	 * 生成单页面索引。
	 * @Title: createSingle
	 * @Description: 生成单页面索引。
	 * @author suntao
	 * @date 2014-9-20 下午05:33:48
	 * @param indexWriter
	 * @throws Exception
	 */
	private void createSingle(IndexWriter indexWriter) throws Exception {
		List<Template> list = templateService.findAllSinglePage();
		for (Template template : list) {
			String filename = template.getFilename();
			String url = "/" + filename;
			
			Document document = createDocument(url);
			indexWriter.updateDocument(new Term("url", url), document);
		}
		
	}
	
	/**
	 * 生成lucene Document。
	 * @Title: createDocument
	 * @Description: 生成lucene Document。
	 * @author suntao
	 * @date 2014-9-20 下午05:34:06
	 * @param url
	 * @return
	 */
	private Document createDocument(String url) {
		if (url == null || url.length() == 0) {
			return null;
		}
		// 解析html文档
		org.jsoup.nodes.Document jsoupDoc = null;
		try {
			String localUrl = MessageUtils.getMessage("websiteLocalUrl");
			jsoupDoc = Jsoup.connect(localUrl + url).get();
		} catch (IOException e) {
			log.warn(e.getMessage(), e);
			return null;
		}
		
		Document doc = new Document();
		
		// 保存url。url不做索引不分词，只存储
		FieldType urlType = new FieldType();
		urlType.setIndexed(false);
		urlType.setTokenized(false);
		urlType.setStored(true);
		Field urlField = new Field("url", url, urlType);
		doc.add(urlField);
		
		// 解析标题
		String title = jsoupDoc.title();
		if (log.isDebugEnabled()) {
			log.debug("title:" + title);
		}
		doc.add(new TextField("title", title, Field.Store.YES)); // StringField作为一个完整单词保存，不分词；TextField会对内容分词
		
		// 解析内容
		String body = jsoupDoc.getElementsByTag("body").text();
		if (log.isDebugEnabled()) {
			log.debug("body:" + body);
		}
		doc.add(new TextField("body", body, Field.Store.YES));
		
		return doc;
	}
	
	/**
	 * 搜索。
	 * @Title: search
	 * @Description: 搜索。
	 * @author suntao
	 * @date 2014-9-20 下午05:34:30
	 * @param keyword
	 * @param pageSize
	 * @param currPage
	 * @return 搜索结果。
	 * @throws Exception
	 */
	public SearchResult search(String keyword, int pageSize, int currPage) throws Exception {
		SearchResult result = new SearchResult();
		result.setKeyword(keyword);
		result.setPageSize(pageSize);
		result.setCurrPage(currPage);
		List<SearchContent> contents = new ArrayList<SearchContent>();
		result.setContents(contents);
		
		if (keyword == null || keyword.length() == 0 || pageSize <= 0 || currPage <= 0) {
			return result;
		}
		initDirectory();
		if (directory == null) {
			return result;
		}
		
		
		IndexReader indexReader = DirectoryReader.open(directory);
		try {
			IndexSearcher indexSearcher = new IndexSearcher(indexReader);
			String[] fields = new String[] {"title", "body"};
			MultiFieldQueryParser queryParser = new MultiFieldQueryParser(Version.LUCENE_47, fields, analyzer);
			Query query = queryParser.parse(keyword);
			
			int startIdx = pageSize * (currPage - 1);
			
			//返回前number条记录              
			TopDocs topDocs = indexSearcher.search(query, pageSize * currPage);
			
			// 共命中的条数
			int totalCount = topDocs.totalHits;
			result.setTotalHit(totalCount);
			
			// 高亮显示
			Formatter formatter = new SimpleHTMLFormatter("<span style='color:red'>","</span>");
			Scorer fragmentScorer = new QueryScorer(query);
			Highlighter highlighter = new Highlighter(formatter, fragmentScorer);
			Fragmenter fragmenter = new SimpleFragmenter(100);
			highlighter.setTextFragmenter(fragmenter);
			ScoreDoc[] scoreDocs = topDocs.scoreDocs;
			
			int i = -1;
			for (ScoreDoc scDoc : scoreDocs) {
				i++;
				if (i < startIdx) {
					continue;
				}
				Document document = indexSearcher.doc(scDoc.doc);
				String url = document.get("url");
				
				// 获取标题，并高亮显示
				String title = document.get("title");
				if (title != null && title.length() > 0) {
					String lighterTitle = highlighter.getBestFragment(analyzer, "title", title);
					if (lighterTitle != null) {
						title = lighterTitle;
					}
				}
				
				// 获取内容，并高亮显示
				String body = document.get("body");
				if (body != null && body.length() > 0) {
					String lighterBody = highlighter.getBestFragment(analyzer, "body", body);
					if (lighterBody != null) {
						body = lighterBody;
					} else {
						if (body.length() > 50) {
							body = body.substring(0, 50);
						}
					}
				}
				
				SearchContent content = new SearchContent();
				content.setUrl(url);
				content.setTitle(title);
				content.setBody(body);
				contents.add(content);
			}
			
		} catch (RuntimeException e) {
			throw e;
		} finally {
			indexReader.close();
		}
		
		
		return result;
	}
	
}
