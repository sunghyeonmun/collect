<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>[�λ�]�λ���� ������ �Դϴ�.</title>
<style>
h1{text-align:center;}
fieldset{margin:auto; width:800;}
</style>
</head>
<body>
<h1>��� ��� </h1>
<div>
<form>
<fieldset  >
	<legend>��� �˻�</legend>
	����� <input type="text" name="name" size="40"> 
	<br>
	�μ� <select>
	<option selected> �����ϼ��� </option>
	<option value="����">001</option>
	<option value="����">002</option>
	<option value="����">003</option>
	<option value="�λ�">004</option>
	</select>
	&lt;
	<input type="text" name="deptno">
	<br>
	������Ʈ <select>
	<option selected> �����ϼ��� </option>
	<option value="����������Ʈ">001</option>
	<option value="����������Ʈ">002</option>
	<option value="����������Ʈ">003</option>
	<option value="�λ�������Ʈ">004</option>
	</select>
	&lt;
	<input type="text" name="project_name">
	�Ի籸��<select>
	<option selected> �����ϼ��� </option>
	<option value="special">Ưä</option>
	<option value="middel">����</option>
	<option value="final">����</option>
	</select>
	&lt;
	<input type="text" name="jopClassification">
	<br>
	��å
	<select>
	<option selected>�����ϼ���</option>
	<option value="�븮">�븮</option>
	<option value="����">����</option>
	<option value="����">����</option>
	<option value="����">����</option>
	<option value="����">����</option>
	</select>
	&lt;
	<input type="text" name="duty">
	
	�Ի���<input type="date" name="hiredate"><br>
	�ڰ��� <input type="text" name="cert"> &lt; <br>
	������� <input type="date" name="birthday"><br>
	��Ÿ <input type="checkbox" name="others" checked="���������">
	
</fieldset>
</form>
</div>
<center><input class="button" type="submit" value="�˻�"></center>

</body>
</html>