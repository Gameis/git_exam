<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function load() {
		document.getElementById("name").value = "${memberDTO.name}";
		document.getElementById("id").value = "${memberDTO.id}";
		if(${memberDTO.gender } == 0) {
			document.getElementById("man").checked = true;
		}
		
		else {
			document.getElementById("woman").checked = true;
		}
		document.getElementById("email1").value = "${memberDTO.email1}";
		document.getElementById("email2").value = "${memberDTO.email2}"; 
		document.getElementById("tel1").value = "${memberDTO.tel1}";
		document.getElementById("tel2").value = "${memberDTO.tel2}";
		document.getElementById("tel3").value = "${memberDTO.tel3}";
		document.getElementById("zipcode").value = "${memberDTO.zipcode}";
		document.getElementById("addr1").value = "${memberDTO.addr1}";
		document.getElementById("addr2").value = "${memberDTO.addr2}";
	}
</script>
</head>
<body onload="load()">
<form name="modifyForm" method="post" action="/mvcmember/member/modify.do">
	<table border="1" cellspacing="0" cellpadding="5">
		<tr>
			<td width="100" align="center">이름</td>
			<td>
				<input type="text" name="name" id="name" placeholder="이름 입력">
				<div id= "nameDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">아이디</td>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디 입력" readonly>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd" size="30" placeholder="비밀번호 입력">
				<div id= "pwdDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">재확인</td>
			<td>
				<input type="password" name="repwd" id="repwd" size="30" placeholder="비밀번호 입력">
				<div id= "repwdDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td width="100" align="center">성별</td>
			<td>
				<input type="radio" name="gender" id = "man" value="0">남
				<input type="radio" name="gender" id = "woman" value="1">여
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">이메일</td>
			<td>
				<input type="text" name="email1" id="email1">
				@
				<input type="text" name="email2" id="email2" list="email2" placeholder="직접입력">
				<datalist id="email2">
					<option value="naver.com">naver.com
					<option value="daum.net">daum.net
					<option value="gmail.com">gmail.com
				</datalist>
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">핸드폰</td>
			<td>
				<select name="tel1" id="tel1" style="width: 70px;">
					<option value="010" selected>010</option>
					<option value="011" >011</option>
					<option value="019" >019</option>
				</select>
				-
				<input type="text" name="tel2" id="tel2" size="6" maxlength="4">
				-
				<input type="text" name="tel3" id="tel3" size="6" maxlength="4">
			</td>
		</tr>
		
		<tr>
			<td width="100" align="center">주소</td>
			<td>
				<input type="text" name="zipcode" id="zipcode" readonly="readonly">
				<input type="button" value="우편번호 검색"><br>
				<input type="text" name="addr1" id="addr1" size="60" placeholder="주소"><br>
				<input type="text" name= "addr2" id="addr2" size="60" placeholder="상세주소">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="writeBtn" value="회원정보수정">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
</body>
</html>