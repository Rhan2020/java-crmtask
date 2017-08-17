package org.crm.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.crm.dao.DaoSupport;
import org.crm.model.Customer;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import utils.PageData;

@Service("MainService")
public class MainService {
	@Resource(name="daoSupport")
	private DaoSupport dao;

	public List<Customer> executAll()throws Exception {
		List list=dao.selectAll("Customer.select_all");
		if(list==null||list.isEmpty()){
			return null;
		}
		return list;
	}

	public void setDao(DaoSupport dao) {
		this.dao = dao;
	}
	public boolean addCustomer(Customer customer)throws Exception {
		int a=(int) dao.save("Customer.insert", customer);
		if(a==1){
			return true;
		}
		return false;
	}

	public List<Customer> executByStatus(Map map) throws Exception {
		List list=(List) dao.findForList("Customer.select_status",map);
		if(list==null||list.isEmpty()){
			return null;
		}
		return list;
	}

	public List<Customer>  executByName(Map map) throws Exception {
		List list=(List) dao.findForList("Customer.select_name",map);
		if(list==null||list.isEmpty()){
			return null;
		}
		return list;
	}

	public List<Customer> executById(Map map) throws Exception {
		// TODO Auto-generated method stub
		List list=(List) dao.findForList("Customer.select_id",map);
		if(list==null||list.isEmpty()){
			return null;
		}
		return list;
	}
	public boolean deleteById(Map map) throws Exception {
		int a=(int) dao.save("Customer.delete", map);
		if(a==1){
			return true;
		}
		return false;
	}

	
	
	public PageData showOne(String id) throws Exception{
		PageData pd1 = (PageData)dao.findForObject("Customer.select_one", id);
		return pd1;
	}

	public boolean updateOne(Customer updateCustomer) throws Exception {
		Map map =new HashMap();
		map.put("id", updateCustomer.getId());
		dao.save("Customer.delete", map);
		int a=(int) dao.save("Customer.insert", updateCustomer);
		if(a==1){
			return true;
		}
		return false;
	}

}
