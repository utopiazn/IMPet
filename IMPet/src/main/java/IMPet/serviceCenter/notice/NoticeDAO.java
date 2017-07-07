package IMPet.serviceCenter.notice;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.datasource.SimpleDriverDataSource;
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
		
		public void insert(Map<String, Object> map) throws Exception{
			insert("NoticeSQL.insert", map);
			
		}
		
		public void update(Map<String, Object> map) throws Exception{
			
			System.out.println("전:"+map);
			
			String day = map.get("notice_Date").toString();
		
			java.util.Date date = (java.util.Date)IMPet.util.ProjectUtil.changeUtilDate(day);
			java.sql.Date date1 = IMPet.util.ProjectUtil.changeUtilSqlDate(date);
			map.put("notice_Date", date1);
			
			System.out.println("후:"+map);	
			
			
			update("NoticeSQL.update", map);
			
		}
		
		public void delete(Map<String, Object> map) throws Exception{
			delete("NoticeSQL.delete", map);
			
		}
		
		
		
	}	

