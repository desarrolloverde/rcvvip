@extends('layout.layout')
@section('page')
  <div class="container">
  		<div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2>Listado de Usuario</h2></div>
              <div class="card-body text-warning text-center">
                  <h4 class="card-title">Lista de Usuarios</h4>
                       <div id="message"></div>
                       <table class="table table-bordered table-striped">
  						<thead class="thead-dark">
  						<tr>
    							<th>#</th><th>Correo Electronico</th><th>Nombre y cedula</th><th>Rol</th><th>Acciones</th>
    						</tr>
    						</thead>
    						<tbody>
    							@foreach($users as $usuario)
    							<tr>
    								<td>{{ $usuario->cedula }}</td><td>{{ $usuario->email }}</td><td>{{ $usuario->nombre }} {{ $usuario->apellido }}</td><td>{{ $usuario->roles }}</td><td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal{{ $usuario->id }}">Autorizar</button></td>

    							</tr>
    							@endforeach
    							<tr><td colspan="5">
    								<button type="button" class="btn btn-success" onclick="window.location='{{ route('asesorinfo') }}'">Nuevo Usuario Asesor</button>
    							</td></tr>
    						</tbody>
    					</table>	

              </div>
          </div>
  	<!--</div>-->
  </div>
  @foreach($users as $usermodal)
        <!-- The Modal -->
      <div class="modal" id="myModal{{ $usermodal->id }}">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header text-center">
              <h2 class="modal-title">Autorizacion de Asesor</h2>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body text-center">
              El usuario {{ $usermodal->nombre }} {{ $usermodal->apellido }} Sera Autorizado
            </div>

            <!-- Modal footer -->
            <div class="modal-footer text-center border-warning">
              <form action="{{ route('user.atender_asesor', $usermodal->id) }}" method='POST'>                    
                      @csrf
                      
                        <input type="hidden" name="id" value="{{ $usermodal->id }}">
                        <input type="submit" name="btnatender" value="Autorizar" class="btn btn-success">
                        <input type="submit" name="btnatender" value="Rechazar" class="btn btn-warning">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                      
              </form>
            </div>

          </div>
        </div>
      </div>
      @endforeach
@stop