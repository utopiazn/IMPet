package IMPet.serviceCenter.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="noticeDAO")
	public class NoticeDAO extends AbstractDAO{
		
		@SuppressWarnings("unchecked")
		public List<Map<String, Object>> selectAll() throws Exception {
			
			List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("NoticeSQL.selectAll");
			
			return list;  
		}
		
		@SuppressWarnings("unchecked")
		public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
			
			System.out.println(map);
			
			Map<String, Object> view= (Map<String, Object>)selectOne("NoticeSQL.selectOne", map);
			
			return view;  
		}
	}	

