package IMPet.member;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;


import org.springframework.stereotype.Service;



@Service(value="memberService")
public class MemberServiceImpl implements MemberService {

	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectAll();
	}
	
	@Override
	public List<Map<String, Object>> selectRangeAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectRangeAll(map);
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectOne(map);
	}

	@Override
	public Map<String, Object> selectLogInOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectLogInOne(map);
	}

	@Override
	public int selectLogInCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectLogInCount(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		memberDAO.insert(map);
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		memberDAO.update(map);
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int selectIDdistinctCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectIDdistinctCount(map);
	}

	@Override
	public int selectFindIDCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectFindIDCount(map);
	}

	@Override
	public Map<String, Object> selectFindIDOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectFindIDOne(map);
	}

	@Override
	public int selectFindPwCount(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectFindPwCount(map);
	}

	@Override
	public Map<String, Object> selectFindPwOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectFindPwOne(map);
	}

	@Override
	public void updateUserYN(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		memberDAO.updateUserYN(map);
	}

	@Override
	public int selectMemberCount() throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectMemberCount();
	}



}
