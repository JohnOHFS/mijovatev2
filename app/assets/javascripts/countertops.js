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
             $('#soapstonecolor').hide();
             $('#quartzcolor').hide();
           
        }
        else if ($('#countertype option:selected').text() == "Marble"){
            $('#marblecolor').show();
             $('#soapstonecolor').hide();
             $('#granitecolor').hide();
             $('#quartzcolor').hide();

        }
        else if ($('#countertype option:selected').text() == "Soapstone"){
            $('#soapstonecolor').show();
             $('#marblecolor').hide();
             $('#granitecolor').hide();
             $('#quartzcolor').hide();

        }
        else if ($('#countertype option:selected').text() == "Quartz"){
            $('#soapstonecolor').hide();
             $('#marblecolor').hide();
             $('#granitecolor').hide();
             $('#quartzcolor').show();

        }
        else if ($('#countertype option:selected').text() == "Select Your Material"){
            $('#granitecolor').hide();
            $('#marblecolor').hide();
            $('#soapstonecolor').hide();
            $('#quartzcolor').hide();

        }
    }); 
});