package com.VO;

public class UserDirectPayVO {
	private String policy_id;
	private String amount;
	private String pay;
	private String Contact_no;
	public String getPolicy_id() {
		return policy_id;
	}
	public void setPolicy_id(String policy_id) {
		this.policy_id = policy_id;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getContact_no() {
		return Contact_no;
	}
	public void setContact_no(String contact_no) {
		Contact_no = contact_no;
	}
	public UserDirectPayVO(String policy_id, String amount, String pay,
			String contact_no) {
		super();
		this.policy_id = policy_id;
		this.amount = amount;
		this.pay = pay;
		Contact_no = contact_no;
	}




}
