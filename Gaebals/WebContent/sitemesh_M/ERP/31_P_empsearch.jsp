<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>[�λ�]�λ���� ������ �Դϴ�.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
			<div style="float: left;"><h1>�λ� ������ ������ �Դϴ�.</h1></div><br><br>
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>���� ��Ȳ ��ȸ</h1>
		</div>
<br>
		<fieldset>
			<legend>��� �˻�</legend>
			<div align="left">
				<table style="width: 800">
					<tr>
						<th>�����</th>
						<td><input type="text" name="name"></td>
						<th>�������</th>
						<td><input type="date" name="birthday"></td>
					</tr>
					<tr>
						<th>�μ�</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="18">������</option>
								<option value="19">ȸ��</option>
								<option value="44">IT������</option>
								<option value="35">������</option>
								<option value="20">�λ���</option>
						</select></td>
						<th>������Ʈ</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="1">ȸ���������� ������Ʈ</option>
								<option value="2">����â�� ��ʸ�Ʈ</option>
								<option value="3">������ ���� ����</option>
								<option value="4">���� ���� ��ȹ ������Ʈ</option>
						</select></td>
					</tr>
					<tr>
						<th>�Ի籸��</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="special">Ưä</option>
								<option value="middel">����</option>
								<option value="final">����</option>
						</select></td>
						<th>��å</th>
						<td><select>
								<option selected>�����ϼ���</option>
								<option value="50">���</option>
								<option value="51">����</option>
								<option value="52">�븮</option>
								<option value="53">����</option>
								<option value="54">����</option>
								<option value="55">�̻�</option>
						</select></td>
					</tr>
					<tr>
						<th>�Ի���</th>
						<td><input type="date" name="hiredate"></td>
						<th>�ڰ���</th>
						<td><input type="text" name="cert"></td>
						<th>��Ÿ</th>
						<td><input type="checkbox" name="others" checked="���������"></td>
					</tr>
				</table>
			</div>
		</fieldset>

<br>
		<input class="button" type="submit" value="�˻�">
</body>
</html>