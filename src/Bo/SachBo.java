package Bo;

import java.util.ArrayList;
import Bean.SachBean;
import Dao.SachDao;

public class SachBo{
	SachDao sach = new SachDao();
	
	public ArrayList<SachBean> getDS(){
		return sach.getDS();
	}
}
