package kr.or.ddit.fullcalendar.service;

import java.util.List;

import kr.or.ddit.fullcalendar.vo.FullcalendarVO;

public interface IFullcalendarService {

	public void insert(FullcalendarVO calendar);
	public List<FullcalendarVO> list(FullcalendarVO fullVO);
	public void update(FullcalendarVO calendar);
	public void del(FullcalendarVO calendar);
	

}
