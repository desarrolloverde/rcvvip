$(document).ready(function(){
	$.ajaxSetup({
			headers: {
			'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
			}
    });
    var _token = $("input[name='_token']").val();
    /*****************cambio los radio tipo clase********************/
	$("input[name='tpclase']").change(function(){
			console.log('cambi tipo clase');
        	var tpclase = $("input[name='tpclase']:checked").val();
        	 console.log(tpclase);
    
            var clases = $("input[name='clases']");            
            
            $.ajax({
                data: { _token:_token, tpclase:tpclase},
                url: "clasextpjs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el select
                    $('#clases').find('option').remove();
                    $('#ulplans').empty(); //limpiamos planes
                    $('#dscplan').empty();
                    $('#clases').append('<option value="">SELECCIONE CLASE</option>');
                    $(data).each(function(i, v){ // indice, valor
                        $('#clases').append('<option value="' + v.id + '">' + v.clase + '</option>');
                    });                    
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
    });//fin cambio radio tipo_clase despliege clases
/*****************camio en el select clases********************/
		$('#clases').change(function(){
			
        	var clases = $('#clases').val();
        	 console.log('cambio en clase'+clases);

            $.ajax({
                data: { _token:_token, clase:clases},
                url: "planesxclasejs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                                    
                    // Limpiamos el ul
                    $('#ulplans').empty();
                    $('#dscplan').empty();
                    //$('#ulplans').append('<option value="">SELECCIONE CLASE</option>');
                    $(data).each(function(i, v){ // indice, valor
                        $('#ulplans').append('<li class="list-group-item-action" style="text-align: justify;">' +
                    '<div class="form-check"><label class="form-check-label">'+
                    '<input type="radio" class="form-check-input" value="'+v.id+'" id="rdplan" name="rdplan">'+
                    '&nbsp;&nbsp;&nbsp;'+v.plan+'</label></div></li>');
                    });                    
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                }
            });
            
    });

		    /*****************cambio los radio tipo plan********************/
		    
	$('#ulplans').on("click","input[name='rdplan']", function(){
			
        	var idplan = $("input[name='rdplan']:checked").val();
        	 console.log('cambio plan' + idplan);
            
            
            $.ajax({
                data: { _token:_token, idplan:idplan},
                url: "planesxidjs",
                type:  'POST',
                dataType: 'json',
                success:  function (data) 
                {                           
                	//var result = JSON.parse(data);
                	//console.log('each' + JSON.stringify(data));
                	//var datos = JSON.parse(JSON.stringify(data));         
                    // Limpiamos el select
                    //$('#clases').find('option').remove();
                    $("input[id='hdplan']").val(idplan);
                	$(data).each(function(i, v){
	                    $('#dscplan').html('<h2 class="card-title pricing-card-title">'+v.plan+'</small></h2>'+
	            		'<ul class="list-unstyled mt-3 mb-4">' +
	              			'<li>Costo: ' + v.costo + '</li><li>Cobertura: '+ v.cobertura +' </li></ul>' +
	            			'<button type="submit" class="btn btn-lg  btn-primary">Comprar</button>');                                       
                	});
                },
                error: function()
                {
                    alert('Ocurrio un error en el servidor ..');
                    //alumnos.prop('disabled', false);
                } 
            });
            
    });//fin cambio radio tipo_plan despliege clases $("#test").html("Este es un div <button>Hace lo mismo</button>");


		
});

