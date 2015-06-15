/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-23 下午02:14:13
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;
import javax.imageio.ImageIO;
/**
 * @ClassName: makeCertPic
 * @Description: TODO(创建验证码)
 * @author sunJingYang
 * @date 2014-9-23 下午02:14:13
 * 
 */
public class makeCertPic {

	private static char mapTable[] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
			'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8',
			'9' };

	/**
	 * 
	 * @Title: getCertPic
	 * @Description: TODO(生成一张验证码图并写入页面，返回验证码字符串)
	 * @author sunJingYang
	 * @date 2014-9-23 下午04:10:35
	 * @param width
	 * @param height
	 * @param os
	 * @return
	 */
	public static String getCertPic(int width, int height, OutputStream os) {
		if (width <= 0)
			width = 60;
		if (height <= 0)
			height = 20;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 获取图形上下文
		Graphics g = image.getGraphics();
		// 设定背景色
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, width, height);
		// 画边框
		g.setColor(Color.black);
		g.drawRect(0, 0, width - 1, height - 1);
		// 取随机产生的认证码
		String strEnsure = "";
		// 4代表4位验证码,如果要生成更多位的认证码,则加大数值
		for (int i = 0; i < 4; ++i) {
			strEnsure += mapTable[(int) (mapTable.length * Math.random())];
		}
		// 　　将认证码显示到图像中,如果要生成更多位的认证码,增加drawString语句
		g.setColor(Color.black);
		g.setFont(new Font("Atlantic Inline", Font.PLAIN, 18));
		String str = strEnsure.substring(0, 1);
		g.drawString(str, 8, 17);
		str = strEnsure.substring(1, 2);
		g.drawString(str, 20, 15);
		str = strEnsure.substring(2, 3);
		g.drawString(str, 35, 18);
		str = strEnsure.substring(3, 4);
		g.drawString(str, 45, 15);
		// 随机产生10个干扰点
		Random rand = new Random();
		for (int i = 0; i < 10; i++) {
			int x = rand.nextInt(width);
			int y = rand.nextInt(height);
			g.drawOval(x, y, 1, 1);
		}
		// 释放图形上下文
		g.dispose();
		try {
			// 输出图像到页面
			ImageIO.write(image, "JPEG", os);
		} catch (IOException e) {
			return "";
		}

		return strEnsure;
	}
}
