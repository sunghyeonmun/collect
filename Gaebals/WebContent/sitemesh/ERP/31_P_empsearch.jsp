<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>�λ���� ������ �Դϴ�.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>���� ��Ȳ ��ȸ</h1>
		</div>

		<fieldset>
			<legend>��� �˻�</legend>
			<div align="left">
				<table>
					<tr>
						<th>�����</th>
						<td><input type="text" name="name" size="40"></td>
					</tr>
					<tr>
						<th>�μ�</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="����">001</option>
								<option value="����">002</option>
								<option value="����">003</option>
								<option value="�λ�">004</option>
						</select> <input type="text" name="deptno"></td>
					</tr>
					<tr>
						<th>������Ʈ</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="����������Ʈ">001</option>
								<option value="����������Ʈ">002</option>
								<option value="����������Ʈ">003</option>
								<option value="�λ�������Ʈ">004</option>
						</select> &lt; <input type="text" name="project_name"></td>
					</tr>
					<tr>
						<th>�Ի籸��
						<th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="special">Ưä</option>
								<option value="middel">����</option>
								<option value="final">����</option>
						</select> &lt; <input type="text" name="jopClassification"></td>
					</tr>
					<tr>
						<th>��å</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="�븮">�븮</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="����">����</option>
								<option value="����">����</option>
						</select> &lt; <input type="text" name="duty"></td>
					</tr>
					<tr>
						<th>�Ի���
					</tr>
					<td><input type="date" name="hiredate">
					<th>�ڰ���</th>
					<td><input type="text" name="cert"></td>
					<th>�������</th>
					<td><input type="date" name="birthday"></td>
					<th>��Ÿ</th>
					<td><input type="checkbox" name="others" checked="���������"></td>
					</tr>
				</table>
			</div>
		</fieldset>


		<input class="button" type="submit" value="�˻�">
</body>
</html>