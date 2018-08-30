package co.grandcircus.hotel.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.hotel.entity.Hotel;

@Repository
@Transactional
public class HotelDao {

	@PersistenceContext
	private EntityManager em;

	public List<Hotel> findByCity(String city) {
		System.out.println(city);
		return em.createQuery("FROM Hotel where city = :n", 
				Hotel.class).setParameter("n", city).getResultList();
	}
}
//	public List<Hotel> findAll() {
//		return em.createQuery("from Hotel", Hotel.class).getResultList();
//	}
//	
//	public Hotel findAllByCity(String city) {
//		return em.find(Hotel.class, city);				
//	}
//	
//	public List<Product> findByName(String name) {
//		return em.createQuery("from Product where name = :n", 
//				Product.class).setParameter("n", name).getResultList();
//	} //return em.createQuery("from Product where name like :n", Product.class)
//}              //.setParameter("n", "%" + name + "%").getResultList();

