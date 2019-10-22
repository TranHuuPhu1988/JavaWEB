package Bo;

import java.util.ArrayList;
import Bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	
	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
		
		for(giohangbean g:ds) {
			if(g.getMasach().equals(masach)) {
				g.setSoluong(g.getSoluong() + soluong);
				g.setThanhtien(g.getSoluong()*g.getGia());
				return;
			}
		}
		giohangbean gh = new giohangbean(masach, tensach, tacgia, gia, soluong);
		ds.add(gh);
		
	}
	public void CapNhat(String maSach, String tenSach, String tacGia, long gia, long soLuong) {
		giohangbean cart = new giohangbean(maSach, tenSach, tacGia, gia, soLuong);
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (cart.getMasach().equals(ds.get(i).getMasach())) {
				ds.get(i).setSoluong(cart.getSoluong()); 
				ds.get(i).setThanhtien(ds.get(i).getSoluong() * ds.get(i).getGia());
				return;
			}
		}
		ds.add(cart);
	}
	
	public void Xoa(String maSach, String tenSach, String tacGia, long gia, long soLuong){
		giohangbean cart = new giohangbean(maSach, tenSach, tacGia, gia, soLuong);
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			if (cart.getMasach().equals(ds.get(i).getMasach())) {
				ds.remove(i);
				break;
			}
		}
	}
	
	public long Tong(){
		long s= 0;
		for(giohangbean g: ds)
			s += g.getThanhtien();
		return s;
	}

}
