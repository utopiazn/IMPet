package IMPet.serviceCenter.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface NoticeService {

	public List<Map<String, Object>> selectAll() throws Exception;

	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;

}
