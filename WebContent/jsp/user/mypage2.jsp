<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="user.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
		<div class="myContent">
					<div class="titleSection">
						<h3><img src="http://fiximage.10x10.co.kr/web2013/my10x10/tit_my_info_modify.gif" alt="개인정보 수정"></h3>
						<ul class="list">
							<li>고객님의 연락처와 개인정보등을 수정하실 수 있습니다.</li>
						</ul>
					</div>
					<br>
					<br>
					<div class="mySection">
						<!-- 나의 정보관리 -->
						<fieldset>
						<form name="frminfo" method="post" action="https://www.10x10.co.kr/my10x10/userinfo/membermodify_process.asp" style="margin:0px;">
						<input type="hidden" name="mode" value="infomodi">
						<input type="hidden" name="pflag" value="">
						<input type="hidden" name="isEmailChk" value="N">
						<input type="hidden" name="isMobileChk" value="N">
						<legend>나의 정보 수정</legend>
							<table class="baseTable rowTable docForm myInfoForm">
							<caption>나의 정보 수정</caption>
							<colgroup>
								<col width="140"> <col width=""> <col width="130">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">
									<span class="essential"><img src="http://fiximage.10x10.co.kr/web2013/common/blt_check_red.gif" alt="필수 입력정보"></span>
									<label for="memName">성명</label>
								</th>
								<td colspan="2"><input type="text" name="username" value="이은비" id="memName" class="txtInp" maxlength="30" style="width:178px;"></td>
							</tr>
							<tr>
								<th rowspan="3" scope="row">
									<span class="essential"><img src="http://fiximage.10x10.co.kr/web2013/common/blt_check_red.gif" alt="필수 입력정보"></span>
									본인인증
								</th>
							</tr>
							<tr>
								<td class="lineColor">
									<span class="rPad15 bulletDot">이메일</span>
									<input type="text" name="txEmail1" value="lob1224" onkeyup="chkChangeAuth(this.form,'E');" maxlength="32" title="이메일 아이디 입력" class="txtInp focusOn" style="width:118px;">
									<input type="hidden" name="orgUsermail" value="lob1224@hanmail.net">
									<input type="hidden" name="usermail" value="lob1224@hanmail.net">
									<span class="symbol">@</span>
									<input type="text" name="selfemail" onkeyup="chkChangeAuth(this.form,'E');" maxlength="80" value="hanmail.net" title="이메일 직접 입력" class="txtInp" style="width:118px;">
									<select name="txEmail2" onchange="NewEmailChecker();chkChangeAuth(this.form,'E');" title="이메일 서비스 선택" class="select offInput emailSelect" style="width:102px;">
										<option value="etc">직접입력</option>
										<option value="@hanmail.net">hanmail.net</option>
										<option value="@naver.com">naver.com</option>
										<option value="@hotmail.com">hotmail.com</option>
										<option value="@yahoo.co.kr">yahoo.co.kr</option>
										<option value="@hanmir.com">hanmir.com</option>
										<option value="@paran.com">paran.com</option>
										<option value="@lycos.co.kr">lycos.co.kr</option>
										<option value="@nate.com">nate.com</option>
										<option value="@dreamwiz.com">dreamwiz.com</option>
										<option value="@korea.com">korea.com</option>
										<option value="@empal.com">empal.com</option>
										<option value="@netian.com">netian.com</option>
										<option value="@freechal.com">freechal.com</option>
										<option value="@msn.com">msn.com</option>
										<option value="@gmail.com">gmail.com</option>
									</select>
								</td>
							</tr>
							
							<tr>
								<td class="lineColor">
									<span class="rPad05 bulletDot">휴대전화</span>
									<input type="hidden" name="orgUsercell" value="010-3356-7573">
									<select name="usercell1" title="휴대전화 앞자리 선택" class="select focusOn" style="width:78px;">
										<option value="010" selected="">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
									<span class="symbol">-</span>
									<input type="text" name="usercell2" value="3356" onkeyup="TnTabNumber('usercell2','usercell3',4);chkChangeAuth(this.form,'P');" maxlength="4" title="휴대전화 가운데자리 입력" class="txtInp focusOn" style="width:68px;">
									<span class="symbol">-</span>
									<input type="text" name="usercell3" value="7573" onkeyup="chkChangeAuth(this.form,'P');" maxlength="4" title="휴대전화 뒷자리 입력" class="txtInp focusOn" style="width:68px;">
								</td>
							</tr>


							<tr>
								<th scope="row">
									<span class="essential"><img src="http://fiximage.10x10.co.kr/web2013/common/blt_check_red.gif" alt="필수 입력정보"></span>
									<label for="pwConfirm">비밀번호 확인</label>
								</th>
								<td colspan="2">
									<input type="password" name="oldpass" maxlength="32" onkeypress="if (event.keyCode == 13) ChangeMyInfo(frminfo);" id="pwConfirm" class="txtInp" style="width:178px;">
									<em class="lPad05 cr6aa7cc">정보를 수정 하시려면 기존 비밀번호를 입력하시기 바랍니다.</em>
								</td>
							</tr>
							</tbody>
							</table>

							<div class="btnArea ct tPad30">
								<input type="button" onclick="ChangeMyInfo(document.frminfo)" class="btn btnS1 btnRed btnW160 fs12" value="나의정보 수정">
							</div>
						</form>
						</fieldset>
						<!-- //나의 정보관리 -->
						<br>
						<br>

						<h4>비밀번호 수정</h4>
						<form name="frmpass" method="post" action="https://www.10x10.co.kr/my10x10/userinfo/membermodify_process.asp" style="margin:0px;">
						<input type="hidden" name="mode" value="passmodi">
						<input type="hidden" name="pflag" value="">
						<fieldset>
						<legend>비밀번호 수정</legend>
							<table class="baseTable rowTable docForm myInfoForm">
							<caption>비밀번호 수정</caption>
							<colgroup>
								<col width="140"> <col width="">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">
									<label for="oldPw">기존 비밀번호</label>
								</th>
								<td><input type="password" name="oldpass" maxlength="32" onkeypress="if (event.keyCode == 13) ChangeMyPass(frmpass);" id="oldPw" class="txtInp" style="width:178px;"></td>
							</tr>
							<tr>
								<th scope="row">
									<label for="newPw">새 비밀번호</label>
								</th>
								<td>
									<input type="password" name="newpass1" maxlength="32" onkeypress="if (event.keyCode == 13) ChangeMyPass(frmpass);" id="newPw" class="txtInp" style="width:178px;">
									<em class="lPad05 cr6aa7cc">비밀번호는 공백없는 8~16자의 영문/숫자 등 두 가지 이상의 조합으로 입력해주세요.</em>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="newPwConfirm">새 비밀번호 확인</label>
								</th>
								<td>
									<input type="password" name="newpass2" maxlength="32" onkeypress="if (event.keyCode == 13) ChangeMyPass(frmpass);" id="newPwConfirm" class="txtInp" style="width:178px;">
									<em class="lPad05 cr6aa7cc">비밀번호 확인을 위해 한 번 더 입력해 주시기 바랍니다.</em>
								</td>
							</tr>
							</tbody>
							</table>

							<div class="btnArea ct tPad30">
								<input type="button" onclick="ChangeMyPass(document.frmpass)" class="btn btnS1 btnRed btnW160 fs12" value="비밀번호 수정">
							</div>
						</fieldset>
						</form>
					</div>
					<div id="popResult"></div>
				</div>
</body>
</html>