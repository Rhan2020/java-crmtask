package org.crm.model;

import java.util.UUID;

import easy.util.UUIDTool;

public class Customer {
	private String id;
	private String name;
	private int source;
	private int status;
	private String straffName;
	private String contactTime;
	private String signTime;
	private String money;
	private String address;
	private String phone;
	public Customer(){
		this.id=UUID.randomUUID().toString().replace("-", "");
	}
	
	public Customer(String name, int source, int status, String straffName, String contactTime,
			String signTime, String money, String address, String phone) {
		super();
		this.id=UUID.randomUUID().toString().replace("-", "");
		this.name = name;
		this.source = source;
		this.status = status;
		this.straffName = straffName;
		this.contactTime = contactTime;
		this.signTime = signTime;
		this.money = money;
		this.address = address;
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", source=" + source + ", status=" + status + ", straffName="
				+ straffName + ", contactTime=" + contactTime + ", signTime=" + signTime + ", money=" + money
				+ ", address=" + address + ", phone=" + phone + "]";
	}

	public Customer(String id, String name, int source, int status, String straffName, String contactTime,
			String signTime, String money, String address, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.source = source;
		this.status = status;
		this.straffName = straffName;
		this.contactTime = contactTime;
		this.signTime = signTime;
		this.money = money;
		this.address = address;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSource() {
		return source;
	}
	public void setSource(int source) {
		this.source = source;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getStraffName() {
		return straffName;
	}
	public void setStraffName(String straffName) {
		this.straffName = straffName;
	}
	public String getContactTime() {
		return contactTime;
	}
	public void setContactTime(String contactTime) {
		this.contactTime = contactTime;
	}
	public String getSignTime() {
		return signTime;
	}
	public void setSignTime(String signTime) {
		this.signTime = signTime;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
