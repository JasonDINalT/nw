{poll}
<div class="story fullstory">
  <div class="storin">
    <div class="dtop">
      <h2 id="news-title">{title}</h2>
      <div class="stinfo">
        <span class="acoms"><b>{comments-num}</b></span>
        [rating-type-1]<div class="rate">{rating}</div>[/rating-type-1]
        <ul class="ihmenu">
          <li><span class="adate">[day-news]{date}[/day-news]</span></li>
          <li><span class="auser">{author}</span></li>
          <li><span class="aviews">{views}</span></li>
		  <li>[complaint]������[/complaint]</li>
        </ul>
      </div>
    </div>
    <div class="dcont">
		{full-story}
		[rating]
			[rating-type-2]<div class="ratebox2">
			<ul class="reset">
			  <li>[rating-plus]<img src="{THEME}/images/like.png" title="��������" alt="��������" style="width:14px;" />[/rating-plus]</li>
			  <li>{rating}</li>
			</ul></div>[/rating-type-2]
			[rating-type-3]<div class="ratebox3">
			<ul class="reset">
			  <li>[rating-minus]<img src="{THEME}/images/ratingminus.png" title="�� ��������" alt="�� ��������" style="width:14px;" />[/rating-minus]</li>
			  <li>{rating}</li>
			  <li>[rating-plus]<img src="{THEME}/images/ratingplus.png" title="��������" alt="��������" style="width:14px;" />[/rating-plus]</li>
			</ul>
			</div>[/rating-type-3]
		[/rating]
      <div class="clr"></div>
    </div>
    <div id="related">
      [related-news]
      <ul>
        {related-news}
      </ul>
      [/related-news]
    </div>
    <div class="dbtm">
      <span class="argback"><a onclick="history.go(-1);return false" href="#">���������</a></span>
	[not-group=5]
      <span class="isicons">
      <b>{favorites}</b>
      <b>[edit]<img src="{THEME}/dleimages/editstore.png" title="�������������" alt="�������������" />[/edit]</b>
      </span>
    [/not-group]
      <p class="argcat">���������: {link-category}</p>
    </div>
  </div>
</div>
[group=5]
<div class="berrors">
  ��������� ����������, �� ����� �� ���� ��� �������������������� ������������.<br>�� ����������� ��� <a href="/index.php?do=register">������������������</a> ���� ����� �� ���� ��� ����� ������.
</div>
[/group]
<div class="blhead">
  <h3>����������� � {title}</h3>
  <p>����� ������������: {comments-num}</p>
</div>
{comments}
{addcomments}
{navigation}