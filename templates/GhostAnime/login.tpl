[not-group=5]
<div class="logbox">
  <a class="fbutton" id="loginbtn" href=""><b>{login}</b></a>
  <a href="{logout-link}"><b>�����</b></a>
</div>
<div id="logindialog" title="{login}" style="display:none;">
  <div class="userinfo">
    <div class="lcol">
      <div style="margin: 0" class="avatar"><a href="{profile-link}"><img src="{foto}" alt="{login}" /></a></div>
    </div>
    <div class="rcol">
      <ul class="reset">
	[admin-link]<li><a href="{admin-link}" target="_blank"><b>�����������</b></a></li>[/admin-link]
        <li><a href="{addnews-link}"><b>�������� �������</b></a></li>
        <li><a href="{pm-link}">���������: ({all-pm} | {new-pm})</a></li>
        <li><a href="{profile-link}">��� �������</a></li>
        <li><a href="{favorites-link}">��� ��������</a></li>
        <li><a href="{newposts-link}">������������� </a></li>
        <li><a href="{stats-link}">����������</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
</div>
[/not-group]
[group=5]
<div class="logbox">
  <a class="fbutton" id="loginbtn" href="#"><b>�����</b></a>
  <a href="{registration-link}"><b>�����������</b></a>
</div>
<div id="logindialog" title="�����������" style="display:none;">
  <form method="post" action="">
    <div class="logform">
      <ul class="reset">
        <li class="lfield"><p><label for="login_name">���:</label></p><input type="text" name="login_name" id="login_name" /></li>
        <li class="lfield lfpas"><p><label for="login_password">������ (<a href="{lostpassword-link}">������?</a>):</label></p><input type="password" name="login_password" id="login_password" /></li>
        <li class="lbtn"><button class="fbutton" onclick="submit();" type="submit" title="�����"><span>�����</span></button></li>
      </ul>
      <input name="login" type="hidden" id="login" value="submit" />
    </div>
  </form>
</div>																																																																																																																																																																																[not-page-count=1]<div style="display:none;">����������� ��������� <a href="http://newfilmak.org/">������ �������</a> ��� ����������� � ������� <a href="http://newtemplates.ru/">dle</a> ��������� ����� �������</div>[/not-page-count]
[/group]