package org.crm.ctrls;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.crm.model.Customer;
import org.crm.service.MainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONObject;
import utils.PageData;

@Controller
@RequestMapping(value="/customer")
public class MainCtrl {
	@Resource(name="MainService")
	MainService service;
	@Resource
	HttpServletRequest request;
	
	
	
	
	@ResponseBody
	@RequestMapping("/showAll")
	public List<Customer> showAll()throws Exception {
		List<Customer> list=new ArrayList<Customer>();
		list=service.executAll();
		return list;
	}
	@RequestMapping("/upload")
	public ModelAndView upload(@RequestParam("file") CommonsMultipartFile[] files,HttpServletRequest request)throws Exception{  
        System.out.println("enter!");
        String furl=null;
            if(!files[0].isEmpty()){  
                int pre = (int) System.currentTimeMillis();  
                
            	String path=request.getSession().getServletContext().getRealPath("upload");
                //拿到输出流，同时重命名上传的文件  
            	File f=new File(path+"\\" + new Date().getTime() + files[0].getOriginalFilename());
            	furl=f.getAbsolutePath();
                FileOutputStream os = new FileOutputStream(f);  
                //拿到上传文件的输入流  
                FileInputStream in = (FileInputStream) files[0].getInputStream();  
                //以写字节的方式写文件 
                int b = 0;
                while((b=in.read()) != -1){  
                    os.write(b);  
                }
                os.flush();
                os.close();
                in.close();
               
                
                
                FileInputStream fis = new FileInputStream(new File(furl));
    			HSSFWorkbook wb = new HSSFWorkbook(fis);
    			HSSFSheet sheet = wb.getSheetAt(0); 					//sheet 从0开始
    			//取得该sheet的行数
    			int rowNum = sheet.getLastRowNum() + 1; 	
    			
    			for (int i = 0; i < rowNum; i++) {
    				//获取当前行
    				HSSFRow row = sheet.getRow(i);
    				//获取该行的列数
    				int cellNum = row.getLastCellNum(); 
    				
    				//新建一个待添加的客户
    				Customer c =new Customer();
    				
    				//以下是客户实例化操作
    				HSSFCell cell0 = row.getCell(0);
    				c.setId(cell0.getStringCellValue());
    				
    				HSSFCell cell1 = row.getCell(1);
    				c.setName(cell1.getStringCellValue());
    				
    				HSSFCell cell2 = row.getCell(2);
    				c.setSource((int)cell2.getNumericCellValue());
    				
    				HSSFCell cell3 = row.getCell(3);
    				c.setSource((int)cell3.getNumericCellValue());
    				
    				HSSFCell cell4 = row.getCell(4);
    				c.setStraffName(cell4.getStringCellValue());
    				
    				HSSFCell cell5 = row.getCell(5);
    				c.setContactTime(String.valueOf(cell5.getNumericCellValue()));
    				
    				HSSFCell cell6 = row.getCell(6);
    				c.setSignTime(String.valueOf(cell6.getNumericCellValue()));
    				
    				HSSFCell cell7 = row.getCell(7);
    				c.setMoney(String.valueOf(cell7.getNumericCellValue()));
    				
    				HSSFCell cell8 = row.getCell(8);
    				c.setAddress(cell8.getStringCellValue());
    				
    				HSSFCell cell9 = row.getCell(9);
    				if (cell9.getCellType() ==HSSFCell.CELL_TYPE_STRING ){
    					c.setPhone(cell9.getStringCellValue());
					}else if(cell9.getCellType() ==HSSFCell.CELL_TYPE_NUMERIC){
						c.setPhone(String.valueOf(cell9.getNumericCellValue()));
					}
    				System.out.println(c.toString());
    				
    				//添加用户操作
    				service.addCustomer(c);
    				
    			}
    			wb.close();
    			fis.close();
                
            }  
        return new ModelAndView("redirect:../tb1.jsp");  
    }  
	
