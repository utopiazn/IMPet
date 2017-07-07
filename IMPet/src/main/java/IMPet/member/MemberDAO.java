package IMPet.member;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;


@Repository(value="memberDAO")
public class MemberDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception{
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("MemberSQL.selectAll");
		
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectOne", map);
		
		return view;
	}
	
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectLogInOne(Map<String, Object> map) throws Exception {
		
	//	System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectLogInOne", map);
		
		return view;
	}
	

	@SuppressWarnings("unchecked")
	public int selectLogInCount(Map<String, Object> map) throws Exception {
		
	//	System.out.println(map);
		
		
		Map<String, Object> view= (Map<String, Object>)selectOne("MemberSQL.selectLogInCount", map);
	
		System.out.println("확인:"+view);
	
		
		int count = Integer.parseInt(view.get("COUNT").toString());
		
		//int count = (Integer)view.get("COUNT");
		
		System.out.println("체크 확인:"+count);
		
		//int a = Integer.parseInt((String) view.get("count"));
		
		
		
		return count;
	}
	

}
