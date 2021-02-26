$(document).ready(function(){
	$.ajaxSetup({
			headers: {
			'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
			}
    });
    var _token = $("input[name='_token']").val();

/*****************Carga de modelo********************/
		$('#marca').change(function(){
			
        	var marca = $('#marca').val();
        	 

            $.ajax({
                data: { _token:_token, marca:marca},
                url: "modxmarcajs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el ul
                    $('#modelo').empty();
                    $('#marca').prop('disabled', true);
                    //console.log('cambio en esado'+JSON.stringify(data));
                    $('#modelo').append('<option value="">SELECCIONE MODELO</option>');
                    //console.log($(data).val());
                    $(data).each(function(i,v) { // indice, val
                        $('#modelo').append('<option value="' + v.id + '">' + v.modelo + '</option>');
                    });   
                    $('#marca').prop('disabled', false);   
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
        });
        /***************************fin de modelo*************************/
       
		
});

