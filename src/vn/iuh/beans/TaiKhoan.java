package vn.iuh.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.UniqueElements;

@Entity
@Table(name = "TaiKhoan")
public class TaiKhoan implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(unique = true)
	private String tenTk;
	private	String matkhau;
	private String quyen;
	
	public String getQuyen() {
		return quyen;
	}






	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}






	public TaiKhoan() {
		// TODO Auto-generated constructor stub
	}

	





	public TaiKhoan(String tenTk, String matkhau) {
		super();
		this.tenTk = tenTk;
		this.matkhau = matkhau;
	}






	public int getId() {
		return id;
	}






	public void setId(int id) {
		this.id = id;
	}






	public String getTenTk() {
		return tenTk;
	}

	public void setTenTk(String tenTk) {
		this.tenTk = tenTk;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	

}
