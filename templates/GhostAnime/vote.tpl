<div id='vote-layer'><p class="vtitle">{title}</p>
<form method="post" name="vote" action=''>
<div class="vlist">{list}</div>
[voteresult]<p class="votenum">�������������: {votes}</p>[/voteresult]
[votelist]
<div class="vfoot">
	<input type="hidden" name="vote_action" value="vote" />
	<input type="hidden" name="vote_id" id="vote_id" value="1" />
	<button class="fbutton" type="submit" onclick="doVote('vote'); return false;" >����������</button>
	<a class="vresult" href="#" onclick="doVote('results'); return false;" >����������</a>
</div>
[/votelist]
</form></div>