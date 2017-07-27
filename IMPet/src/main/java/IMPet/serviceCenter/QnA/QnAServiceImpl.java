package IMPet.serviceCenter.QnA;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;



@Service(value = "qnAService")
public class QnAServiceImpl implements QnAService{
	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "qnADAO")
	private QnADAO qnADAO;

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {

		return qnADAO.selectAll();
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		return qnADAO.selectOne(map);
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		qnADAO.insert(map);
		
	}

	@Override
	public void update(Map<String, Object> map) throws Exception {
		qnADAO.update(map);
		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {
		qnADAO.delete(map);
		
	}

	@Override
	public void insertRef(Map<String, Object> map) throws Exception {
		qnADAO.insertRef(map);
		
	}
	
	@Override
	public List<Map<String, Object>> selectMy(String id) throws Exception {

		return qnADAO.selectMy(id);
	}
	
	@Override
	public void addViewNum(Map<String, Object> map) throws Exception {
		qnADAO.addViewNum(map);
		
	}

}
