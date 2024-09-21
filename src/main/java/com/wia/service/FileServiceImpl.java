package com.wia.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileServiceImpl implements FileService{

	@Override
	public String saveFile(String path, MultipartFile file) throws IllegalStateException, IOException {
		if(!file.isEmpty()) {	//파일이 있다면
			String filename = file.getOriginalFilename().replace("#","_");
			File f = new File(path, filename);
			
			
			
			long time = System.currentTimeMillis(); //현재 시간을 밀리세컨드로 표현
			int index = filename.lastIndexOf('.'); //파일명 뒤에서부터 .이라는 부분 찾기
			String f_name = filename.substring(0, index); //확장자의 앞에만
			String f_ext = filename.substring(index); //뒤에 확장자만
			filename = f_name + "_" + time + f_ext; // 파일명_시간.확장자
			f = new File(path, filename);
			
			filename = f_name +"_"+ time + f_ext;
			
			file.transferTo(f);

			return filename;
		}
		return "no_file";
	}

	@Override
	public String saveFile(String path, String localPath, MultipartFile file)
			throws IllegalStateException, IOException {
		if(!file.isEmpty()) {	//파일이 있다면
			String filename = file.getOriginalFilename().replace("#","_");
			File f = new File(path, filename);
			
			File localF = new File(localPath, filename);
			
			long time = System.currentTimeMillis(); //현재 시간을 밀리세컨드로 표현
			int index = filename.lastIndexOf('.'); //파일명 뒤에서부터 .이라는 부분 찾기
			String f_name = filename.substring(0, index); //확장자의 앞에만
			String f_ext = filename.substring(index); //뒤에 확장자만
			filename = f_name + "_" + time + f_ext; // 파일명_시간.확장자
			f = new File(path, filename);
			localF = new File(localPath, filename);
			
			filename = f_name +"_"+ time + f_ext;
			
//			file.transferTo(f);
//			file.transferTo(localF);
			
//			Path paths = Paths.get(path+filename).toAbsolutePath();
			Path l_paths = Paths.get(localPath+filename).toAbsolutePath();
			
//			file.transferTo(paths.toFile());
			file.transferTo(l_paths.toFile());

//			System.out.println("파일명 : "+path+filename);
//			System.out.println("파일명2 : "+localPath+filename);

			return filename;
		}
		return "no_file";
	}

	@Override
	public String inOutSaveFile(String path, String lotno, MultipartFile file) {
		if(!file.isEmpty()) {	//파일이 있다면
			String filename = file.getOriginalFilename().replace("#","_");
			File f = new File(path, filename);
			
			
			
			int index = filename.lastIndexOf('.'); //파일명 뒤에서부터 .이라는 부분 찾기
			String f_ext = filename.substring(index); //뒤에 확장자만
			filename = lotno + f_ext; // 파일명_시간.확장자
			f = new File(path, filename);
			
//			filename = f_name +"_"+ time + f_ext;
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			return filename;
		}
		return "no_file";
	}
}
