package vn.iuh.controller;

import java.util.ArrayList;
import java.util.List;

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
import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.NhaSanXuat;
import vn.iuh.beans.TaiKhoan;
import vn.iuh.dao.KhachHangDao;
import vn.iuh.dao.LoaiSPDao;
import vn.iuh.dao.MauSacDao;
import vn.iuh.dao.NhaSanXuatDao;
import vn.iuh.dao.TaiKhoanDao;
@Transactional
@Controller
public class DangNhapController {
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
	public static TaiKhoan taiKhoan = null;
	
	@RequestMapping(value = "dangnhapView", method = RequestMethod.GET)	
	public ModelAndView dangNhapView() {
		return new ModelAndView("dangnhapForm","tk", new TaiKhoan());
	}
	
	@RequestMapping(value = "dangnhap" , method = RequestMethod.POST)	
	public ModelAndView dangNhap(@Validated @ModelAttribute("tk") TaiKhoan tk) {
		
			if (tkDao.getTaikhoan(tk.getTenTk())==null) {
				return new ModelAndView("dangnhapForm","message"," Tài khoản hoặc mật khẩu ");
			}	
			
		taiKhoan =	tkDao.getTaikhoan(tk.getTenTk());	
		if (khDao.getKH(taiKhoan.getId())==null) {
			return new ModelAndView("themthongtinKh","message","bạn hãy cập nhập thông tin trước");
		}
			return new ModelAndView("redirect:/laptopqv");			
	}
	
	@RequestMapping(value = "dangkitk")
	public ModelAndView dangkiForm() {
		return new ModelAndView("dangkiForm","tk", new TaiKhoan());
	}
	@RequestMapping(value = "capnhapttkh")
	public ModelAndView khachhangForm() {
		return new ModelAndView("themthongtinKh","kh", new KhachHang());
	}
	@RequestMapping(value = "dangki" , method = RequestMethod.POST)
	public ModelAndView dangki(@Validated @ModelAttribute ("tk") TaiKhoan taiKhoan) {
		taiKhoan.setQuyen("User");
		if (tkDao.addKH(taiKhoan)) {
			return new ModelAndView("redirect:/capnhapttkh","message","Đăng kí tài khoản thành công, hãy nhập cập nhập thông tin của bạn");
		}else 
		return new ModelAndView("dangkiForm","message","Tên tài khoản đã tồn tại, vui lòng chọn tên khác");
	}
	@RequestMapping(value = "dangxuat")
	public ModelAndView dangxuat() {
			taiKhoan=null;
		return new ModelAndView("redirect:/laptopqv");
	}
	@ModelAttribute("tk1")
	public TaiKhoan getTaiKhoan() {
		return taiKhoan ;
	}
	@ModelAttribute("kh")
	public KhachHang kh() {
		return new KhachHang();
	}
	@ModelAttribute("nhaSX")
	public List<NhaSanXuat> getListNhaSX(){
			List<NhaSanXuat> list =new ArrayList<NhaSanXuat>();
			list = nhaSXDao.getListNhaSX();
		return list;
	}
	@ModelAttribute("loaiSP")
	public List<LoaiSP> getListLoaiSP(){
			List<LoaiSP> list =new ArrayList<LoaiSP>();
			list = loaiSPDao.getListLoaiSP();
		return list;
	}
}
