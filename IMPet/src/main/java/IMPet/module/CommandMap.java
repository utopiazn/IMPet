package IMPet.module;


import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class CommandMap {

	Map<String,Object> map = new HashMap<String,Object>();
	
	public Object get(String key){
		
		return map.get(key);
	}
	
	public void put(String key, Object value){
		
		
		System.out.println("key"+key);
		
		map.put(key, value);
	}
	
	 
	public void MapInfoList(){
		
		  System.out.println("시작" + map.size());	
		  
		  if(map.size() <1){			  
			  System.out.println("CommandMap 에 넘오는 값이 없습니다.");
		  }else{
			  System.out.println(map);
		  }
		  System.out.println("끝");
	}
	
    
	public Object remove(String key){
    	
    	return map.remove(key);
    }
	
	public boolean containsKey(String key){
		
		return map.containsKey(key);
	}
	
	public boolean containsValue(Object value){
	
		return map.containsValue(value);
	}
	     
	public void clear(){
	        map.clear();
	}
	     
    public Set<Entry<String, Object>> entrySet(){

    	return map.entrySet();
    }
     
    public Set<String> keySet(){
        
    	return map.keySet();
    }
     
    public boolean isEmpty(){
        
    	return map.isEmpty();
    }
     
    public void putAll(Map<? extends String, ?extends Object> m){
        
    	map.putAll(m);
    }
     
    public Map<String,Object> getMap(){
        
    	return map;
    }

	
}

