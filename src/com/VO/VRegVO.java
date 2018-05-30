package com.VO;

import javax.servlet.http.HttpSession;

public class VRegVO {
	private String vr_owner_name;
	private String vr_state;
	private String vr_vehicle_type;
	private String vr_manufacturer;
	private String vr_model;
	private String vr_engine_number;
	private int vr_yom;
	private String vr_location;
	private float vr_price;
	private String vr_dop;
	private String pid;
	private float pre_amount;
	private String mat_date;
	private String status;
	private String U_ID;
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public float getPre_amount() {
		return pre_amount;
	}
	public void setPre_amount(float pre_amount) {
		this.pre_amount = pre_amount;
	}
	public String getMat_date() {
		return mat_date;
	}
	public void setMat_date(String mat_date) {
		this.mat_date = mat_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getVr_owner_name() {
		return vr_owner_name;
	}
	public void setVr_owner_name(String vr_owner_name) {
		this.vr_owner_name = vr_owner_name;
	}
	public String getVr_state() {
		return vr_state;
	}
	public void setVr_state(String vr_state) {
		this.vr_state = vr_state;
	}
	public String getVr_vehicle_type() {
		return vr_vehicle_type;
	}
	public void setVr_vehicle_type(String vr_vehicle_type) {
		this.vr_vehicle_type = vr_vehicle_type;
	}
	public String getVr_manufacturer() {
		return vr_manufacturer;
	}
	public void setVr_manufacturer(String vr_manufacturer) {
		this.vr_manufacturer = vr_manufacturer;
	}
	public String getVr_model() {
		return vr_model;
	}
	public void setVr_model(String vr_model) {
		this.vr_model = vr_model;
	}
	public String getVr_engine_number() {
		return vr_engine_number;
	}
	public void setVr_engine_number(String vr_engine_number) {
		this.vr_engine_number = vr_engine_number;
	}
	public int getVr_yom() {
		return vr_yom;
	}
	public void setVr_yom(int vr_yom) {
		this.vr_yom = vr_yom;
	}
	public String getVr_location() {
		return vr_location;
	}
	public void setVr_location(String vr_location) {
		this.vr_location = vr_location;
	}
	public float getVr_price() {
		return vr_price;
	}
	public void setVr_price(float vr_price) {
		this.vr_price = vr_price;
	}
	public String getVr_dop() {
		return vr_dop;
	}
	public void setVr_dop(String vr_dop) {
		this.vr_dop = vr_dop ;
	}
	
	
	
public String getU_ID() {
		return U_ID;
	}
	public void setU_ID(String u_ID) {
		U_ID = u_ID;
	}
	
	public VRegVO(String vr_owner_name, String vr_state,
			String vr_vehicle_type, String vr_manufacturer, String vr_model,
			String vr_engine_number, int vr_yom, String vr_location,
			float vr_price, String vr_dop, String pid, float pre_amount,
			String mat_date, String status, String u_ID) {
		super();
		this.vr_owner_name = vr_owner_name;
		this.vr_state = vr_state;
		this.vr_vehicle_type = vr_vehicle_type;
		this.vr_manufacturer = vr_manufacturer;
		this.vr_model = vr_model;
		this.vr_engine_number = vr_engine_number;
		this.vr_yom = vr_yom;
		this.vr_location = vr_location;
		this.vr_price = vr_price;
		this.vr_dop = vr_dop;
		this.pid = pid;
		this.pre_amount = pre_amount;
		this.mat_date = mat_date;
		this.status = status;
		this.U_ID = u_ID;
	}
	
	
	
	
	
}
