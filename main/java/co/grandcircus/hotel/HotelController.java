package co.grandcircus.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel.dao.HotelDao;

@Controller
public class HotelController {

	@Autowired
	private HotelDao hotelDao;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	@RequestMapping("/results")
	public ModelAndView submitRequest(
		@RequestParam(value="city", required = true) String city) {
		ModelAndView mav = new ModelAndView("/results");
		mav.addObject("hotels", hotelDao.findByCity(city));
		return mav;
	}
	
	@RequestMapping("/addproperty")
	public ModelAndView addProperty() {
		ModelAndView mav = new ModelAndView("addproperty");
		return mav;
	}
}
