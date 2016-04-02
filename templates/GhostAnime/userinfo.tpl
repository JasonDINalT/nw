<div class="bform">
<div class="dpad">
    <h2 class="bfhead">������������: {usertitle} </h2>
    <div class="userinfo">
      <div class="lcol">
        <div class="avatar"><img src="{foto}" alt=""><div class="rateui">{rate}</div></div>
        <ul class="small">
          <li class="clr">{email}</li>
          <li>{pm}</li>
        </ul>
      </div>
      <div class="rcol">
        <ul class="usinf">
          <li><span>������ ���:</span> <b>{fullname}</b></li>
          <li><span>������:</span> {status} [time_limit]&nbsp;� ������ ��: {time_limit}[/time_limit]</li>
          <li><span>���������� ����������:</span> <b>{news-num}</b> [{news}]</li>
          <li><span>���������� ������������:</span> <b>{comm-num}</b> [{comments}]</li>
          <li><span>���� �����������:</span> <b>{registration}</b></li>
          <li><span>��������� ���������:</span> <b>{lastdate}</b> [online]<img src="{THEME}/images/online.png" style="vertical-align: middle;" title="������������ ������" alt="������������ ������" />[/online][offline]<img src="{THEME}/images/offline.png" style="vertical-align: middle;" title="������������ offline" alt="������������ offline" />[/offline]</li>
          <li><span>����� ����������:</span> {land}</li>
          <li><span>������� � ����:</span> {info}</li>
        </ul>
        <p class="small">[not-logged] [ {edituser} ] [/not-logged]</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
[not-logged]
<div id="options" style="display:none;">
	<br /><br /><div class="dpad">
	<div class="pheading"><h2>�������������� �������</h2></div>
			<table class="tableform">
				<tr>
					<td class="label">���� ���:</td>
					<td><input type="text" name="fullname" value="{fullname}" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">��� E-Mail:</td>
					<td><input type="text" name="email" value="{editmail}" class="f_input" /><br />
					<div class="checkbox">{hidemail}</div>
					<div class="checkbox"><input type="checkbox" id="subscribe" name="subscribe" value="1" /> <label for="subscribe">���������� �� ����������� ��������</label></div></td>
				</tr>
				<tr>
					<td class="label">����� ����������:</td>
					<td><input type="text" name="land" value="{land}" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">������ ������������:</td>
					<td>{ignore-list}</td>
				</tr>
				<tr>
					<td class="label">������ ������:</td>
					<td><input type="password" name="altpass" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">����� ������:</td>
					<td><input type="password" name="password1" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label">���������:</td>
					<td><input type="password" name="password2" class="f_input" /></td>
				</tr>
				<tr>
					<td class="label" valign="top">���������� �� IP:<br />��� IP: {ip}</td>
					<td>
					<div><textarea name="allowed_ip" style="width:98%;" rows="5" class="f_textarea">{allowed-ip}</textarea></div>
					<div>
						<span class="small" style="color: #cb1919;">* ��������! ������ ��������� ��� ��������� ������ ���������. ������ � ������ �������� ����� �������� ������ � ���� IP-������ ��� �������, ������� �� �������. �� ������ ������� ��������� IP �������, �� ������ ������ �� ������ �������.
						<br />
						������: 192.48.25.71 ��� 129.42.*.*</span>
					</div>
					</td>
				</tr>
				<tr>
					<td class="label">������:</td>
					<td>
					<input type="file" name="image" class="f_input" /><br /><br />
					������ <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>: <input type="text" name="gravatar" value="{gravatar}" class="f_input" /> (������� E-mail �� ������ �������)<br /><br />
					<div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" />�<label for="del_foto">������� ����������</label></div>
					</td>
				</tr>
				<tr>
					<td class="label">������� ����:</td>
					<td>{timezones}</td>
				</tr>
				<tr>
					<td class="label">� ����:</td>
					<td><textarea name="info" style="width:98%;" rows="5" class="f_textarea">{editinfo}</textarea></td>
				</tr>
				<tr>
					<td class="label">�������:</td>
					<td><textarea name="signature" style="width:98%;" rows="5" class="f_textarea">{editsignature}</textarea></td>
				</tr>
				{xfields}
			</table>
		<div class="fieldsubmit">
			<input class="fbutton" type="submit" name="submit" value="���������" />
			<input name="submit" type="hidden" id="submit" value="submit" />
		</div>
</div></div>
[/not-logged]
</div>
<br>