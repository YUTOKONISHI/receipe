function firstscript() {
   var classLength = $('.nested_receipe_cooking_steps').length;
	   var count = 0;
        for (var i=0; classLength > i ; i++ ) {
        	if ($('.nested_receipe_cooking_steps').eq(i).is(':visible')) {
        	     count++;
           } else {
    	       // 非表示の場合の処理
    	     }
		   $('.procedure-num').eq(i).text(count);
		   $('.number-num').eq(i).val(count);
	      }
}
 
// ページの読み込み完了と同時に実行されるよう指定
window.onload = firstscript;


$(function(){
	 $(document).on('fields_added.nested_form_fields', function() {
	   
	   var classLength = $('.nested_receipe_cooking_steps').length;
	   var count = 0;
        for (var i=0; classLength > i ; i++ ) {
        	if ($('.nested_receipe_cooking_steps').eq(i).is(':visible')) {
        	     count++;
           } else {
    	       // 非表示の場合の処理
    	     }
		   $('.procedure-num').eq(i).text(count);
		   $('.number-num').eq(i).val(count);
	      }
  });
  
  	 $(document).on('fields_removed.nested_form_fields', function() {
	   var classLength = $('.nested_receipe_cooking_steps').length;
	   var count=0;
        for (var i=0; classLength > i ; i++ ) {
        	if ($('.nested_receipe_cooking_steps').eq(i).is(':visible')) {
        	     count++;
           } else {
    	       // 非表示の場合の処理
    	     }
		   $('.procedure-num').eq(i).text(count);
		   $('.number-num').eq(i).val(count);
	      }
  });

});