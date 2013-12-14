/* Korean initialisation for the jQuery calendar extension. */
/* Written by DaeKwon Kang (ncrash.dk@gmail.com), Edited by Genie. */
jQuery(function($){
	$.datepicker.regional['ko'] = {
		closeText: '닫기',
		prevText: '<',
		nextText: '>',
		currentText: '^',
		monthNames: ['1월','2월','3월','4월','5월','6월',
		'7월','8월','9월','10월','11월','12월'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월',
		'7월','8월','9월','10월','11월','12월'],
		dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'],
		dayNamesShort: ['월','화','수','목','금','토','일'],
		dayNamesMin: ['월','화','수','목','금','토','일'],
		weekHeader: 'Wk',
//		dateFormat: $.datepicker.TIMESTAMP,
//        altFormat: "yy. mm. dd",
		dateFormat: "yy. mm. dd",
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: true,
		 };
	$.datepicker.setDefaults($.datepicker.regional['ko']);
});
