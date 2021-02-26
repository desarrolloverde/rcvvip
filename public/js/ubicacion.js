$(document).ready(function(){
	$.ajaxSetup({
			headers: {
			'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
			}
    });
    var _token = $("input[name='_token']").val();

/*****************Carga de municipio********************/
		$('#estado').change(function(){
			
        	var estado = $('#estado').val();
        	 console.log('cambio en esado'+estado);

            $.ajax({
                data: { _token:_token, estado:estado},
                url: "munxedojs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el ul
                    $('#municipio').empty();
                    $('#estado').prop('disabled', true);
                    //console.log('cambio en esado'+JSON.stringify(data));
                    $('#municipio').append('<option value="">SELECCIONE MUNICIPIO</option>');
                    //console.log($(data).val());
                    $(data).each(function(i,v) { // indice, val
                        $('#municipio').append('<option value="' + v.id + '">' + v.municipio + '</option>');
                    });   
                    $('#estado').prop('disabled', false);   
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
        });
        /***************************fin de municipio*************************/
        /*****************Carga de ciudad********************/
        $('#estado').change(function(){
            
            var estado = $('#estado').val();
             console.log('cambio en clase'+estado);

            $.ajax({
                data: { _token:_token, estado:estado},
                url: "ciudadxedojs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el ul
                    $('#ciudad').empty();
                    $('#estado').prop('disabled', true);
                    //$('#ulplans').append('<option value="">SELECCIONE CLASE</option>');
                    $('#ciudad').append('<option value="">SELECCIONE CIUDAD</option>');
                    $(data).each(function(i, v){ 
                        $('#ciudad').append('<option value="' + v.id + 
                            '">' + v.ciudad + '</option>');
                    })   
                    $('#estado').prop('disabled', false);   
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
        });
        /***************************fin de ciudad*************************/
        /*****************Carga de parroqias********************
        $('#municipio').change(function(){
            
            var municipio = $('#municipio').val();
             console.log('cambio en clase'+municipio);

            $.ajax({
                data: { _token:_token, municipio:municipio},
                url: "ciudadxedojs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el ul
                    $('#parroquia').empty();
                    $('#municipio').prop('disabled', true);
                    //$('#ulplans').append('<option value="">SELECCIONE CLASE</option>');
                    $('#parroquia').append('<option value="">SELECCIONE MUNICIPIO</option>');
                    $(data).each(function(i, v){ 
                        $('#parroquia').append('<option value="' + v.id + 
                            '">' + v.parroquia + '</option>');
                    })   
                    $('#municipio').prop('disabled', false);   
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
        });
        /***************************fin de ciudadciudad*************************/
		
});

