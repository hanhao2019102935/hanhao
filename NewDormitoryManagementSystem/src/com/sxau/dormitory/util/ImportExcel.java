package com.sxau.dormitory.util;

import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.util.CellRangeAddress;

import com.sxau.dormitory.entity.Admin;

public class ImportExcel {
	// 导出学生
	public static HSSFWorkbook importAdminExcel(List<Admin> adminList) {
		int i = 0;
		HSSFWorkbook wkb = new HSSFWorkbook();
		HSSFSheet sheet = wkb.createSheet("员工信息表");
		// 设置单元格式
		HSSFCellStyle setBorder = wkb.createCellStyle();
		// 设置字体
		HSSFFont font = wkb.createFont();
		// 创建第一行
		HSSFRow row1 = sheet.createRow(0);
		HSSFCell cell1 = row1.createCell(0);
		cell1.setCellValue("员工信息");
		sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 7));
		setBorder.setAlignment(HorizontalAlignment.CENTER);
		font.setFontName("黑体");
		// 应用样式
		setBorder.setFont(font);
		cell1.setCellStyle(setBorder);
		// 创建第二行
		HSSFRow row2 = sheet.createRow(1);
		row2.createCell(0).setCellValue("序号");
		row2.createCell(1).setCellValue("用户名");
		row2.createCell(2).setCellValue("工号");
		row2.createCell(3).setCellValue("职员类别");
		row2.createCell(4).setCellValue("姓名");
		row2.createCell(5).setCellValue("年龄");
		row2.createCell(6).setCellValue("性别");
		row2.createCell(7).setCellValue("学历");

		// 创建第三行
		for (Admin admin : adminList) {
			HSSFRow row3 = sheet.createRow(2 + i);
			row3.createCell(0).setCellValue(++i);
			row3.createCell(1).setCellValue(admin.getUsername());
			row3.createCell(2).setCellValue(admin.getWorkerid());
			if (admin.getUsertype() == 0) {
				row3.createCell(3).setCellValue("管理员");
			} else {
				row3.createCell(3).setCellValue("普通员工");
			}
			row3.createCell(4).setCellValue(admin.getName());
			row3.createCell(5).setCellValue(admin.getAge());

			if (admin.getSex() == 0) {
				row3.createCell(6).setCellValue("男");
			} else {
				row3.createCell(6).setCellValue("女");
			}
			if (admin.getEducation() == 0) {
				row3.createCell(7).setCellValue("博士研究生");
			} else if(admin.getEducation() == 1){
				row3.createCell(7).setCellValue("硕士研究生");
			} else if(admin.getEducation() == 2){
				row3.createCell(7).setCellValue("本科");
			} else if(admin.getEducation() == 3){
				row3.createCell(7).setCellValue("大专");
			} else{
				row3.createCell(7).setCellValue("高中");
			}

		}
		return wkb;
	}

	
}
