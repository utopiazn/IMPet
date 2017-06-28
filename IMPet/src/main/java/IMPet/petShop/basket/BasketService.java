package IMPet.petShop.basket;

import java.util.List;
import java.util.Map;

public interface BasketService {
	
	List<Map<String, Object>> selectAll() throws Exception;

}
