package kr.or.ddit.company.serviceImpl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.company.service.ICompanyService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.mapper.CompanyMapper;
import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.vo.AnnoKeywordVO;
import kr.or.ddit.vo.AnnoVO;
import kr.or.ddit.vo.ApplyVO;
import kr.or.ddit.vo.AttVO;
import kr.or.ddit.vo.EvaluationVO;
import kr.or.ddit.vo.FaqVO;
import kr.or.ddit.vo.ProposalVO;
import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.keywordAnnoVO;

@Service
public class CompanyServiceImpl implements ICompanyService {
   
	@Resource(name="uploadPath")
	String uploadPath;
	
   @Inject 
   private CompanyMapper mapper;

   @Override
   public void insertAnno(HttpServletRequest req,AnnoVO anno) throws Exception {
      mapper.insertAnno(anno);
//      mapper.insertKeyword(anno);
      
      if(anno.getAttAnno().getSize()>0) {
          String uuid =UUID.randomUUID().toString();
          String fileName =anno.getAttAnno().getOriginalFilename().replaceAll(" ", "_");
//          String path =req.getSession().getServletContext().getRealPath("/resources/upload");
          String savePath =uploadPath;
          fileName += "_"+uuid;
          
          
          File file = new File(savePath);
          if (!file.exists()) {
             file.mkdirs();
          }

          savePath += "/" + fileName;
          File saveFile = new File(savePath);
          
          anno.setAttId(fileName);
          System.out.println("아아앙 :" + anno.getAnnoId());
          mapper.insertAnnoFile(anno);

          // 방법1
          anno.getAttAnno().transferTo(saveFile); // 파일 복사
          
       }
   }

   @Override
   public List<AnnoVO> selectAnno(String comId) {
      List<AnnoVO> selectAnno = mapper.selectAnno(comId);
      return selectAnno;
   }

   @Override
   public ServiceResult deleteAnno( int annoId) {
      ServiceResult result = null;
      int cnt = mapper.deleteAnno(annoId);
      if(cnt > 0) {
         result = ServiceResult.OK;
      }else {
         result = ServiceResult.FAILED;
      }
      return result;
   }

   @Override
   public AnnoVO selectAnnoOne(int annoId) {
      return mapper.selectAnnoOne(annoId);
   }

   @Override
   public ServiceResult updateAnno(HttpServletRequest req,AnnoVO annoVO) throws Exception {
      ServiceResult result = null;
      int cnt = mapper.updateAnno(annoVO);
      if(cnt > 0) {
         result = ServiceResult.OK;
      }else {
         result = ServiceResult.FAILED;
      }
      
      
      if(annoVO.getAttAnno().getSize()>0) {
          String uuid =UUID.randomUUID().toString();
          String fileName =annoVO.getAttAnno().getOriginalFilename().replaceAll(" ", "_");
//          String path =req.getSession().getServletContext().getRealPath("/resources/upload");
          String savePath = uploadPath;
          fileName += "_"+uuid;
          
          
          File file = new File(savePath);
          if (!file.exists()) {
             file.mkdirs();
          }

          savePath += "/" + fileName;
          File saveFile = new File(savePath);
          
          annoVO.setAttId(fileName);
          System.out.println("아아앙 :" + annoVO.getAnnoId());
          mapper.insertAnnoFile(annoVO);

          // 방법1
          annoVO.getAttAnno().transferTo(saveFile); // 파일 복사
          
       }
      return result;
   }

   @Override
   public List<MemberVO> selectMember() {
      return  mapper.selectMember();
   }

   @Override
   public void insertCompany(CompanyVO vo, HttpServletRequest req) throws Exception {
      
      mapper.insertCompany(vo);
      
      if(vo.getLogoFile().getSize()>0) {
         String uuid =UUID.randomUUID().toString();
         String fileName =vo.getLogoFile().getOriginalFilename().replaceAll(" ", "_");
         String path =req.getSession().getServletContext().getRealPath("/resources/upload");
         String savePath = path + "/";
         fileName += "_"+uuid;
         
         
         File file = new File(savePath);
         if (!file.exists()) {
            file.mkdirs();
         }

         savePath += "/" + fileName;
         File saveFile = new File(savePath);
         
         vo.setCompanyLogo(fileName);
         System.out.println(vo.getCompanyId());
         
         mapper.insertFile(vo);

         // 방법1
         vo.getLogoFile().transferTo(saveFile); // 파일 복사
         
      }
   }

