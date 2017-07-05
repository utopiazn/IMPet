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
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectOne(map);
	}

	@Override
	public Map<String, Object> selectLogInCheck(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectLogInCheck(map);
	}

}
