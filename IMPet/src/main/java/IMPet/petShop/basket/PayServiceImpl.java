package IMPet.petShop.basket;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import IMPet.member.MemberDAO;

@Service(value="payService")
public class PayServiceImpl implements PayService {
	
	@Resource(name="payDAO")
	private PayDAO payDAO;
	
	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public Map<String, Object> selectAll(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		
		List<Map<String, Object>> payListMap = payDAO.selectAll(map);
		
		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("payList", payListMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		Map<String, Object> payViewMap = payDAO.selectOne(map);
		
		Map<String, Object> memMap = memberDAO.selectOne(map);
		
		resultMap.put("payView", payViewMap);
		resultMap.put("member", memMap);
		
		return resultMap;
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		
		payDAO.insert(map);		
	}

	@Override
	public void delete(Map<String, Object> map) throws Exception {

		payDAO.delete(map);		
	}

}
