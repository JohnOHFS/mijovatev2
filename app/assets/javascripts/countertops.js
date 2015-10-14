$(document).ready(function(){ 
$("select:not(#countertop_countertype_id)").imagepicker({
      hide_select:  true, 
      show_label:   true,
      clicked:function(){

        console.log($(this).find("option[value='" + $(this).val() + "']").data('img-src'));

      }
    });
 });    
