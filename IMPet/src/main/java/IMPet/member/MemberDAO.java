package IMPet.member;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;


@Repository(value="memberDAO")
public class MemberDAO extends AbstractDAO{
	
	
	//전체 화원 정보 가져오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception{
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("MemberSQL.selectAll");
		
		return list;
	}
	
	////회원 정보 가져오기 selectLogInOne 과 동일한 기능임!
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectOne", map);
		
		return view;
	}
	
	//회원 정보 가져오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectLogInOne(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectLogInOne", map);		
		
		return view;
	}	

	//회원 여부확인
	@SuppressWarnings("unchecked")
	public int selectLogInCount(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectLogInCount", map);
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
	//회원가입
	public void insert(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		insert("MemberSQL.insert", map);
	}
	

	
	//회원 ID 중복 여부 확인
	@SuppressWarnings("unchecked")
	public int selectIDdistinctCount(Map<String, Object> map) throws Exception {
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectIDdistinctCount", map);
			
		int count = Integer.parseInt(view.get("COUNT").toString());		
		
		return count;
	}
	
}