   @Override
   public CompanyVO getCompany(String companyId) {
      // TODO Auto-generated method stub
      return mapper.getCompany(companyId);
   }

@Override
public List<MemberVO> selectinterMember(String comId) {
	return mapper.selectinterMember(comId);
}

@Override
public List<MemberVO> selectApplymem(String comId) {
	// TODO Auto-generated method stub
	return mapper.selectApplyMem(comId);
}

@Override
public void insertReview(ReviewVO vo) {
	// TODO Auto-generated method stub
	 mapper.insertReview(vo);
	
}

@Override
public List<ReviewVO> getReviewList(int comId) {
	// TODO Auto-generated method stub
	return mapper.getReviewList(comId);
}

@Override
public List<BoardVO> noticeList() {
	// TODO Auto-generated method stub
	return mapper.noticeList();
}

@Override
public List<AnnoKeywordVO> selectAnnoKeyword() {
	// TODO Auto-generated method stub
	return mapper.selectAnnoKeyword();
}

@Override
public int annoCnt(String companyId) {
	// TODO Auto-generated method stub
	return mapper.annoCnt(companyId);
}

@Override
public int interCnt(String companyId) {
	// TODO Auto-generated method stub
	return mapper.interCnt(companyId);
}

@Override
public int applyCnt(String companyId) {
	// TODO Auto-generated method stub
	return mapper.applyCnt(companyId);
}

@Override
public int reviewCnt(String companyId) {
	// TODO Auto-generated method stub
	return mapper.reviewCnt(companyId);
}

@Override
public List<CompanyVO> searchCompanyList(String companyName) {
	// TODO Auto-generated method stub
	return mapper.searchCompanyList(companyName);
}

@Override
public CompanyVO searchCompany(String companyName) {
	// TODO Auto-generated method stub
	return mapper.searchCompany(companyName);
}

@Override
public List<AnnoVO> annoList() {
	// TODO Auto-generated method stub
	return mapper.annoList();
}

@Override
public List<AnnoVO> ajaxAnnoList(String searchType) {
	// TODO Auto-generated method stub
	return mapper.ajaxAnnoList(searchType);
}

@Override
public List<BoardVO> inquirylist(String memId) {
	// TODO Auto-generated method stub
	return mapper.inquirylist(memId);
}

@Override
public BoardVO inquiry(int boardId) {
	// TODO Auto-generated method stub
	return mapper.inquiry(boardId);
}

@Override
public ServiceResult insertInqu(HttpServletRequest req, BoardVO board) {
	ServiceResult result = null;
	int status = mapper.insertInqu(board);
	if (status > 0) {
		List<AttVO> boardFileList = board.getBoardFileList();
		try {
			processBoardFile(boardFileList, board.getBoardId(), req, board.getMemId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		result = ServiceResult.OK;
	} else {
		result = ServiceResult.FAILED;
	}
	return result;
}

private void processBoardFile(List<AttVO> boardFileList, int boardId, HttpServletRequest req, String memId) throws Exception {
	
	if (boardFileList != null && boardFileList.size() > 0) {
		for (AttVO attVO : boardFileList) {
			String savedName = UUID.randomUUID().toString();
			savedName = savedName + "_" + attVO.getAttFileName().replaceAll(" ", "_");
			String endFileName = attVO.getAttFileName().split("\\.")[1];
			String saveLocate =uploadPath;

			File file = new File(saveLocate);
			if (!file.exists()) {
				file.mkdirs();
			}

			saveLocate += "/" + savedName;
			File saveFile = new File(saveLocate);
			attVO.setBoardId(boardId);
			attVO.setMemId(memId);
			attVO.setAttSaveName(savedName);
			attVO.setAttPath(saveLocate);
			mapper.insertBoardFile(attVO);

			attVO.getItem().transferTo(saveFile);
		}
	}
}

@Override
public ServiceResult updateBoard(HttpServletRequest req, BoardVO boardVO) {
	ServiceResult result = null;
	int status = mapper.updateBoard(boardVO);
	if (status > 0) {
		mapper.deleteBoardFile(boardVO.getBoardId());
		List<AttVO> boardFileList = boardVO.getBoardFileList();
		try {
			processBoardFile(boardFileList, boardVO.getBoardId(), req, boardVO.getMemId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		result = ServiceResult.OK;
	} else {
		result = ServiceResult.FAILED;
	}
	return result;
}

@Override
public ServiceResult deleteInquiry(HttpServletRequest req,int boardId) {
	ServiceResult result = null;
	BoardVO boardVO = mapper.inquiry(boardId);
//	boardVO.getBoardCategory(boardCategory);
	mapper.deleteBoardFileByBoardId(boardId);
	int cnt = mapper.deleteBoard(boardId);
	if(cnt>0) {
		List<AttVO> boardFileList = boardVO.getBoardFileList();
		try {
			if(boardFileList !=null) {
				String[] filePath = boardFileList.get(0).getAttPath().split("/");
				int cutNum = boardFileList.get(0).getAttPath().lastIndexOf(filePath[filePath.length-1]);
				String path = boardFileList.get(0).getAttPath().substring(0,cutNum);
				deleteFolder(req,path);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		result = ServiceResult.OK;
	}else {
		result=ServiceResult.FAILED;
	}
	return result;
}

private void deleteFolder(HttpServletRequest req, String path) {
	File folder = new File(path);
	try {
		if(folder.exists()) {
			File[] folderList = folder.listFiles();
			
			for(int i=0; i<folderList.length; i++) {
				if(folderList[i].isFile()) {
					folderList[i].delete();
				}else {
					deleteFolder(req,folderList[i].getPath());
				}
			}
			folder.delete(); //폴더 삭제
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

	
}

@Override
public List<AttVO> selectBoardFile(int boardId) {
	// TODO Auto-generated method stub
	return mapper.selectBoardFile(boardId);
}

@Override
public void delete(int boardId) {
	mapper.delete(boardId);
	mapper.deleteBoardFile(boardId);
	
}

@Override
public List<FaqVO> selectFaq() {
	// TODO Auto-generated method stub
	return mapper.selectFaq();
}

@Override
public void insertHeart(MemberVO memberVO) {
	mapper.insertHeart(memberVO);
	
}

@Override
public List<MemberVO> selectinter(String companyId) {
	// TODO Auto-generated method stub
	return mapper.selectinter(companyId);
}

@Override
public void deleteHeart(MemberVO member) {
	mapper.deleteHeart(member);
	
}

@Override
public CompanyVO getCompanyInt(int companyId) {
	// TODO Auto-generated method stub
	return mapper.getCompanyInt(companyId);
}

@Override
public void createTag(keywordAnnoVO tagVO) {
	mapper.createTag(tagVO);
	
}

@Override
public List<keywordAnnoVO> seleteKeyword(int annoId) {
	// TODO Auto-generated method stub
	return mapper.selectKeyword(annoId);
}

@Override
public List<AnnoVO> ajaxAnnoSearch(List<String> jsonObj) {
	// TODO Auto-generated method stub
	Map<String, List<String>> map = new HashMap<>();
	map.put("searchList", jsonObj);
	return mapper.ajaxAnnoSearch(map);
}

@Override
public List<keywordAnnoVO> seleteComKeyword(String companyId) {
	// TODO Auto-generated method stub
	return mapper.seleteComKeyword(companyId);
}

@Override
public List<ReviewVO> getReview(String companyId) {
	// TODO Auto-generated method stub
	return mapper.getReview(companyId);
}

@Override
public BoardVO notice(int boardId) {
	// TODO Auto-generated method stub
	return mapper.notice(boardId);
}

@Override
public List<AnnoVO> ajaxAnnoRegionSearch(List<String> jsonObj) {
	Map<String, List<String>> map = new HashMap<>();
	map.put("searchList", jsonObj);
	return mapper.ajaxAnnoRegionSearch(map);
}

@Override
public List<AnnoVO> ajaxAnnoJobSearch(List<String> jsonObj) {
	Map<String, List<String>> map = new HashMap<>();
	map.put("searchList", jsonObj);
	return mapper.ajaxAnnoJobSearch(map);
}

@Override
public List<AnnoVO> selectAnnoList() {
	// TODO Auto-generated method stub
	return mapper.selectAnnoList();
}

@Override
public MemberVO detailMem(String memId) {
	// TODO Auto-generated method stub
	return mapper.detailMem(memId);
}

@Override
public void proposal(ProposalVO proposalVO) {
	mapper.proposal(proposalVO);
	
}

@Override
public List<MemberVO> selectProposalMember(String companyId) {
	// TODO Auto-generated method stub
	return mapper.selectProposalMember(companyId);
}

@Override
public MemberVO detailMemInt(int resumeId) {
	// TODO Auto-generated method stub
	return mapper.detailMemInt(resumeId);
}

@Override
public void updateApply(ApplyVO applyVO) {
	mapper.updateApply(applyVO);
	
}

@Override
public List<MemberVO> selectApplyAnno(int annoId) {
	// TODO Auto-generated method stub
	return mapper.selectApplyAnno(annoId);
}

@Override
public void updateApplyResult(EvaluationVO evaluationVO) {
	// TODO Auto-generated method stub
	 mapper.updateApplyResult(evaluationVO);
}

@Override
public List<ReviewVO> getReviewAll() {
	// TODO Auto-generated method stub
	return mapper.getReviewAll();
}

@Override
public List<ProdVO> adList(String companyId) {
	// TODO Auto-generated method stub
	return mapper.adList(companyId);
}

@Override
public List<MemberVO> selectApplyMemList(int annoId) {
	// TODO Auto-generated method stub
	return mapper.selectApplyMemList(annoId);
}

@Override
public List<BoardVO> noticeList5() {
	// TODO Auto-generated method stub
	return mapper.noticeList5();
}

@Override
public MemberVO selectApplyMemId(Map<String, Object> memApplyMap) {
	// TODO Auto-generated method stub
	return mapper.selectApplyMemId(memApplyMap);
}

@Override
public Map<String, Object> getAvgPay(String companyMain) {
	// TODO Auto-generated method stub
	return mapper.getAvgPay(companyMain);
}

@Override
public List<MemberVO> getComMemList(String companyName) {
	// TODO Auto-generated method stub
	return mapper.getComMemList(companyName);
}

@Override
public List<MemberVO> getApplyMemList(String companyName) {
	// TODO Auto-generated method stub
	return mapper.getApplyMemList(companyName);
}


//@Override
//public ResumeVO resume(String memId) {
//	// TODO Auto-generated method stub
//	return mapper.resume(memId);
//}




}