	@ResponseBody
	@RequestMapping("/showByStatus")
	public List<Customer> showByStatus(HttpServletRequest req)throws Exception {
		JSONObject jo=new JSONObject();
		PageData pd=new PageData(req);
		String status=pd.getString("status");
		Map map=new HashMap();
		map.put("status", status);
		List<Customer> list=new ArrayList<Customer>();
		if(service.executByStatus(map)==null){
			return null;
		}else{
			list=service.executByStatus(map);
		}
		System.out.println(list.toString());
		return list;
	}
	@ResponseBody
	@RequestMapping("/delete")
	public JSONObject deleteById(HttpServletRequest req)throws Exception {
		JSONObject jo=new JSONObject();
		PageData pd=new PageData(req);
		
		String allid=pd.getString("m");
		String acceptid[]= allid.split(",");
		
		jo.put("success",true);
		for(int i=0;i<acceptid.length;i++){
			System.out.println(acceptid[i]);
			Map map=new HashMap();
			map.put("id", acceptid[i]);
			boolean flag=service.deleteById(map);
			
			if(!flag){
				jo.put("success",false);
			}
			map.clear();
		}
		return jo;
	}
	
	@ResponseBody
	@RequestMapping("/showByName")
	public List<Customer> showByName(HttpServletRequest req)throws Exception {
		JSONObject jo=new JSONObject();
		PageData pd=new PageData(req);
		String name=pd.getString("name");
		Map map=new HashMap();
		map.put("name", name);
		List<Customer> list=new ArrayList<Customer>();
		if(service.executByName(map)==null){
			return null;
		}else{
			list=service.executByName(map);
		}
		System.out.println(list.toString());
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/addOne")
	public JSONObject addOne(HttpServletRequest req)throws Exception {
		JSONObject jo=new JSONObject();
		PageData pd=new PageData(req);
		String [] temp={pd.getString("name"),pd.getString("source"),pd.getString("status"),pd.getString("userID"),pd.getString("contactTime"),pd.getString("signTime"),pd.getString("money"),pd.getString("address"),pd.getString("phone"),};
		if(temp.length<9){
			jo.put("success",false);
			return jo;
		}
		for(int i=0;i<temp.length;i++){
			if(temp[i].equals("")||temp[i]==null){
				jo.put("success",false);
				return jo;
			}
		}
		Customer addCustomer =new Customer(temp[0],Integer.valueOf(temp[1]),Integer.valueOf(temp[2]),temp[3],temp[4],temp[5],temp[6],temp[7],temp[8]);
		System.out.println(addCustomer.toString());
		boolean flag=service.addCustomer(addCustomer);
		if(flag){
			jo.put("success",true);
		}
		return jo;
	}
	
	
	@ResponseBody
	@RequestMapping("/updateStepOne")
	public ModelAndView updateStepOne(HttpServletRequest req )throws Exception {
		PageData pd=new PageData(req);
		String uid=pd.getString("m");
		ModelAndView mv = new ModelAndView();
		pd = service.showOne(uid);
		mv.addObject("pd", pd);
		mv.setViewName("edit");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/updateStepTwo")
	public JSONObject updateStepTwo(HttpServletRequest req )throws Exception {
		JSONObject jo=new JSONObject();
		PageData pd=new PageData(req);
		String [] temp={pd.getString("name"),pd.getString("source"),pd.getString("status"),pd.getString("straffName"),pd.getString("contactTime"),pd.getString("signTime"),pd.getString("money"),pd.getString("address"),pd.getString("phone"),};
		if(temp.length<9){
			jo.put("success",false);
			return jo;
		}
		for(int i=0;i<temp.length;i++){
			if("".equals(temp[i])||temp[i]==null){
				jo.put("success",false);
				return jo;
			}
		}
		Customer updateCustomer =new Customer(pd.getString("id"),temp[0],Integer.valueOf(temp[1]),Integer.valueOf(temp[2]),temp[3],temp[4],temp[5],temp[6],temp[7],temp[8]);
		boolean flag=service.updateOne(updateCustomer);
		if(flag){
			jo.put("success",true);
		}
		return jo;
	}
	@ResponseBody
	@RequestMapping("/outExcel")
	public JSONObject outExcel(HttpServletRequest req )throws Exception {
		PageData pd=new PageData(req);
		String m=pd.getString("m");
		
		//分割字符串，把需要導出的用戶ID存入數組中
		String idList []=m.split(",");
		List list=new ArrayList();
		Map map=new HashMap();
		
		//批量查詢并存入List中
		for(int i=0;i<idList.length;i++){
			
			map.put("id", idList[i]);
			list.add(service.executById(map).get(0));
			map.clear();
		}
		
		
		Customer [] cus=new Customer[idList.length];
		
		for(int i=0;i<cus.length;i++){
			Customer temp=new Customer();
			
			//把List类型强转为Map，便于之后对客户的实例化操作
			Map c=(Map)list.get(i);
			temp.setId(c.get("id").toString());
			temp.setAddress(c.get("address").toString());
			temp.setContactTime(c.get("contactTime").toString());
			temp.setMoney(c.get("money").toString());
			temp.setName(c.get("name").toString());
			temp.setPhone(c.get("phone").toString());
			temp.setSource(Integer.valueOf(c.get("source").toString()));
			temp.setStatus(Integer.valueOf(c.get("status").toString()));
			temp.setSignTime(c.get("signTime").toString());
			temp.setStraffName(c.get("straffName").toString());
			System.out.println(temp.toString());
			
			cus[i]=temp;
			temp=null;
			c.clear();
		}
		
		String path=request.getSession().getServletContext().getRealPath("upload");
		long dat=new Date().getTime();
		File file=new File(path+"\\" + dat + ".xls");
		

		FileOutputStream fos = new FileOutputStream(file);
		// 创建Excel的工作书册 Workbook,对应到一个excel文档
		HSSFWorkbook wb = new HSSFWorkbook();
		// 创建Excel的工作sheet,对应到一个excel文档的tab
		HSSFSheet sheet = wb.createSheet("sheet1");
		
		// 设置excel每列宽度
		for(int i=0;i<10;i++){
			sheet.setColumnWidth(i, 4000);
		}
		 // 创建第一行
		for(int i=0;i<cus.length;i++){
			HSSFRow row = sheet.createRow(i);
			row.setHeight((short) 500);// 设定行的高度
			
			
			// 第一行的第一个单元格
			HSSFCell cell = row.createCell(0);
			cell.setCellValue(cus[i].getId());
			
			HSSFCell cell1 = row.createCell(1);
			cell1.setCellValue(cus[i].getName());
			
			HSSFCell cell2 = row.createCell(2);
			cell2.setCellValue(cus[i].getSource());
			
			HSSFCell cell3 = row.createCell(3);
			cell3.setCellValue(cus[i].getStatus());
			
			HSSFCell cell4 = row.createCell(4);
			cell4.setCellValue(cus[i].getStraffName());
			
			HSSFCell cell5 = row.createCell(5);
			cell5.setCellValue(cus[i].getContactTime());
			
			HSSFCell cell6 = row.createCell(6);
			cell6.setCellValue(cus[i].getSignTime());
			
			HSSFCell cell7 = row.createCell(7);
			cell7.setCellValue(cus[i].getMoney());
			
			HSSFCell cell8 = row.createCell(8);
			cell8.setCellValue(cus[i].getAddress());
			
			HSSFCell cell9 = row.createCell(9);
			cell9.setCellValue(cus[i].getPhone());
			
		}
		
		wb.write(fos);
		wb.close();
		fos.close();
		
		JSONObject jo=new JSONObject();
		jo.put("success", dat);
		return jo;
	}
	public void setService(MainService service) {
		this.service = service;
	}
}
