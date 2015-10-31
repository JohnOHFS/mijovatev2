$(document).ready(function(){ 
$("select:not(#countertop_countertype_id)").val('0').imagepicker({
      show_label:   true,
      clicked:function(){

        console.log($(this).find("option[value='" + $(this).val() + "']").data('img-src'));

      }
    });
	
 });    

$(document).ready(function() {



    $('#countertype').change(function () {
        if ($('#countertype option:selected').text() == "Granite"){
            $('#granitecolor').show();
            $('#marblecolor').hide();

        }
        else if ($('#countertype option:selected').text() == "Marble"){
            $('#granitecolor').hide();
            $('#marblecolor').show();

        }
        else if ($('#countertype option:selected').text() == "Soapstone"){
            $('#granitecolor').hide();
            $('#marblecolor').hide();

        }
        else if ($('#countertype option:selected').text() == "Select Your Material"){
            $('#granitecolor').hide();
            $('#marblecolor').hide();

        }
    }); 
});