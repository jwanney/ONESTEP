package kr.or.ddit.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.master.service.IMasterAdvertService;
import kr.or.ddit.master.vo.AdvertVO;
import kr.or.ddit.member.service.IMemService;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.SupportVO;
import kr.or.ddit.vo.AnnoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j // lombok 추가 후 사용 가능 // SLF4J(Simple Logging Facade for Java)는 이름에서 확인할 수 있듯이.
		// java.util.logging, logback 및 log4j와 같은 다양한 로깅 프레임 워크에 대한 추상화(인터페이스) 역할을 하는
		// 라이브러리
@Controller
@RequestMapping("/")
public class mainController {

	@Inject
	private ICompanyService comService;
	@Inject
	private IMemService memService;

	@Inject
	private IMasterAdvertService advertService;

	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String listGet(Model model, HttpServletRequest req) {
		log.info("HTTP 메서드 매핑");
		log.info("listGet()");

		List<AnnoVO> annoList = comService.annoList();
		List<AdvertVO> advertList = advertService.advertList();
		model.addAttribute("annoList", annoList);
		// 관심기업 정보
		HttpSession session = req.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("memberVO");
		List<SupportVO> supList = memService.getSupportList(vo.getMemId());
		model.addAttribute("supList", supList);
		String comId = "";
		for (int i = 0; i < supList.size(); i++) {
			comId += supList.get(i).getComId();
			if (i != supList.size() - 1) {
				comId += ",";
			}
		}
		Date now = new Date();
		model.addAttribute("now", now);
		model.addAttribute("comIdGroup", comId);
		model.addAttribute("supList", supList);
		model.addAttribute("advertList", advertList);
		return "member/main";
	}
//	@RequestMapping(value="/member/region", method = RequestMethod.GET)
//	public String list(Model model, HttpServletRequest req) {
//		log.info("HTTP 메서드 매핑");
//		log.info("listGet()");
//		
//		List<AnnoVO> annoList = comService.annoList();
//		model.addAttribute("annoList", annoList);
//		//관심기업 정보
//		HttpSession session = req.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("memberVO");
//		List<SupportVO> supList = memService.getSupportList(vo.getMemId());
//		model.addAttribute("supList", supList);
//		String comId = "";
//		for (int i = 0; i < supList.size(); i++) {
//			comId += supList.get(i).getComId();
//			if(i != supList.size() - 1){
//				comId += ",";
//			}
//		}
//		model.addAttribute("comIdGroup", comId);
//		model.addAttribute("supList", supList);
//		return "member/region";
//	}
//	@RequestMapping(value="/member/job", method = RequestMethod.GET)
//	public String job(Model model, HttpServletRequest req) {
//		log.info("HTTP 메서드 매핑");
//		log.info("listGet()");
//		
//		List<AnnoVO> annoList = comService.annoList();
//		model.addAttribute("annoList", annoList);
//		//관심기업 정보
//		HttpSession session = req.getSession();
//		MemberVO vo = (MemberVO)session.getAttribute("memberVO");
//		List<SupportVO> supList = memService.getSupportList(vo.getMemId());
//		model.addAttribute("supList", supList);
//		String comId = "";
//		for (int i = 0; i < supList.size(); i++) {
//			comId += supList.get(i).getComId();
//			if(i != supList.size() - 1){
//				comId += ",";
//			}
//		}
//		model.addAttribute("comIdGroup", comId);
//		model.addAttribute("supList", supList);
//		return "member/job";
//	}

//	@RequestMapping(value="/main2", method = RequestMethod.GET)
//	public String lis(Model model) {
//		log.info("HTTP 메서드 매핑");
//		log.info("listGet()");
//		
//		List<AnnoVO> annoList = comService.annoList();
//		model.addAttribute("annoList", annoList);
//		System.out.println(annoList);
//		return "main/main";
//	}
//	
	@GetMapping("member/calendar")
	public String calendar() {
		return "member/calendar";
	}

