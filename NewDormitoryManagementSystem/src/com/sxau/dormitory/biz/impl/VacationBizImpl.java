package com.sxau.dormitory.biz.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxau.dormitory.biz.VacationBiz;
import com.sxau.dormitory.entity.Vacation;
import com.sxau.dormitory.mapper.VacationMapper;
import com.sxau.dormitory.util.GetVacationInfo;

@Service(value = "vacationBiz")
public class VacationBizImpl implements VacationBiz {
	
	@Autowired
	private VacationMapper vacationMapper;
	
	public VacationMapper getVacationMapper() {
		return vacationMapper;
	}

	public void setVacationMapper(VacationMapper vacationMapper) {
		this.vacationMapper = vacationMapper;
	}

	@Override
	public int insertVacation(String vacationInfo,int workerid) {		
		// TODO Auto-generated method stub
		Vacation vacation = new Vacation();
		//vacationInfo处理为vacation对象
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Map<String, String> vacationMap = GetVacationInfo.addressResolution(vacationInfo);
		
		
		try {
			vacation.setAimplace(vacationMap.get("aimPlace"));
			vacation.setApplytime(sdf.parse(vacationMap.get("applyTime")));
			vacation.setDays(Integer.parseInt(vacationMap.get("vacationDays")));
			vacation.setStarttime(sdf.parse(vacationMap.get("startTime")));
			vacation.setEndtime(sdf.parse(vacationMap.get("endTime")));
			vacation.setIsvacation(1);
			vacation.setWorkerid(workerid);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return vacationMapper.insertVacation(vacation);
	}

	@Override
	public List<Vacation> selectByWorkerid(Integer workerid) {
		// TODO Auto-generated method stub
		return vacationMapper.selectByWorkerid(workerid);
	}

}
