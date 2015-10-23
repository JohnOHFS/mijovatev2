$(document).ready(function(){ 
$("select:not(#countertop_countertype_id)").val('0').imagepicker({
      show_label:   true,
      clicked:function(){

        console.log($(this).find("option[value='" + $(this).val() + "']").data('img-src'));

      }
    });
	
 });    

