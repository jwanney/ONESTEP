package kr.or.ddit.board.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.ServiceResult;
import kr.or.ddit.board.service.IGoodService;
import kr.or.ddit.mapper.GoodMapper;
import kr.or.ddit.vo.GoodVO;

@Service
public class GoodServiceImpl implements IGoodService {

	@Inject
	private GoodMapper mapper;
//
//	@Override
//	public void insertGood(GoodVO goodVO) {
//		mapper.insert(goodVO);
//	}


	@Override
	public void likeDown(GoodVO goodVO) {
		mapper.likeDown(goodVO);
	}

	@Override
	public ServiceResult likeUp(String memId, int boardId) {
		return mapper.likeUp(memId,boardId);
	}

	@Override
	public List<GoodVO> goodList(GoodVO goodVO) {
		// TODO Auto-generated method stub
		return mapper.goodList(goodVO);
	}

	@Override
	public void insertGood(GoodVO goodVO) {
		// TODO Auto-generated method stub
		mapper.insertGood(goodVO);
	}


//	@Override
//	public GoodVO findLike(int boardId, String memId) {
//		return mapper.findLike(boardId, memId);
//	}
//
//	



}
