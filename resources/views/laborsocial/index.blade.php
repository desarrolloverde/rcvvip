@extends('layout.layout')
@section('page')
<div class="container">
	<!--<div class="col-md-6 center-block no-float">-->
		<div class="card border-warning mb-3">
            <div class="card-header text-center bg-warning"><h2>Labores Sociales</h2></div>
            <div class="card-body text-warning text-center">
                <h4 class="card-title">Listado de eventos</h4>
                     <div id="message"></div>
                     <table class="table table-bordered table-striped">
						<thead class="thead-dark">
						<tr>
  							<th>#</th><th>Titulo</th><th>Lugar</th><th>Fecha</th><th>Acciones</th>
  						</tr>
  						</thead>
  						<tbody>
  							@foreach($laborsocials as $laborsocial)
  							<tr>
  								<td>{{ $laborsocial->id }}</td><td>{{ $laborsocial->titulo }}</td><td>{{ $laborsocial->lugar }}</td><td>{{ $laborsocial->fecha }}</td><td><a href="laborsocial/{{ $laborsocial->id }}/edit" title='Editar'><span class='glyphicon glyphicon-pencil'>Editar</span></a>&nbsp;
											<a href="{{ route('laborsocial.show',$laborsocial) }}" title='Eliminar'><span class='glyphicon glyphicon-trash'>Borrar</span></a>&nbsp;<a href="{{ route('laborsocial.show',$laborsocial) }}" title='Ver'><span class='glyphicon glyphicon-eye-open'>Ver</span></a></td>

  							</tr>
  							@endforeach
  							<tr><td></td><td colspan="3">
  								<a href="{{ route('laborsocial.create') }}"><button type="button" class="btn btn-success" onclick="">Nuevo Evento</button></a>
  							</td><td></td></tr>
  						</tbody>
  					</table>	

            </div>
        </div>
	<!--</div>-->
</div>
@stop