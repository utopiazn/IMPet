package IMPet.serviceCenter.FAQ;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import IMPet.module.AbstractDAO;

@Repository(value="fAQDAO")
public class FAQDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("FAQSQL.selectAll");
		
		return list;  
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		
		System.out.println(map);
		
		Map<String, Object> view= (Map<String, Object>)selectOne("FAQSQL.selectOne", map);
		
		return view;  
	}
	
	public void insert(Map<String, Object> map) throws Exception{
		insert("FAQSQL.insert", map);
		
	}
	
	public void update(Map<String, Object> map) throws Exception{
		update("FAQSQL.update", map);
		
	}
	
	public void delete(Map<String, Object> map) throws Exception{
		delete("FAQSQL.delete", map);
		
	}

}
