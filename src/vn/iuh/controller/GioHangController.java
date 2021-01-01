package vn.iuh.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vn.iuh.beans.CTHD;
import vn.iuh.beans.HoaDon;
import vn.iuh.beans.KhachHang;
import vn.iuh.beans.SanPham;
import vn.iuh.dao.CTHDDao;
import vn.iuh.dao.HoaDonDao;
import vn.iuh.dao.KhachHangDao;
import vn.iuh.dao.SanPhamDao;
import vn.iuh.entities.GioHang;

@Transactional
@Controller
public class GioHangController {
	@Autowired
	CTHDDao cthdDao;
	@Autowired
	HoaDonDao hoadonDao;
	@Autowired
	private SanPhamDao sanphamdao;
	 List<GioHang>  gioHangs = new ArrayList<GioHang>();
	 @Autowired
	 KhachHangDao khachhangDao;
//	 
	@RequestMapping(value = "giohangView")
	public ModelAndView giohangView() {
		if (gioHangs.isEmpty()) {
			return new ModelAndView("giohangForm");
		}
		
		return new ModelAndView("giohangForm");
	}
	
	@RequestMapping(value = "thanhtoanView", method = RequestMethod.GET)
	public ModelAndView thanhtoanView() {
		
//		System.out.println(x);
		return new ModelAndView("thanhtoanForm");
	}
	@RequestMapping(value = "thanhtoan", method = RequestMethod.POST)
	public ModelAndView thanhtoan(@Validated @ModelAttribute("kh")KhachHang x) {
		// tao hoa don
		KhachHang kh = khachhangDao.getKH(x.getMaKH());
		HoaDon hoaDon = new HoaDon(kh, LocalDate.now());
		String message ="";
		if (hoadonDao.addHD(hoaDon)) {
			
			for(GioHang g : gioHangs) {
				CTHD cthd = new CTHD(hoaDon,g.getSanPham(),g.getSoluong());
				cthdDao.themCTHD(cthd);
				
			}
			
			message ="Đặt hàng thành công ";
		}else {
			message ="Đặt hàng thất bại , vui lòng kiểm tra lại thông tin";
		}
		
		
		//tao chi tiet hoa don
			
		return new ModelAndView("xacnhanthanhtoanForm","message",message);
	}
	@RequestMapping(value = "themvaogiohang/{id}", method = RequestMethod.GET)
	public  ModelAndView gioHangs(@PathVariable int id  ){
		int flag=0;
		SanPham sanPham = sanphamdao.getSP(id);	
		
		for (GioHang x :gioHangs) {
			if (x.getSanPham().getMaSP()==sanPham.getMaSP()) {
				x.setSoluong(x.getSoluong()+1);
				flag=1;
			}
		}
		if (flag==0) {
			gioHangs.add(new GioHang(sanPham, 1));
		}
		
		
		return new ModelAndView("giohangForm");
	}
	
	
	
	@ModelAttribute("dsGioHang")
	public List<GioHang> getListGioHang(){
		
		return gioHangs;
	}
	@ModelAttribute("kh")
	public KhachHang getKhacHang(){
		
		return  khachhangDao.getKH(1);
	}
}
