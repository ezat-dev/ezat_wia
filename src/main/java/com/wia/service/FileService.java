package com.wia.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {

	public String saveFile(String path, MultipartFile file)
		throws IllegalStateException, IOException;

	public String saveFile(String path, String localPath, MultipartFile file)
		throws IllegalStateException, IOException;

	public String inOutSaveFile(String filePath, String lotno, MultipartFile file);
	
	
	
}
