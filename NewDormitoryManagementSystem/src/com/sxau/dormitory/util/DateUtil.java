package com.sxau.dormitory.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	private static SimpleDateFormat sdf= new SimpleDateFormat("yyyyMMddhhmmssms");
	public static String getId(){
		Date date = new Date();
		return sdf.format(date);
	}
	
	public static String datetoString(Date date) {
		if(date!=null) {
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf.format(date);
		return dateStr;
		}
		return null;
	}
}
