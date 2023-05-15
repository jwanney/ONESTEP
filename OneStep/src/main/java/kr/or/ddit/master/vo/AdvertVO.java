package kr.or.ddit.master.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AdvertVO {

	private int advertId;          // 광고번호
	private int prodId;            // 상품번호
	private String advertName;     // 광고자리 
	private String advertContent;  // 광고내용
	private String advertStatus;   // 광고상태
	private Date advertStart;      // 시작날짜
	private Date advertEnd;        // 종료날짜
	private String advertAtt;      // 파일경로
	private String companyId;      // 회사이름
}
