package kr.or.ddit.board.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.service.IMainService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.mapper.BoardMainMapper;

@Service
public class MainServiceImpl implements IMainService {

	@Inject
	private BoardMainMapper mapper;
	
	@Override
	public List<BoardVO> selectBoardMainList() {
		return mapper.selectBoardMainList();
	}

	@Override
	public List<BoardVO> myBoardList(String memId) {
		return mapper.myBoardList(memId);
	}


}
