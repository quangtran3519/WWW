package vn.iuh.entities;

import vn.iuh.beans.SanPham;

public class GioHang {

	private SanPham sanPham;
	private int soluong;
	
	public GioHang(SanPham sanPham, int soluong) {
		super();
		this.sanPham = sanPham;
		this.soluong = soluong;
	}
	public GioHang() {
		// TODO Auto-generated constructor stub
	}
	public GioHang(SanPham sanPham) {
	
		this.sanPham = sanPham;
	}

	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	
	
	
	

}
