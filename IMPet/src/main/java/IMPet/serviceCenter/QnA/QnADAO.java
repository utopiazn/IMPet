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

}
