package kr.or.ddit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.SupportVO;
import kr.or.ddit.myPage.vo.ActivityVO;
import kr.or.ddit.myPage.vo.AwardVO;
import kr.or.ddit.myPage.vo.CareerVO;
import kr.or.ddit.myPage.vo.CertificationVO;
import kr.or.ddit.myPage.vo.CoverletterItemVO;
import kr.or.ddit.myPage.vo.CoverletterVO;
import kr.or.ddit.myPage.vo.DesiredEmplVO;
import kr.or.ddit.myPage.vo.EducationVO;
import kr.or.ddit.myPage.vo.EmploymentPreferencesVO;
import kr.or.ddit.myPage.vo.LanguageVO;
import kr.or.ddit.myPage.vo.NotificationVO;
import kr.or.ddit.myPage.vo.PortfolioVO;
import kr.or.ddit.myPage.vo.ResumeVO;
import kr.or.ddit.myPage.vo.SkillVO;
import kr.or.ddit.myPage.vo.WorkfieldVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.ApplyVO;
import kr.or.ddit.vo.PaginationInfoVO;
import kr.or.ddit.vo.ProposalVO;

public interface MypageMapper {

	public int selectNotificationCount(PaginationInfoVO<NotificationVO> pagingVO);

	public List<NotificationVO> selectNotificationList(PaginationInfoVO<NotificationVO> pagingVO);

	public NotificationVO selectNotification(int notificationId);

	public int deleteNotification(int notificationId);

	public int selectResumeCount(PaginationInfoVO<ResumeVO> pagingVO);
	public List<ResumeVO> selectResumeList(PaginationInfoVO<ResumeVO> pagingVO);

	public void insertResume(ResumeVO resume);
	public void insertActivity(ActivityVO activity);
	public void insertAward(AwardVO award);
	public void insertCareer(CareerVO career);
	public void insertCertification(CertificationVO certification);
	public void insertDesired(DesiredEmplVO desired);
	public void insertEducation(EducationVO education);
	public void insertPrfrn(EmploymentPreferencesVO prfrn);
	public void insertLanguage(LanguageVO language);
	public void insertSkill(SkillVO skill);
	public void insertPortfolio(PortfolioVO portfolio);
	public void insertWorkfield(WorkfieldVO workfield);

	public ResumeVO resumeDetail(int resumeId);
	public MemberVO getMemberByResumeId(int resumeId);

	public void modifyResume(ResumeVO resume);

	public void deleteActivity(int resumeId);
	public void deleteAward(int resumeId);
	public void deleteCareer(int resumeId);
	public void deleteCertification(int resumeId);
	public void deleteDesired(int resumeId);
	public void deleteEducation(int resumeId);
	public void deletePrfrn(int resumeId);
	public void deleteLanguage(int resumeId);
	public void deletePortfolio(int resumeId);
	public void deleteSkill(int resumeId);
	public void deleteWorkfield(int resumeId);
	public void deleteResume(int resumeId);

//	public void insertCovltrItems(CoverletterItemVO covltrItem);
//
//	public CoverletterItemVO coverletterDetail(int covltrItemId);
//
//	public void modifyCoverletterItems(CoverletterItemVO covltrItem);
//
//	public List<CoverletterItemVO> selectCovltrItemList(String memId);
//
//	public void coverletterInsert(List<String> covltrItemIdList);
//
//	public void insertCoverletter(@Param("checkedIds") String checkedIds, @Param("covltrTitle") String covltrTitle);

	public void insertCoverletter(CoverletterVO covltr);
	public void insertCovltrItem(CoverletterItemVO covltrItem);

	public CoverletterVO coverletterDetail(int covltrId);
	
	public void modifyCoverletter(CoverletterVO covltr);
	
	public void deleteCoverletterItem(int covltrId);

	public void deleteCoverletter(int covltrId);

	public List<CoverletterVO> selectCoverletterList(String memId);

	public MemberVO getMemberByCovltrId(int covltrId);

	public List<CoverletterItemVO> getItems();

	public CoverletterItemVO getItem(int id);

	public List<CoverletterVO> getCoverletters();


	public List<ProposalVO> getProposalList(String memId);

	public AnnoVO getAnnoOne(int annoId);

	public void deleteProposal(ProposalVO proVO);

	public List<ApplyVO> getApplyList(String memId);

	public List<AnnoVO> getAnnoCom(int comId);

	public void deleteSupport(SupportVO supVO);
//이력서에 있는 스킬 가져오려고 만들음
//	public ResumeVO mainResume(String memId);
//이력서 리스트로 5개뽑기
	public List<ResumeVO> myResumeList(String memId);
//마이페이지 main에 지원리스트 뽑기
	public List<AnnoVO> myApplyList(String memId);

	public List<CoverletterItemVO> getCovltrItemByMemId(String memId);

	public List<CoverletterItemVO> getCovltrItemByCovltrItemIdList(List<Integer> covltrItemIdList);

	public void insertPhoto(ResumeVO resume);
//마이페이지 좋아요 공고 리스트
	public List<AnnoVO> mySupList(String memId);

	public void deletePhoto(int resumeId);

	public void insertFile(PortfolioVO portfolio);

	public List<ApplyVO> getApply(String memId);

	public void updateResumeRepresentative(ResumeVO resumeVO);


}
