package IMPet.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class ProjectUtil {

	// 현재 날짜 : jsp에서 쓰기워한 로직 클래스 객체 생성후 currentDate변수를 그냥 가져다 쓰자.
	public String currentDate = null;

	public ProjectUtil() {
		currentDate = getDate();
	}

	public String getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}

	// 현재 날짜 : java에서는 이 함수 호출
	public String getDate() {

		Date currentDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		String cDate = dateFormat.format(currentDate);
		// System.out.println("현재날짜 : "+cDate);

		return cDate;
	}

	// 프로젝트 위치 경로
	public String getPath() {
		String s = this.getClass().getResource("/").getPath();
		String sc = s.substring(0, s.indexOf(".metadata"));

		System.out.println("프로젝트 전까지의 경로: " + sc);

		return sc;
	}

	/*
	 * //이미지업로드 설정 public static void imageUplode(ImageBean paramClass, int no,
	 * String uploadFileName, String fileUploadPath, File upload, String sql)
	 * throws IOException, SQLException{
	 * 
	 * try{ //파일을 서버에 저장 File destFile = new File(fileUploadPath +
	 * uploadFileName); System.out.println(destFile.getPath());
	 * FileUtils.copyFile(upload, destFile); System.out.println("서버에 이미지 저장.");
	 * 
	 * //파일 정보 설정. paramClass.setNo(no); //번호
	 * paramClass.setImage(uploadFileName); //이미지 이름
	 * System.out.println("이미지 정보 파라미터 설정.");
	 * 
	 * //파일 정보 업데이트. sqlMapper.update(sql, paramClass);
	 * System.out.println("이미지 정보 업데이트."); }catch(Exception e){} }
	 */
	
	
	public Map<String, Object> UploadFile_Event(Map<String, Object> commandMap, HttpServletRequest request, String uploadPath,
			int num) throws IOException {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		int count = 0;
		
		
		
		
		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			System.out.println("파일이름" + multipartFile.getName());
			
			if (multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = "IMAGE_" + num + "_" + count++ + originalFileExtension;
				
				
				System.out.println(storedFileName);
				
				File file = new File(uploadPath + storedFileName);
				multipartFile.transferTo(file);
				
				commandMap.put(multipartFile.getName(), storedFileName);
			}
		}
		return commandMap;
	}
	
	public Map<String, Object> UpdateFile_Event(Map<String, Object> commandMap, HttpServletRequest request, String uploadPath) throws IOException {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFile = null;
		String originalFileExtension = null;
		String storedFileName = null;

	
		String[] originalImg = request.getParameterValues("ORIGINALIMG");
		
		
		System.out.println( originalImg[0]);
		
		while (iterator.hasNext()) {
			
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			
			
			if (multipartFile.isEmpty() == false) {  
				
				originalFileName = multipartFile.getName().substring(multipartFile.getName().lastIndexOf("I"));
				
				for(String a : originalImg){
					
					
					if(originalFileName.equals(a)) {
																
						File removeFile = new File(uploadPath, a);
						
						
					
						removeFile.delete();
						
						originalFile = multipartFile.getOriginalFilename();
						originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
						storedFileName = a.substring(0, a.lastIndexOf(".")) + originalFileExtension;
														
						File file = new File(uploadPath, storedFileName);
						multipartFile.transferTo(file);
						
						commandMap.put(multipartFile.getName().substring(0,multipartFile.getName().lastIndexOf("I")-1), storedFileName);
			
					}
							
				}
								
			}
				
		}
		return commandMap;
	}

	

	// 상품 추가
	public Map<String, Object> UploadFile(Map<String, Object> commandMap, HttpServletRequest request, String uploadPath,
			int num) throws IOException {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		int count = 0;
		
		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			System.out.println("파일이름" + multipartFile.getName());
			
			if (multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = "IMAGE_" + num + "_" + count++ + originalFileExtension;
				
				File file = new File(uploadPath + storedFileName);
				multipartFile.transferTo(file);
				
				commandMap.put(multipartFile.getName(), storedFileName);
			}
		}
		return commandMap;
	}
	
	// 상품 이미지 수정
	public Map<String, Object> UpdateFile(Map<String, Object> commandMap, HttpServletRequest request, String uploadPath) throws IOException {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFile = null;
		String originalFileExtension = null;
		String storedFileName = null;

	
		String[] originalImg = request.getParameterValues("ORIGINALIMG");
		
		
		while (iterator.hasNext()) {
			
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			
			if (multipartFile.isEmpty() == false) {  
				
				originalFileName = multipartFile.getName().substring(multipartFile.getName().lastIndexOf("I"));
				
				for(String a : originalImg){

					if(originalFileName.equals(a)) {
																
						File removeFile = new File(uploadPath, a);
						removeFile.delete();
						
						originalFile = multipartFile.getOriginalFilename();
						originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
						storedFileName = a.substring(0, a.lastIndexOf(".")) + originalFileExtension;
														
						File file = new File(uploadPath, storedFileName);
						multipartFile.transferTo(file);
						
						commandMap.put(multipartFile.getName().substring(0,multipartFile.getName().lastIndexOf("I")-1), storedFileName);
			
					}
							
				}
								
			}
				
		}
		return commandMap;
	}

	// 상품 수정 시 원본 삭제 후 수정

	// String - sql.Date 변환 (day=yyyy-MM-dd 형식이어야함)
	public static java.sql.Date changeSqlDate(String day) {
		java.sql.Date date = java.sql.Date.valueOf(day);
		return date;
	}

	// String - sql.Timestamp 변환 (day=yyyy-MM-dd hh:mm:ss.s 형식이어야함)
	public static java.sql.Timestamp changeSqlTimestamp(String day) {
		java.sql.Timestamp timestamp = java.sql.Timestamp.valueOf(day);
		return timestamp;
	}

	// String - util.Date 변환
	public static java.util.Date changeUtilDate(String day) throws Exception {

		java.util.Date date = new java.text.SimpleDateFormat("yyyyy-MM-dd HH:mm:ss").parse(day);
		return date;
	}

	// util.Date - sql.Date 변환
	public static java.sql.Date changeUtilSqlDate(java.util.Date day) {

		java.sql.Date date = new java.sql.Date(day.getTime());

		return date;
	}

}
