package carDao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import carEntity.SaleCars;

public class DaoImp implements Dao {
	
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	@Override
	public List<SaleCars> queryAllCar() {
		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("FROM SaleCars");
		List<SaleCars> list = query.getResultList();
		
		return list;
	}

	@Override
	public Integer deleteCar(String[] id) {
		
		if(id != null){
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("FROM SaleCars where sid =:id");
				for(String i:id){
					System.out.println("dao层面的删除id"+i);
					query.setParameter("id",i);
					if(query.getResultList().size()>0){
						List<SaleCars> list = query.getResultList();
						SaleCars saleCars = list.get(0);
						System.out.println("删除的车的名字："+saleCars.getCarName());
						session.delete(saleCars);
						session.remove(saleCars);
						
					}
				}
			return 1;
		}else{
			return 0;
		}
	
		
	}

	@Override
	public Integer addCar(SaleCars saleCars) {
		
		Session session = sessionFactory.getCurrentSession();
		String str = (String) session.save(saleCars); 
		Integer j = null ;
		if(str != null){
			return j=1;
		}else{
			return j;
		}
		
	}

	@Override
	public List<SaleCars> queryWithCondition(Integer condition1, Integer condition2) {
		
		Session session = sessionFactory.getCurrentSession();	 
		Query query = session.createQuery("FROM SaleCars where price > :condition1 and  price < :condition2");
		query.setParameter("condition1",condition1);
		query.setParameter("condition2",condition2);
		List<SaleCars> list = query.getResultList();
		
		return list;
	}
	@Override
	public Integer deleteSigleCar(String id) {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM SaleCars where sid =:id");
		if(id != null){
			query.setParameter("id",id);					
			List<SaleCars> list = query.getResultList();
			SaleCars saleCars = list.get(0);
			session.delete(saleCars);
			return 1;
		}else{
			return 0;
		}
	
	}

}
