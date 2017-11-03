package carServices;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import carDao.Dao;
import carEntity.SaleCars;

@Transactional
public class ServicesImp implements Services {
	
	private Dao dao;
	public Dao getDao() {
		return dao;
	}
	public void setDao(Dao dao) {
		this.dao = dao;
	}
	

	@Override
	public List<SaleCars> queryAllCar() {
		List<SaleCars> list = dao.queryAllCar();
		return list;
	}

	@Override
	public String deleteCar(String[] id) {
		
		String returnValue = "deleteFailed";
		
		if(dao.deleteCar(id)==1){
			returnValue = "deleteSuccess";
		}
		return returnValue;
	}

	@Override
	public String addCar(SaleCars saleCars) {
		Integer i = dao.addCar(saleCars);
		String returnValue = "addFailed";
		if(i != null){
			returnValue="addSuccess";
		}
		
		return returnValue;
	}

	@Override
	public List<SaleCars> queryWithCondition(Integer condition1, Integer condition2) {
		List<SaleCars> list =dao.queryWithCondition(condition1,condition2);
		
		return list;
	}
	@Override
	public String deleteSingleCar(String id) {
		
		String returnValue = "deleteFailed";
		
		if(dao.deleteSigleCar(id)==1){
			returnValue = "deleteSuccess";
		}
		return returnValue;
	}

}
