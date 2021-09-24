package com.sxau.dormitory.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sxau.dormitory.biz.AdminBiz;
import com.sxau.dormitory.biz.VacationBiz;
import com.sxau.dormitory.entity.Admin;
import com.sxau.dormitory.entity.Vacation;


@Controller
@RequestMapping(value="vacation")
public class VacationController {
	@Autowired
	private VacationBiz vacationBiz;
	@Autowired
	private AdminBiz adminBiz;

	public VacationBiz getVacationBiz() {
		return vacationBiz;
	}

	public void setVacationBiz(VacationBiz vacationBiz) {
		this.vacationBiz = vacationBiz;
	}
	
	
	public AdminBiz getAdminBiz() {
		return adminBiz;
	}

	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}

	@RequestMapping(value="insertVacation")
	//@ResponseBody
	public String insertVacation(String vacationInfo, int workerid){		 
		vacationBiz.insertVacation(vacationInfo,workerid);
		System.out.println(vacationInfo + "******************************************************" + workerid);
		//return "myVacationList";
		return "redirect:/myVacationList.html";
	}
	
	@RequestMapping(value="showMyVacation")
	@ResponseBody
	public List<Vacation> showMyVacation(int userid){
		Admin admin = adminBiz.selectByPrimaryKey(userid);
		 return vacationBiz.selectByWorkerid(admin.getWorkerid());
	}

}
