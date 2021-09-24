package com.sxau.dormitory.biz.impl;


import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxau.dormitory.biz.AdminBiz;

import com.sxau.dormitory.entity.Admin;
import com.sxau.dormitory.mapper.AdminMapper;


@Service(value = "adminBiz")
public class AdminBizImpl implements AdminBiz {
	@Autowired
	private AdminMapper adminMapper;

	public AdminMapper getAdminMapper() {
		return adminMapper;
	}

	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}

//	@Override
//	public int insertAdmin(Admin admin) {
//		adminMapper.insertAdmin(admin);
//		return 0;
//	}
//
//	@Override
//	public Admin selectLoginAdmin(Map<String, String> paramMap) {
//		// TODO Auto-generated method stub
//		Admin admin = adminMapper.selectLoginAdmin(paramMap);
//		return admin;
//	}
//
//	@Override
//	public int updateByAdminId(Admin record) {
//		return adminMapper.updateByAdminId(record);
//	}
//
//	@Override
//	public List<Admin> selectAdminByBuildingId(int buildingId) {
//		// TODO Auto-generated method stub
//		return adminMapper.selectByBuildingId(buildingId);
//	}
//
//	@Override
//	public List<Admin> selectAllAdmin() {
//		// TODO Auto-generated method stub
//		return adminMapper.selectAllAdmin();
//	}

	@Override
	public Admin selectByUserNameAndPassword(Map<String, String> admin) {
		// TODO Auto-generated method stub
		Admin loginAdmin = adminMapper.selectByUserNameAndPassword(admin);

		return adminMapper.selectByUserNameAndPassword(admin);
	}

	@Override
	public List<Admin> selectByUser(Admin admin) {
		// TODO Auto-generated method stub
		List<Admin> listAdmin = adminMapper.selectByUser(admin);
		return listAdmin;
	}

	@Override
	public List<Admin> importUser(Admin admin) {
		// TODO Auto-generated method stub
		List<Admin> listAdmin = adminMapper.selectByUser(admin);
		return listAdmin;
	}

	@Override
	public Admin selectByPrimaryKey(Integer userid) {
		// TODO Auto-generated method stub
		return adminMapper.selectByPrimaryKey(userid);
	}

}
