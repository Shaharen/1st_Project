package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class A_MemberDTO {
	private String id; //id
	private String pw; //pw
	private String nick; // �г���
	private String phone; // ��ȭ��ȣ
	private String birth; // �������
	private int sex; //����
	
}
