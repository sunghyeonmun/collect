//28 <script src="../../View/js/P_script.js"></script>


 
function addrow(){
	ta=document.getElementById('ta');
	row =ta.insertRow(ta.rows.length);
	cell1=row.insertCell(0);
	cell2=row.insertCell(1);
	cell3=row.insertCell(2);
	cell4=row.insertCell(3);
	cell5=row.insertCell(4);
	cell6=row.insertCell(5);
	cell1.innerHTML = '<input type="text" name="period" style="border:none"size="7"/>';	
	cell2.innerHTML = '<input type="text" name="school_name" style="border:none"size="7"/>';
	cell3.innerHTML = '<input type="text" name="major" style="border:none"size="7"/>';
	cell4.innerHTML = '<input type="text" name="complete" style="border:none"size="7"/>';
	cell5.innerHTML = '<input type="text" name="stead" style="border:none"size="7"/>';
	cell6.innerHTML = '<input type="text" name="others" style="border:none"size="7"/>';
	
}
function delRow(){
	ta=document.getElementById('ta');
	 if (ta.rows.length < 2) return;
	ta.deleteRow(ta.rows.length -1);
}
function addrow1(){
	ta=document.getElementById('ta1');
	row =ta1.insertRow(ta1.rows.length);
	cell1=row.insertCell(0);
	cell2=row.insertCell(1);
	cell3=row.insertCell(2);
	cell4=row.insertCell(3);
	cell5=row.insertCell(4);
	cell6=row.insertCell(5);
	cell7=row.insertCell(6);
	cell8=row.insertCell(7);
	cell9=row.insertCell(8);
	cell1.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
	cell2.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
	cell3.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
	cell4.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
	cell5.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
	cell6.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';	
	cell7.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';	
	cell8.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';	
	cell9.innerHTML ="<p class='filebox' align='center'><label for='ex_file'>첨부</label><input type='file' id='ex_file'></p>";	
}
function delRow1(){
	ta1=document.getElementById('ta1');
	 if (ta1.rows.length < 2) return;
	ta1.deleteRow(ta1.rows.length -1);