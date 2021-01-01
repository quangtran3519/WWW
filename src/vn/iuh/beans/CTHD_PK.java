package vn.iuh.beans;

import java.io.Serializable;

import javax.persistence.Embeddable;
@Embeddable
public class CTHD_PK implements Serializable {
	private int hoaDon;
	private int sanPham;
	
	public CTHD_PK() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + hoaDon;
		result = prime * result + sanPham;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CTHD_PK other = (CTHD_PK) obj;
		if (hoaDon != other.hoaDon)
			return false;
		if (sanPham != other.sanPham)
			return false;
		return true;
	}
	public int getHoaDon() {
		return hoaDon;
	}
	public void setHoaDon(int hoaDon) {
		this.hoaDon = hoaDon;
	}
	public int getSanPham() {
		return sanPham;
	}
	public void setSanPham(int sanPham) {
		this.sanPham = sanPham;
	}
	

}
