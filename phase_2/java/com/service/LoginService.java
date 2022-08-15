package com.service;
import com.bean.Login;

public class LoginService {
	public String checkLoginDails(Login ll) {
		if(ll.getUsername().equals("Himaja")&& ll.getPassword().equals("hima123")) {
			return "success";
		}else {
			return "failure";
		}
	}

}
