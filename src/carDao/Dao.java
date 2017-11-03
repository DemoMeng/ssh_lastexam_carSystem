package carDao;

import java.util.List;

import carEntity.SaleCars;


public interface Dao {
	
	public List<SaleCars> queryAllCar();
	public Integer deleteCar(String id[]);
	public Integer deleteSigleCar(String id);
	public Integer addCar(SaleCars saleCars);
	public List<SaleCars> queryWithCondition(Integer condition1,Integer condition2);
	

}
