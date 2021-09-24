package com.sxau.dormitory.biz;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.sxau.dormitory.entity.Admin;

public interface AdminBiz {
//	//宿管注册的方法
//	public int insertAdmin(Admin admin);
//	//宿管登录的方法
//	public Admin selectLoginAdmin(Map<String, String> paramMap);
//	//宿管修改信息的方法
//	public int updateByAdminId(Admin admin);
//	//根据buildingID查询宿管的信息
//	public List<Admin> selectAdminByBuildingId(int buildingId);
//	//查询所有Admin的方法
//	public List<Admin> selectAllAdmin();

	//登录方法
	public Admin selectByUserNameAndPassword(Map<String, String> admin);
	
	//根据条件查询
	public List<Admin> selectByUser(Admin admin);
	
	public List<Admin> importUser(Admin admin);
	
	Admin selectByPrimaryKey(Integer userid);
}
