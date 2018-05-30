package com.VO;

public class UserVO {
	private String username;
    private String password;
   
	public String getUserName() {
		return username;
	}
	public void setUserName(String name) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public UserVO(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		
	}
}
