package com.sxau.dormitory.biz;

import java.util.List;

import com.sxau.dormitory.entity.Vacation;

public interface VacationBiz {
	//请假
	public int insertVacation(String vacation, int workerid);
	
	public List<Vacation> selectByWorkerid(Integer workerid);
}
