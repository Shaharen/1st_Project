package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor


public class A_SearchDTO {
	
	
	private int sort;
	private String dr_id; //���̸�
	private String dr_flavor;//��
	private String dr_taste; //��
	private int dr_abv;//����
	private String dr_des;//����
	private String dr_img; //�̹��� ���
	private int dr_num;// ����
	
	
	
	
}
