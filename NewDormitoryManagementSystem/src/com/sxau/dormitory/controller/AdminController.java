package com.sxau.dormitory.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sxau.dormitory.biz.AdminBiz;
import com.sxau.dormitory.entity.Admin;
import com.sxau.dormitory.util.ImportExcel;




@Controller
@RequestMapping(value="admin")
public class AdminController {
	@Autowired
	private AdminBiz adminBiz;
	
	public AdminBiz getAdminBiz() {
		return adminBiz;
	}
	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}
	
	@RequestMapping(value="login")	
	@ResponseBody
	public Admin login(String username,String password,HttpSession session,HttpServletResponse response){
		 Map<String,String> adminMap = new HashMap<String,String>();
		 adminMap.put("username",username);
		 adminMap.put("password",password);
		 Admin admin = adminBiz.selectByUserNameAndPassword(adminMap);
		 if(admin != null) {
			 Cookie cookie = new Cookie("userid",admin.getUserid().toString());//创建新cookie
		     cookie.setMaxAge(20 * 60);// 设置存在时间为5分钟
		     cookie.setPath("/");//设置作用域
		     response.addCookie(cookie);
		 }
		 
//	     
//		 if(admin == null) {
//			 return null;
//		 }
		 //session.setAttribute("adminInfo", admin);
		 return admin;
	}
	
	@RequestMapping(value="selectAdmin")
	@ResponseBody
	public List<Admin> selectAdmin(Admin admin,HttpSession session){
		 List<Admin> adminList = adminBiz.selectByUser(admin);
		 return adminList;
	}
	
	@RequestMapping(value="importAdmin")
	public void importAdmin(Admin admin,HttpServletResponse response){		 
		 try {
				// 输出Excel文件
				OutputStream output = response.getOutputStream();
				response.reset();
				response.setHeader("Content-disposition", "attachment; filename=personal.xls");
				response.setContentType("application/msexcel");
				List<Admin> adminList = adminBiz.selectByUser(admin);
				HSSFWorkbook wkb = ImportExcel.importAdminExcel(adminList);
				wkb.write(output);
				output.flush();
				output.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	@RequestMapping(value="selectByUserId")
	@ResponseBody
	public Admin selectAdmin(int userid){
		System.out.println("****************************************************************************" + userid);
		 Admin admin = adminBiz.selectByPrimaryKey(userid);
		 return admin;
	}
	
	
	
	
	
	
//	@Autowired
//	private BuildingBiz buildingBiz;
//	@Autowired
//	private StudentBiz studentBiz;
//	
	
//	
//	public BuildingBiz getBuildingBiz() {
//		return buildingBiz;
//	}
//	public void setBuildingBiz(BuildingBiz buildingBiz) {
//		this.buildingBiz = buildingBiz;
//	}
//	
//	public StudentBiz getStudentBiz() {
//		return studentBiz;
//	}
//	public void setStudentBiz(StudentBiz studentBiz) {
//		this.studentBiz = studentBiz;
//	}
//	
//	//宿管注册的方法
//	@RequestMapping(value="addAdmin")
//	public String addBadmin(Admin admin,HttpSession session){
//		admin.setAdminphone(admin.getAdminphone());
//		admin.setAdminpassword(admin.getAdminpassword());
//		admin.setAdminname(admin.getAdminname());
//		admin.setAdminsex(admin.getAdminsex());
//		admin.setBuildingid(admin.getBuildingid());
//		adminBiz.insertAdmin(admin);
//		session.setAttribute("admin", admin);
//		return "index";
//	}
//	
//	//宿管登录的方法
//	@RequestMapping(value="login")
//	public String login(String username,String password,String yzm,int imgId,HttpSession session){
//		if(
//				((imgId==1)&&(yzm.equals("dzr2")))||
//				((imgId==2)&&(yzm.equals("t73y")))||
//				((imgId==3)&&(yzm.equals("lwhy")))||
//				((imgId==4)&&(yzm.equals("pqiu")))||
//				((imgId==5)&&(yzm.equals("ucmu")))||
//				((imgId==6)&&(yzm.equals("7wc5")))||
//				((imgId==7)&&(yzm.equals("jfa7")))||
//				((imgId==8)&&(yzm.equals("3e8b")))||
//				((imgId==9)&&(yzm.equals("97b8")))||
//				((imgId==10)&&(yzm.equals("9m71")))
//			){
//			
//			String Manager = "^[\\u4e00-\\u9fa5]*$";
//			String admin = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,1,2,5-9])|(177))\\d{8}$";
//			//String student = "^((20[0-9]))\\d{8}$";
//			
//			Matcher m = Pattern.compile(Manager).matcher(username);
//			Matcher a = Pattern.compile(admin).matcher(username);
//			//Matcher s = Pattern.compile(student).matcher(username);
//			
//			if(m.find()){//匹配如果输入的用户名是名字
//				Map<String, String> paramMap = new HashMap<String, String>();
//				paramMap.put("managerPhone", username);
//				paramMap.put("managerPassword", password);
//				String respManager = "manager";
//				session.setAttribute("resp", respManager);
//				/*Manager loginUser = managerBiz.selectLoginAdmin(paramMap);
//			if(loginUser==null){
//				return "login";
//			}else{
//				Building currentBuilding = buildingBiz.selectByBuildingId(loginUser.getBuildingid());
//				session.setAttribute("admin", loginUser);
//				session.setAttribute("currentBuilding", currentBuilding);
//				String guidHtml = "adminGuid.html";
//				session.setAttribute("guidHtml", guidHtml);
//				return "index";
//			}	*/
//			}else if(a.find()){          //匹配如果输入的用户名是手机号码
//				Map<String, String> paramMap = new HashMap<String, String>();
//				paramMap.put("adminPhone", username);
//				paramMap.put("adminPassword", password);
//				String respAdmin = "admin";
//				session.setAttribute("resp", respAdmin);
//				Admin loginUser = adminBiz.selectLoginAdmin(paramMap);
//				if(loginUser==null){
//					return "login";
//				}else{
//					Building currentBuilding = buildingBiz.selectByBuildingId(loginUser.getBuildingid());
//					session.setAttribute("admin", loginUser);
//					session.setAttribute("currentBuilding", currentBuilding);
//					String guidHtml = "adminGuid.html";
//					session.setAttribute("guidHtml", guidHtml);
//					return "index";
//				}			
//			}else{  //匹配如果输入的用户名是学号
//				Map<String, String> paramMap = new HashMap<String, String>();
//				paramMap.put("studyid", username);
//				paramMap.put("studentpassword", password);
//				String respStu = "student";
//				session.setAttribute("resp", respStu);
//				Student loginUser = studentBiz.selectLoginStudent(paramMap);
//				if(loginUser==null){
//					return "login";
//				}else{
//					session.setAttribute("student", loginUser);
//					String guidHtml = "studentGuid.html";
//					session.setAttribute("guidHtml", guidHtml);
//					Student loginStudent = studentBiz.selectByStudentId(loginUser.getStudentid());
//					session.setAttribute("loginStudent", loginStudent);
//					return "index";
//				}
//			}
//			return "login";		
//		}else{
//			return "login";		
//		}
//	}
//	
//	//宿管修改信息的方法
//	@RequestMapping(value="updateAdminInfo")
//	public String updateAdminInfo(Admin admin,HttpSession session){
//		int i = adminBiz.updateByAdminId(admin);
//		Building currentBuilding = buildingBiz.selectByBuildingId(admin.getBuildingid());
//		session.setAttribute("admin", admin);
//		session.setAttribute("currentBuilding", currentBuilding);
//		return "selfInfo";
//	}
//	
//	
//	// 宿管修改密码的方法
//	@RequestMapping(value = "updatePassword")
//	public String updatePassword(Admin record,HttpSession session) {
//		Admin admin = (Admin) session.getAttribute("admin");
//		record.setAdminname(admin.getAdminname());
//		record.setAdminpassword(record.getAdminpassword());
//		record.setAdminphone(admin.getAdminphone());
//		record.setAdminsex(admin.getAdminsex());
//		record.setBuildingid(admin.getBuildingid());
//		adminBiz.updateByAdminId(record);
//		String msg = "密码修改成功！";
//		session.setAttribute("msg", msg);
//		return "message";
//	}
//	//查询宿管信息根据BuildingId
//	@RequestMapping(value = "selectAllAdmin")
//	@ResponseBody
//	public List<Admin> selectAllAdmin(){
//		System.out.println(adminBiz.selectAllAdmin());
//		return adminBiz.selectAllAdmin();		
//	}
//	@Test
//	public void a1() {
//		Scanner sc = new Scanner(System.in);
//		String input = sc.next();
//		String regex = "^((20[0-9]))\\d{8}$";
//		Matcher m = Pattern.compile(regex).matcher(input);
//		System.out.println(m.find());
//		sc.close();
//	}
}
