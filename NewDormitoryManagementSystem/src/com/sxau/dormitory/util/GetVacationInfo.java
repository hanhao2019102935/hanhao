package com.sxau.dormitory.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class GetVacationInfo {

	public static Map<String, String> addressResolution(String vacation) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");// 格式化时间
		//SimpleDateFormat ym = new SimpleDateFormat("yyyy-MM");
		SimpleDateFormat dd = new SimpleDateFormat("dd");
		Calendar startCalendar = Calendar.getInstance();
		Calendar endCalendar = Calendar.getInstance();
		Date date = new Date();// 获取当前时间
		startCalendar.setTime(date);
		endCalendar.setTime(date);

		String aimPlace = "";
		boolean flag = true;

		for (int i = 0; i < vacation.length() - 1; i++) {
			// charList.add(i, vacation.charAt(i));
			if (vacation.substring(i, i + 1).equals("去")) {
				aimPlace = vacation.substring(i + 1, i + 3);
			}
			// startCalendar.getTime().compareTo(endCalendar.getTime()) == 0
			if (flag) {
				if (vacation.substring(i, i + 2).equals("明天")) {
					startCalendar.add(Calendar.DATE, 1);
					flag = false;
				}
				if (vacation.substring(i, i + 2).equals("后天")) {
					startCalendar.add(Calendar.DATE, 2);
					flag = false;
				}
				if (vacation.substring(i, i + 1).equals("日") || vacation.substring(i, i + 1).equals("号")) {
					if (isNumeric(vacation.substring(i - 2, i - 1))) {
						int lengthDays = Integer.parseInt(vacation.substring(i - 2, i))
								- Integer.parseInt(dd.format(date));
						System.out.println(lengthDays);
						startCalendar.add(Calendar.DATE, lengthDays);
						flag = false;
					} else {
						startCalendar.add(Calendar.DATE, Integer.parseInt(vacation.substring(i - 1, i)));
						flag = false;
					}
				}
			} else {
				// System.out.println(i + "****" + flag);
				if (vacation.substring(i, i + 2).equals("明天")) {
					endCalendar.add(Calendar.DATE, 1);
				}
				if (vacation.substring(i, i + 2).equals("后天")) {
					endCalendar.add(Calendar.DATE, 2);
				}
				if (vacation.substring(i, i + 2).equals("游玩")) {
					int sumDays = Integer.parseInt(dd.format(startCalendar.getTime()))
							- Integer.parseInt(dd.format(date));
					endCalendar.add(Calendar.DATE, sumDays + Integer.parseInt(vacation.substring(i + 2, i + 3)) - 1);
				}
				if (vacation.substring(i, i + 1).equals("日") || vacation.substring(i, i + 1).equals("号")) {
					// System.out.println("进来了" + i);
					if (isNumeric(vacation.substring(i - 2, i - 1))) {
						int maxDays = Integer.parseInt(vacation.substring(i - 2, i))
								- Integer.parseInt(dd.format(date));
						// System.out.println("maxDays" + maxDays);
						endCalendar.add(Calendar.DATE, maxDays);
					} else {
						endCalendar.add(Calendar.DATE, Integer.parseInt(vacation.substring(i - 1, i)));
					}
				}

			}

		}

		Date startTime = startCalendar.getTime();
		Date endTime = endCalendar.getTime();
		int vacationDays = 0;
		
		Date temp = null;
		if (startTime.after(endTime)) {
			temp = startTime;
			startTime = endTime;
			endTime = temp;
		}
		
		try {
			vacationDays = daysBetween(startTime, endTime) + 1;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
//		System.out.println("目的地：" + aimPlace);
//		System.out.println("开始时间：" + sdf.format(startTime));
//		System.out.println("结束时间：" + sdf.format(endTime));
//		System.out.println("申请时间：" + sdf.format(date));
//		System.out.println("请假天数：" + vacationDays + "天");
		map.put("aimPlace", aimPlace);
		map.put("startTime", sdf.format(startTime));
		map.put("endTime", sdf.format(endTime));
		map.put("applyTime", sdf.format(date));
		map.put("vacationDays", vacationDays+"");
		return map;

	}

	public static boolean isNumeric(String str) {
		for (int i = str.length(); --i >= 0;) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	public static int daysBetween(Date smdate, Date bdate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		smdate = sdf.parse(sdf.format(smdate));
		bdate = sdf.parse(sdf.format(bdate));
		Calendar cal = Calendar.getInstance();
		cal.setTime(smdate);
		long time1 = cal.getTimeInMillis();
		cal.setTime(bdate);
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);

		return Integer.parseInt(String.valueOf(between_days));
	}

//	public static void main(String[] args) {
//
//		Map<String, String>  re = addressResolution("后天回，明天去陕西");
//		System.out.println(re);
//
//	}

}
