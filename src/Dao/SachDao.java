package Dao;

import java.util.ArrayList;

import Bean.SachBean;


public class SachDao{
	public ArrayList<SachBean> getDS(){
		
	   	ArrayList<SachBean> list = new ArrayList<SachBean>();
	   	
	   	SachBean sach1 = new SachBean("Java1-12","Phu","Java","anh1.jpg",1000);
	   	SachBean sach2 = new SachBean("C#-122","Nhung","C#","anh2.jpg",4000);
	   	SachBean sach3 = new SachBean("Javascript-100","Nhi","JavaScript","anh3.jpg",1000);
	   	SachBean sach4 = new SachBean("PHP-12","AnhThu","PHP","anh4.jpg",5000);
	   	SachBean sach5 = new SachBean("ReactJs-12","Dat","ReactJS","anh5.jpg",2000);

	   	list.add(sach1);
	   	list.add(sach2);
	   	list.add(sach3);
	   	list.add(sach4);
	   	list.add(sach5);

	   	return list;

	}
}
