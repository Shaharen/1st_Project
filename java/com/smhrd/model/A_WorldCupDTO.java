package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class A_WorldCupDTO {
	int s_num;	 // ��ȣ(������) - ���ĵ� �� PK
	String s_id; // �� �̸� - ���� �̸�
	String s_img; // �̹��� ��ũ - ���� �̹���
	int s_cnt; // �׳� ī����
}
