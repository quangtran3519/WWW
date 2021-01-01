package vn.iuh.controller;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import vn.iuh.beans.KhachHang;
import vn.iuh.beans.TaiKhoan;
import vn.iuh.dao.KhachHangDao;
import vn.iuh.dao.LoaiSPDao;
import vn.iuh.dao.MauSacDao;
import vn.iuh.dao.NhaSanXuatDao;
import vn.iuh.dao.TaiKhoanDao;
@Transactional
@Controller
public class TaiKhoanController {
	@Autowired
	private	NhaSanXuatDao nhaSXDao;
	@Autowired
	private	MauSacDao mauSacDao;
	@Autowired
	private	LoaiSPDao loaiSPDao;
	@Autowired
	private ServletContext context;
	@Autowired
	private TaiKhoanDao tkDao;
	@Autowired
	private KhachHangDao khDao;
	
	@RequestMapping(value = "doimatkhauView")
	public ModelAndView doimkView() {
		return new ModelAndView("doimatkhauForm");
	}
	@RequestMapping(value = "tttaikhoanView")
	public ModelAndView tttaikhoanView() {
		return new ModelAndView("themthongtinKh","kh1",getKhacHang());
	}
	
	@ModelAttribute("kh")
	public KhachHang getKhacHang(){
		
		return  khDao.getKH(DangNhapController.taiKhoan.getId());
	}
	@RequestMapping( value = "updatettKH",method = RequestMethod.POST )
	public ModelAndView updatettKH(@Validated @ModelAttribute("kh1") KhachHang x){
			KhachHang khachHang = khDao.getKH(DangNhapController.taiKhoan.getId());
			
			khachHang.setTenKH(x.getTenKH());
			khachHang.setDiaChi(x.getDiaChi());
			khachHang.setEmail(x.getEmail());
			khachHang.setSdt(x.getSdt());
			khachHang.setNgaysinh(x.getNgaysinh());
			System.out.println(khachHang);
			if (khDao.updateKH(khachHang)) {
				return new ModelAndView("themthongtinKh","message","cập nhập thành công");
			}
			
			return new ModelAndView("themthongtinKh","message","cập nhập thông tin thất bại, kiểm tra dữ liệu nhập");
	}
	
	
	@RequestMapping(value = "doimatkhauView", method = RequestMethod.GET)
	public ModelAndView doimatkhauView() {
		return new ModelAndView("doimatkhauForm","tk", DangNhapController.taiKhoan);
	}
	
	@RequestMapping(value = "doimatkhau", method = RequestMethod.POST)
	public ModelAndView doimatkhau(@Validated @ModelAttribute("tk")TaiKhoan taiKhoan) {
			TaiKhoan x = DangNhapController.taiKhoan;
			x.setMatkhau(taiKhoan.getMatkhau());
			tkDao.doiMK(x);
		return new ModelAndView("doimatkhauForm","message"," doi mat khau thanh cong");
	}
	
}
