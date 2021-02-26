@extends('layout.layout')
@section('page')
  <div class="container">
  		<div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2>Listado de Usuario</h2></div>
              <div class="card-body text-warning text-center">
                  <h4 class="card-title">Lista de Usuarios</h4>
                       <table class="table table-bordered table-striped">
  						<thead class="thead-dark">
  						<tr>
    							<th>#</th><th>Correo Electronico</th><th>Nombre y cedula</th><th>Rol</th><th>Acciones</th>
    						</tr>
    						</thead>
    						<tbody>
    							@foreach($users as $usuario)
    							<tr>
    								<td>{{ $usuario->cedula }}</td>
                    <td>{{ $usuario->email }}</td>
                    <td>{{ $usuario->nombre }} {{ $usuario->apellido }}</td>
                    <td>{{ $usuario->roles }}</td><td><a href='user/{{ $usuario->id }}/edit' title='Editar'><span class='glyphicon glyphicon-pencil'></span></a>
  											<a href="{{ route('user.show',$usuario->id) }}" title='Eliminar'><span class='glyphicon glyphicon-trash'></span></a></td>

    							</tr>
    							@endforeach
    							<tr><td colspan="5">
    								<button type="button" class="btn btn-success" onclick="window.location='user/create'">Nuevo Usuario</button>
    							</td></tr>
    						</tbody>
    					</table>	

              </div>
          </div>
  	<!--</div>-->
  </div>
@stop