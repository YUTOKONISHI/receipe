$(function(){
	 $(document).on('fields_added.nested_form_fields', function() {
	   console.log('Call_A');
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