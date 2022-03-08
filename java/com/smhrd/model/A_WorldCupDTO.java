package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class A_WorldCupDTO {
	int s_num;	 // 번호(시퀀스) - 정렬된 것 PK
	String s_id; // 술 이름 - 안주 이름
	String s_img; // 이미지 링크 - 안주 이미지
	int s_cnt; // 그냥 카운터
}
