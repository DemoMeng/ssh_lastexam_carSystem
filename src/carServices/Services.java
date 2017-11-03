package carServices;

import java.util.List;

import carEntity.SaleCars;

public interface Services {

	
	public List<SaleCars> queryAllCar();
	public String deleteCar(String id[]);
	public String deleteSingleCar(String id);
	public String addCar(SaleCars saleCars);
	public List<SaleCars> queryWithCondition(Integer condition1,Integer condition2);
}
