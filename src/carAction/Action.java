package carAction;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import carEntity.SaleCars;
import carServices.Services;

public class Action extends ActionSupport implements ModelDriven<SaleCars> {
	
	private Services services;
	public Services getServices() {
		return services;
	}
	public void setServices(Services services) {
		this.services = services;
	}
	
	private String[] deleteId;
	public void setDeleteId(String[] deleteId) {
		this.deleteId = deleteId;
	}
	
	private String deleteSigleId;
	public void setDeleteSigleId(String deleteSigleId) {
		this.deleteSigleId = deleteSigleId;
	}

	private SaleCars saleCars;
	public void setSaleCars(SaleCars saleCars) {
		this.saleCars = saleCars;
	}
	
	private Integer condition1;
	private Integer condition2;
	public void setCondition1(Integer condition1) {
		this.condition1 = condition1;
	}
	public void setCondition2(Integer condition2) {
		this.condition2 = condition2;
	}
	
	
	public String queryAllCar(){
		if(condition1 != null && condition2 !=null){
			List<SaleCars> list = services.queryWithCondition(condition1, condition2); 
			ActionContext ac = ActionContext.getContext();
			ac.put("list", list);
		}
		else{
			List<SaleCars> list = services.queryAllCar();
			ActionContext ac = ActionContext.getContext();
			ac.put("list", list);
		}
		return "queryOk";
	}
	public String addCar(){
	
		String returnValue = services.addCar(saleCars);
		
		return returnValue;
	}
	public String addCar_jsp(){
		return "go_addProduct_jsp";
	}
	
	public String deleteCar(){
		
		System.out.println("删除的单个ID为："+deleteSigleId);
		
		String returnValue="";
		
		if(deleteId==null){
			System.out.println("执行删除单个");
			returnValue = services.deleteSingleCar(deleteSigleId);
		}else{
			System.out.println("执行删除多个");
			returnValue = services.deleteCar(deleteId);
		}
			
		
		return returnValue;
	}
	
	
	

	@Override
	public SaleCars getModel() {
		this.saleCars=new SaleCars();
		return saleCars;
	}
	
	/*public void validate() {
		if("大傻逼".contains(saleCars.())){
			addFieldError(saleCars.getCarName(), "名字有错误！！");
		}
	
	
	}*/
	

}