	@RequestMapping(value = "/member/mainn", method = RequestMethod.GET)
	public String d(Model model, HttpServletRequest req) throws Exception {
		log.info("HTTP 메서드 매핑");
		log.info("listGet()");

		Date now = new Date();
		System.out.println("now nownownownow" + now);
		model.addAttribute("now", now);

		List<AnnoVO> annoList = comService.annoList();
		List<AdvertVO> advertList = advertService.advertList();
		model.addAttribute("annoList", annoList);
		// 관심기업 정보
		HttpSession session = req.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("memberVO");
		List<SupportVO> supList = memService.getSupportList(vo.getMemId());
		model.addAttribute("supList", supList);
		String comId = "";
		for (int i = 0; i < supList.size(); i++) {
			comId += supList.get(i).getComId();
			if (i != supList.size() - 1) {
				comId += ",";
			}
		}
		Document doc = Jsoup.connect(
				"https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EC%B1%84%EC%9A%A9")
				.get();

		Elements element = doc.select("li[id*=sp_nws_all]");

		List<Map<String, Object>> newsList = new ArrayList<Map<String, Object>>();

		for (int i = 0; i < element.size(); i++) {
			log.debug("element : \n" + element.get(i).html());
			Elements ele1 = element.get(i).select("a[class=news_tit]");
			Elements ele2 = element.get(i).select("a[class=dsc_thumb]");
			Elements ele3 = element.get(i).select("img[class=thumb api_get]");

			String img = ele3.attr("data-lazysrc");
			String title = ele1.attr("title");
			String url = ele1.attr("href");

			Map<String, Object> newsMap = new HashMap<String, Object>();
			newsMap.put("title", title);
			newsMap.put("img", img);
			newsMap.put("url", url);

			newsList.add(newsMap);

		}
		model.addAttribute("newsList", newsList);

		List<BoardVO> noticeList = comService.noticeList5();

		int cntApply = memService.cntApply(vo.getMemId());
		int cntPropo = memService.cntPropo(vo.getMemId());
		model.addAttribute("vo", vo);
		model.addAttribute("cntApply", cntApply);
		model.addAttribute("cntPropo", cntPropo);
		model.addAttribute("notice", noticeList);
		model.addAttribute("comIdGroup", comId);
		model.addAttribute("supList", supList);
		model.addAttribute("advertList", advertList);
		return "member/mainn";
	}


	@RequestMapping(value = "/none/main", method = RequestMethod.GET)
	public String dss(Model model) throws Exception {
		log.info("HTTP 메서드 매핑");
		log.info("listGet()");

		Date now = new Date();
		System.out.println("now nownownownow" + now);
		model.addAttribute("now", now);

		List<AnnoVO> annoList = comService.annoList();
		List<AdvertVO> advertList = advertService.advertList();
		model.addAttribute("annoList", annoList);
		// 관심기업 정보
		Document doc = Jsoup.connect(
				"https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EC%B1%84%EC%9A%A9")
				.get();

		Elements element = doc.select("li[id*=sp_nws_all]");

		List<Map<String, Object>> newsList = new ArrayList<Map<String, Object>>();

		for (int i = 0; i < element.size(); i++) {
			log.debug("element : \n" + element.get(i).html());
			Elements ele1 = element.get(i).select("a[class=news_tit]");
			Elements ele2 = element.get(i).select("a[class=dsc_thumb]");
			Elements ele3 = element.get(i).select("img[class=thumb api_get]");

			String img = ele3.attr("data-lazysrc");
			String title = ele1.attr("title");
			String url = ele1.attr("href");

			Map<String, Object> newsMap = new HashMap<String, Object>();
			newsMap.put("title", title);
			newsMap.put("img", img);
			newsMap.put("url", url);

			newsList.add(newsMap);

		}
		model.addAttribute("newsList", newsList);

		List<BoardVO> noticeList = comService.noticeList5();

		model.addAttribute("notice", noticeList);
		model.addAttribute("advertList", advertList);
		return "none/mainn";
	}
}
