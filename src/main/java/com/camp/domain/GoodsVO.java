package com.camp.domain;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class GoodsVO {


	private int goods_id; //상품번호
	private String goods_name; //상품명
	private int goods_pri; //상품가격
	private String goods_content; //상품설명
	private int goods_type_id; //상품분류
	private int goods_count; //입고수량
	private String goods_filename; //파일이름
	private long goods_fsize; //파일용량
	private String goods_filename2; //파일이름
	private long goods_fsize2; //파일용량


	MultipartFile file;
	MultipartFile file2;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;

		if(!file.isEmpty()) { //파일이 있다면!
			//MultipartFile에서 파일명과 크기만 얻어오기 -> DB입력
			this.goods_filename = file.getOriginalFilename();//파일명
			this.goods_fsize = file.getSize();//파일크기
			System.out.println("여기는VO"+this.goods_filename);
			System.out.println("여기는VO"+this.goods_fsize);

			File f=  new File("D:\\springwork\\TEST2\\src\\main\\webapp\\resources\\upload\\"+goods_filename);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				System.out.println("파일전송실패"+e.getMessage());
				e.printStackTrace();
			}
		}
	}

	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;

		if(!file.isEmpty()) { //파일이 있다면!
			//MultipartFile에서 파일명과 크기만 얻어오기 -> DB입력
			this.goods_filename2 = file2.getOriginalFilename();//파일명
			this.goods_fsize2 = file2.getSize();//파일크기

			System.out.println("여기는VO"+this.goods_filename2);
			System.out.println("여기는VO"+this.goods_fsize2);
			File f=  new File("D:\\springwork\\TEST2\\src\\main\\webapp\\resources\\upload\\"+goods_filename2);
			try {
				file2.transferTo(f);
			} catch (Exception e) {
				System.out.println("파일전송실패"+e.getMessage());
				e.printStackTrace();
			}
		}else {
			System.out.println("파일실패");
		}
	}


	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public int getGoods_pri() {
		return goods_pri;
	}
	public void setGoods_pri(int goods_pri) {
		this.goods_pri = goods_pri;
	}
	public String getGoods_content() {
		return goods_content;
	}
	public void setGoods_content(String goods_content) {
		this.goods_content = goods_content;
	}
	public String getGoods_filename() {
		return goods_filename;
	}
	public void setGoods_filename(String goods_filename) {
		this.goods_filename = goods_filename;
	}


	public long getGoods_fsize() {
		return goods_fsize;
	}
	public void setGoods_fsize(long goods_fsize) {
		this.goods_fsize = goods_fsize;
	}

	public int getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(int goods_count) {
		this.goods_count = goods_count;
	}
	public int getGoods_type_id() {
		return goods_type_id;
	}
	public void setGoods_type_id(int goods_type_id) {
		this.goods_type_id = goods_type_id;
	}


	public String getGoods_filename2() {
		return goods_filename2;
	}
	public void setGoods_filename2(String goods_filename2) {
		this.goods_filename2 = goods_filename2;
	}
	public long getGoods_fsize2() {
		return goods_fsize2;
	}
	public void setGoods_fsize2(long goods_fsize2) {
		this.goods_fsize2 = goods_fsize2;
	}
}