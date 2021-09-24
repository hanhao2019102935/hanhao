package com.sxau.dormitory.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
public class DateConvert implements Converter<String, Date> {
	private static SimpleDateFormat[] sdfs;
	static{
		sdfs = new SimpleDateFormat[1];		 
		sdfs[0] = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//sdfs[1] = new SimpleDateFormat("yyyy-MM");
	}
	@Override
	public Date convert(String arg0) {
		for(SimpleDateFormat sdf:sdfs){
			try {
				if(arg0!=null && !arg0.equals("")){
					return sdf.parse(arg0);
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

}
