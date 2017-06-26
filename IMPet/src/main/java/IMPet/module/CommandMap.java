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
	
	  
    @Override
	public String toString() {
		// TODO Auto-generated method stub
    	
    	  System.out.println("?ãú?ûë" + map.size());
    	
    	  
    	
    	for(String key : map.keySet()){
    		 
            String value = (String) map.get(key);
            		
 
            System.out.println(key+" : "+value);
 
        }
    	
    	  System.out.println("?Åù");
    	
		return super.toString();
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

