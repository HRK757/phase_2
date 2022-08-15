package com.service;
import java.util.List;

import com.bean.Classes;
import com.dao.ClassDao;
public class ClassService {
	ClassDao cd=new ClassDao();
	public String StoreClassDetails(Classes cls) {
		if(cd.storeCls(cls)>0) {
			return "Class Details Stored Successfully!!";
		}
		else {
			return "Class Details not stored";
		}
	}
	public List<Classes> findAllClassDetails() {
		return cd.findAllClass();
	}

}
