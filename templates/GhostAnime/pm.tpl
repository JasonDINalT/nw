<div class="bform">
	<div class="dpad">
		<h2 class="bfhead" style="margin: 0pt;">
[pmlist]������ ���������[/pmlist]
[newpm]����� ���������[/newpm]
[readpm]���� ���������[/readpm]
		</h2>
		<p><div class="pm_status">
	<div class="pm_status_head">��������� �����</div>
	<div class="pm_status_content">����� ������������ ��������� ��������� ��:
{pm-progress-bar}
{proc-pm-limit}% �� ������ ({pm-limit} ���������)
	</div>
</div>
<div style="padding-top:10px;">[inbox]�������� ���������[/inbox]<br /><br />
[outbox]������������ ���������[/outbox]<br /><br />
[new_pm]��������� ���������[/new_pm]</div></p>
[pmlist]
<div class="dpad">{pmlist}</div>
[/pmlist]
[newpm]
	<table class="tableform">
		<tr>
			<td class="label">
				����:
			</td>
			<td><input type="text" name="name" value="{author}" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">
				����:<span class="impot">*</span>
			</td>
			<td><input type="text" name="subj" value="{subj}" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">
				���������:<span class="impot">*</span>
			</td>
			<td class="editorcomm">
			{editor}<br />
			<div class="checkbox"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">��������� ��������� � ����� "������������"</label></div>
			</td>
		</tr>
		[question]
			<tr>
				<td class="label">
					������:
				</td>
				<td>
					<div>{question}</div>
				</td>
			</tr>
			<tr>
				<td class="label">
					�����:<span class="impot">*</span>
				</td>
				<td>
					<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
				</td>
			</tr>
		[/question]
		[sec_code]
		<tr>
			<td class="label">
				������� ���:<span class="impot">*</span>
			</td>
			<td>
				<div>{sec_code}</div>
				<div><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>
		[/sec_code]
		[recaptcha]
		<tr>
			<td class="label">
				������� ��� �����, ���������� �� �����������: <span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>
		[/recaptcha]
	</table>
	<div class="fieldsubmit">
		<button type="submit" name="add" class="fbutton"><span>���������</span></button>
		<input type="button" class="fbutton" onclick="dlePMPreview()" title="��������" value="��������" />
	</div>	
[/newpm]
	</div>
</div>
[readpm]
<div class="bcomment" id="com_1">
  <div class="lcol">
    <div class="comleft">
      <span class="comava"><img src="{foto}" alt="{login}"><b class="thide">{login}</b></span>
      <b class="groupicon">{group-icon}</b>
    </div>
    <span class="cdate">{date}</span>
  </div>
  <div class="rcol">
    <div class="comright">
      <div class="bccont">
        <p class="bctop">
          <b>{author} �����: {subj}</b> 
        </p>
		{text}
		[signature]<br clear="all" /><div class="signature">--------------------</div><div class="slink">{signature}</div>[/signature]
        <div class="clr"></div>
      </div>
	[not-group=5]
      <ul class="comedit">
        <li>[reply]<b>��������</b>[/reply]</li>
        <li>[complaint]������������[/complaint]</li>
        <li>[ignore]������������[/ignore]</li>
        <li>[del]�������[/del]</li>
      </ul>
	[/not-group]
    </div>
  </div>
  <div class="clr"></div>
</div>
[/readpm]