package kr.or.ddit.chat.controller;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.MediaUtils;
import kr.or.ddit.common.UploadFileUtils;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/chat")
public class AjaxFileController {

//	@Resource(name="uploadPath")
//	String uploadPath;

	private String uploadPath = "D:/A_TeachingMaterial/08_Framework/03.SPRING2/workspace_spring2/OneStep/src/main/webapp/resources/images/chat";

	// uploadAjax 메소드는 브라우저에서 넘겨받은 파일을 업로드하고 s_가 붙은 썸네일파일을 생성하는 기능을 담당한다.
	@ResponseBody
	@RequestMapping(value="/uploadFile",method=RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {
	
		String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(),file.getBytes());
		log.info("savedName >> " + savedName);
		String originalFilename = file.getOriginalFilename();
		log.info("originalFileName >> " + originalFilename);
		return new ResponseEntity<String>(originalFilename + "," + savedName, HttpStatus.CREATED);
	}

	@RequestMapping(value="/displayFile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> display(String fileName) throws Exception {
		log.info("/displayFile이 실행되는가??");
		
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		log.info("fileName >> " + fileName);

		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1); // 확장자 추출
			MediaType mType = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath + fileName);
			log.info("in >> " + in);
			if(mType != null) {
				headers.setContentType(mType);
			} else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""
						+ new String(fileName.getBytes("UTF-8"),"ISO-8859-1") + "\"");
			}
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		log.info("entity >> " + entity);
		return entity;
	}
}