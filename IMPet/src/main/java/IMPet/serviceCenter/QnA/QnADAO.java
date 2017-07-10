package IMPet.serviceCenter.QnA;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="qnADAO")
public class QnADAO  extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("QnASQL.selectAll");
		return list;  
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("QnASQL.selectOne", map);
		
		return view;  
	} 
	
	public void insert(Map<String, Object> map) throws Exception{
		insert("QnASQL.insert", map);
		
	}
	
	public void update(Map<String, Object> map) throws Exception{
		
		System.out.println("전:"+map);
		
		String day = map.get("qnA_Date").toString();
	
		java.util.Date date = (java.util.Date)IMPet.util.ProjectUtil.changeUtilDate(day);
		java.sql.Date date1 = IMPet.util.ProjectUtil.changeUtilSqlDate(date);
		map.put("qnA_Date", date1);
		
		System.out.println("후:"+map);	
		
		
		update("QnASQL.update", map);
		
	}
	
	public void delete(Map<String, Object> map) throws Exception{
		delete("QnASQL.delete", map);
		
	}

}
