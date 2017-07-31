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
		
		String day = map.get("QnA_Date").toString();
	
		java.util.Date date = (java.util.Date)IMPet.util.ProjectUtil.changeUtilDate(day);
		System.out.println("date"+date);
	
		map.put("QnA_Date", date);
		
		System.out.println("후:"+map);	
		
		
		update("QnASQL.update", map);
		
	}
	
	public void delete(Map<String, Object> map) throws Exception{
		delete("QnASQL.delete", map);
		
	}
	
	public void insertRef(Map<String, Object> map) throws Exception{
		insert("QnASQL.insertRef", map);
		
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMy(String id) throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("QnASQL.selectMy", id);
		return list;  
	}
	
	public void addViewNum(Map<String, Object> map) throws Exception{
		
		update("QnASQL.addViewNum", map);
		
	}
	
	public Map<String, Object> selectKey() throws Exception {
		
		
		return selectOne("QnASQL.selectKey");
	}
}
