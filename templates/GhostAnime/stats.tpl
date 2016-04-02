<div class="bform">
<div class="dpad">
    <h2 class="bfhead">Статистика сайта</h2>
    <ul class="searchitem">
			<li>За сутки: <strong>{news_day} новостей и {comm_day} комментариев, зарегистрировано {user_day} пользователей</strong></li>
			<li>За неделю: <strong>{news_week} новостей и {comm_week} комментариев, зарегистрировано {user_week} пользователей</strong></li>
			<li>За месяц: <strong>{news_month} новостей и {comm_month} комментариев, зарегистрировано {user_month} пользователей</strong></li>
    </ul>
	<br>
    <div class="statistics">
	<ul class="lcol reset">
		<li><h4>Новости:</h4></li>
		<li>Общее кол-во новостей: <b class="blue">{news_num}</b></li>
		<li>Из них опубликовано: <b class="blue">{news_allow}</b></li>
		<li>Опубликовано на главной: <b class="blue">{news_main}</b></li>
		<li>Ожидает модерации: <b class="blue">{news_moder}</b></li>
	</ul>
	<ul class="lcol reset">
		<li><h4>Пользователи:</h4></li>
		<li>Общее кол-во пользователей: <b class="blue">{user_num}</b></li>
		<li>Из них забанено: <b class="blue">{user_banned}</b></li>
	</ul>
	<ul class="lcol reset">
		<li><h4>Комментарии:</h4></li>
		<li>Кол-во комментариев: <b class="blue">{comm_num}</b></li>
		<li><a href="/?do=lastcomments">Посмотреть последние</a></li>
	</ul>
          <div class="clr"></div>
    </div>
    <br clear="all">
  </div>
</div>
<br>
<div class="bform">
<div class="dpad">
    <h2 class="bfhead">Лучшие пользователи</h2>
    <table width="100%" class="userstop">{topusers}</table>
    <br clear="all">
  </div>
</div>