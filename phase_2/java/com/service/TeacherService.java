package com.service;

import java.util.List;

import com.bean.Teacher;
import com.dao.TeacherDao;
public class TeacherService {
	TeacherDao td=new TeacherDao();
	public String StoreTeacherDetails(Teacher teacher) {
		if(td.storeTeacher(teacher)>0) {
			return "Teacher Details Stored Successfully!!";
		}
		else {
			return "Teacher Details not stored ";
		}
	}
	
	public List<Teacher> findAllTeacherDetails() {
		return td.findAllTeacher();
	}

}

