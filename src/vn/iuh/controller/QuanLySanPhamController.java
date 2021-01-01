package vn.iuh.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vn.iuh.beans.CauHinh;
import vn.iuh.beans.LoaiSP;
import vn.iuh.beans.MauSac;
import vn.iuh.beans.NhaSanXuat;
import vn.iuh.beans.NuocSanXuat;
import vn.iuh.beans.SanPham;
import vn.iuh.dao.CauHinhDao;
import vn.iuh.dao.LoaiSPDao;
import vn.iuh.dao.MauSacDao;
import vn.iuh.dao.NhaSanXuatDao;
import vn.iuh.dao.NuocDao;
import vn.iuh.dao.SanPhamDao;
@Transactional
@Controller

public class QuanLySanPhamController {
	
	@Autowired
	private ServletContext context;
	@Autowired
	private	SanPhamDao sanphamdao;
	@Autowired
	private	NuocDao nuocDao;
	@Autowired
	private	NhaSanXuatDao nhaSXDao;
	@Autowired
	private	MauSacDao mauSacDao;
	@Autowired
	private	LoaiSPDao loaiSPDao;
	@Autowired
	private CauHinhDao cauHinhDao ;
	
	//hien thi danh sach san pham
	@RequestMapping(value = "qlsanpham" , method =  RequestMethod.GET)
	public ModelAndView admin_qlsp() {
			List<SanPham> list = sanphamdao.getDSSP();
		return new ModelAndView("quanlysanpham","dsSanPham",list );
	}
	
	// xoa 1 san pham
	@RequestMapping(value = "delSP/{id}" , method =  RequestMethod.GET)
	public ModelAndView admin_xoa1SP( @PathVariable int id) {	
		sanphamdao.xoaSP(id);		
		return new ModelAndView( "redirect:/qlsanpham");		
	}
	
	
	//hienthi danh sach nuoc sx 
	@ModelAttribute("nuocSX")
	public List<NuocSanXuat> getListNuoc(){
			List<NuocSanXuat> list =new ArrayList<NuocSanXuat>();
			list = nuocDao.getListNuoc();
		return list;
	}
	
	// ds nha san xuat
	@ModelAttribute("nhaSX")
	public List<NhaSanXuat> getListNhaSX(){
			List<NhaSanXuat> list =new ArrayList<NhaSanXuat>();
			list = nhaSXDao.getListNhaSX();
		return list;
	}
	// ds mau sac
	@ModelAttribute("mauSac")
	public List<MauSac> getListMauSac(){
			List<MauSac> list =new ArrayList<MauSac>();
			list = mauSacDao.getListMauSac();
		return list;
	}
	//ds loai sp
	
	@ModelAttribute("loaiSP")
	public List<LoaiSP> getListLoaiSP(){
			List<LoaiSP> list =new ArrayList<LoaiSP>();
			list = loaiSPDao.getListLoaiSP();
		return list;
	}
	
	
	// view them san pham
	@RequestMapping(value = "themSPView")
	public ModelAndView getViewThemSP() {
		
		return new ModelAndView("themsanphamForm","sanpham", new SanPham());
	}
	
	// them san pham

	public void uploadPhoto( CommonsMultipartFile  photo) {
		try {
			String  nameIMg = context.getRealPath("/resources/img/"+ photo.getOriginalFilename());
			photo.transferTo(new File(nameIMg));			
			 byte barr[]=photo.getBytes();  
	          
		        BufferedOutputStream bout=new BufferedOutputStream(  
		                 new FileOutputStream("D:\\JAVA\\DoAn_WWW\\WebContent\\resources\\img\\"+ photo.getOriginalFilename()));  
		        bout.write(barr);  
		        bout.flush();  
		        bout.close();  
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	@RequestMapping(value = "themSP" , method = RequestMethod.POST)
	public ModelAndView ThemSP(@Validated @ModelAttribute("sanpham") SanPham sanPham,@RequestParam("photo") CommonsMultipartFile  photo , BindingResult errors ) {	
		
		
			uploadPhoto(photo);	
			sanPham.setUrlHinh(photo.getOriginalFilename());
			LoaiSP loaiSP = loaiSPDao.getLoaiSP(sanPham.getLoai().getMaLoai());
			sanPham.setLoai(loaiSP);
			MauSac mauSac = mauSacDao.getListMauSac(sanPham.getMauSac().getMaMau());
			sanPham.setMauSac(mauSac);
			NhaSanXuat nhaSanXuat = nhaSXDao.getListNhaSX(sanPham.getNhasanxuat().getMaNhaSX());
			sanPham.setNhasanxuat(nhaSanXuat);
			NuocSanXuat nuocSanXuat = nuocDao.getNuocSX(sanPham.getNuocsanxuat().getMaNuoc());
			sanPham.setNuocsanxuat(nuocSanXuat);
	
		if (sanphamdao.themSP(sanPham)==false && errors.hasErrors()) {				
			return new ModelAndView("themsanphamForm","message", "Thêm sản phẩm thất bại");
		}else {			
			CauHinh ch = sanPham.getCauHinh();
			ch.setSanPham(sanPham);
			cauHinhDao.themCH(ch);
			return new ModelAndView("themsanphamForm","message", "Thêm sản phẩm thành công");
		}	
	}
	// hien form sua san pham
	@RequestMapping(value = "updateSPForm/{id}" , method =  RequestMethod.GET)
	public ModelAndView admin_updateSPForm( @PathVariable int id) {	
		SanPham sanPham = sanphamdao.getSP(id);		
		return new ModelAndView( "speditForm", "sanpham", sanPham);		
	}
	//sua san pham
	@RequestMapping(value = "updateSP" , method =  RequestMethod.POST)
	public ModelAndView admin_updateSP(@Validated @ModelAttribute("sanpham") SanPham sanPham,@RequestParam("photo") CommonsMultipartFile  photo, BindingResult errors) {	
		uploadPhoto(photo);	
		sanPham.setUrlHinh(photo.getOriginalFilename());
		LoaiSP loaiSP = loaiSPDao.getLoaiSP(sanPham.getLoai().getMaLoai());
		sanPham.setLoai(loaiSP);
		MauSac mauSac = mauSacDao.getListMauSac(sanPham.getMauSac().getMaMau());
		sanPham.setMauSac(mauSac);
		NhaSanXuat nhaSanXuat = nhaSXDao.getListNhaSX(sanPham.getNhasanxuat().getMaNhaSX());
		sanPham.setNhasanxuat(nhaSanXuat);
		NuocSanXuat nuocSanXuat = nuocDao.getNuocSX(sanPham.getNuocsanxuat().getMaNuoc());
		sanPham.setNuocsanxuat(nuocSanXuat);

	if (sanphamdao.sua(sanPham)==false && errors.hasErrors()) {				
		return new ModelAndView("speditForm","message", "sua  that bai");
	}else {			
		CauHinh ch = sanPham.getCauHinh();
		ch.setSanPham( sanphamdao.getSP(sanPham.getMaSP()));
		
		cauHinhDao.suaCH(ch);
		return new ModelAndView("speditForm","message", "them thanh cong");
	}	
		
	}
	
	
	
}
