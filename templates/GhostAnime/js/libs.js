/* login */
$(function() {
	$( "#logindialog" ).dialog({
		autoOpen: false,
		width: 300
	});

	$('#loginbtn').click(function(){
		$('#logindialog').dialog('open');
		return false;
	});
});

/*ColomnHeight*/
$(document).ready(function(){
	$('#topmenu li').filter(function(index){
		return $('ul', this).length;
	}).addClass('sublink');
	$('#topmenu li').hover(
		function() {
			$(this).addClass("selected");
			$(this).find('ul').stop(true, true);
			$(this).find('ul').show('fast');
		},
		function() {
			$(this).find('ul').hide();
			$(this).removeClass("selected");
		}
	);
});