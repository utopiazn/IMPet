package IMPet.member;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberService {
	
	public List<Map<String, Object>> selectAll() throws Exception;
	
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectLogInOne(Map<String, Object> map) throws Exception;
		
	public int  selectLogInCount(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void update(Map<String, Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;

	public int  selectIDdistinctCount(Map<String, Object> map) throws Exception;
	
	//ID 찾기 있는지 여부
	public int  selectFindIDCount(Map<String, Object> map) throws Exception;	
	//ID 찾기 정보 가져오기 확인
	public Map<String, Object> selectFindIDOne(Map<String, Object> map) throws Exception;
	
	//Pw 찾기 있는지 여부
	public int  selectFindPwCount(Map<String, Object> map) throws Exception;	
	//Pw 찾기 정보 가져오기 확인
	public Map<String, Object> selectFindPwOne(Map<String, Object> map) throws Exception;
	
	//회원 탈퇴 여부
	public void updateUserYN(Map<String, Object> map) throws Exception;
	
}
