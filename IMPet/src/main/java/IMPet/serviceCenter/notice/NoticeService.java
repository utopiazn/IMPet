package IMPet.serviceCenter.notice;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

@Repository
public interface NoticeService {

	public List<Map<String, Object>> selectAll() throws Exception;

	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	public void insert(Map<String, Object> map) throws Exception;
	
	public void update(Map<String, Object> map) throws Exception;
	
	public void delete(Map<String, Object> map) throws Exception;

}
