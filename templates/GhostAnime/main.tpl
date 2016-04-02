<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{headers}
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
<link href="{THEME}/style/styles.css" type="text/css" rel="stylesheet" />
<link href="{THEME}/style/engine.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="{THEME}/js/libs.js"></script>
<script type="text/javascript" src="{THEME}/js/toolsga.js"></script>
<script>
$(document).ready(function() {
  $('.title').append('<span></span>');
  $('.infochat span').each(function() {
    var trigger = $(this), state = false, el = trigger.parent().next('.entry');
    trigger.click(function(){
      state = !state;
      el.slideToggle();
      trigger.parent().parent().toggleClass('inactive');
    });
  });
});
</script>
</head>
<body>
{AJAX}
<div class="page">
<div id="head"><div class="head">
  <div class="wrap">
    <h1><a class="thide" href="/" title=" ">САЙТ.РУ</a></h1>
    <div id="loginbox">{login}</div>
    <form id="searchbar" method="post" action=''>
      <input type="hidden" name="do" value="search" />
      <input type="hidden" name="subaction" value="search" />
      <input class="sbtn" title="Найти" alt="Найти" type="image" src="{THEME}/images/spacer.gif" />
      <input class="stext" id="story" name="story" value="" type="text" />
    </form>
  </div>
</div></div>
<div id="headpic"><div class="headpic">
  <div class="wrap">
    <div id="tmenu">
		{include file="topmenu.tpl"}
	</div>
    <p class="slogan">Look an anime-love own life</p>
  </div>
</div></div>
<div id="pagebg"><div class="pagebg">
  <div class="wrap">
    <div id="conteiner">    
      <div id="midside" class="rcol">
		[aviable=main]
        <div class="infotitle">
         <br /> На нашем сайте ты можешь посмотреть онлайн аниме бесплатно и без регистрации. Присоединяйся к нам и ты сможешь оставлять комментарии, общаться на форуме и много другого. 
          Ты нам нужен! С нами ты не будешь скучать!<br /> <a class="dtitle" title="Присоединяйся с нами весело!" href="/index.php?do=register">Присоединяйся с нами весело!</a>
        </div>
        <div id="chatf">
		 <div class="infochat inactive">
			<div class="title"><h3>Чат</h3></div>
			<div class="entry" style="display:none;">
				<p>сам чат</p>
			</div>
		 </div>
		</div>
		[/aviable]
		{info}{content}
	</div>
	<div id="lside" class="lcol">
		{include file="block.tpl"}
	</div>
    <div class="clr"></div>
    </div>
  </div>
</div></div>

<div id="footbox"><div class="wrap">
    <div id="fbox">
		<div id="fbl1" class="lcol"><h3>Опросы</h3>{vote}</div>
		<div id="fbl2" class="lcol" style="color:white"><h3>кабббууууммм</h3>{calendar}</div>
		<div id="fbl3" class="lcol"><h3>Облако тегов</h3>{tags}</div>
		<div class="clr"></div>
    </div>
    <div class="centroarts"><a href="/" rel="nofollow" target="_blank">Design by Centroarts.com</a></div>
</div></div>

<div id="footer">
  <div class="wrap">
    <p class="copyright">
		&copy; <a href="/">GhostAnime.com</a> 2011<br />
		<span>При использовании материалов ссылка на источник обязательна.</span><br />
		<span style="font-size: .8em;">Все права защищены.</span>
    </p>
    <ul class="counts">
		<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
		<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
		<li><img src="{THEME}/images/count.png" alt="count 88x31px" /></li>
    </ul>
    <b id="animeshka" class="thide">&nbsp;</b>
  </div>
</div>
</div> 
</body>
</html>