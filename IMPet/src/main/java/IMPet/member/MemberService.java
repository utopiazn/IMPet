package IMPet.member;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberService {
	
	public List<Map<String, Object>> selectAll() throws Exception;
	
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception;
	
	
}
