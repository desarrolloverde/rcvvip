@extends('layout.layout')
@section('page')
  <div class="container">
    @if(isset($mensaje))
        <div class="alert alert-danger" role="alert">
          <button type="button" class="close" data-dismiss="alert">x</button>
          {{ $mensaje }}
        </div>
      @endif
       
      @if (count($errors) > 0)
          <div class="alert alert-primary" role="alert">
              <ul>
                  
                  @foreach($errors->all() as $error)  
                  <li>
                      <strong>{{ $error }}</strong>
                  </li>
                  @endforeach
                  
              </ul>
          </div>
      @endif
          <div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2>Registro de Usuario</h2></div>
              <div class="card-body text-warning text-center">
                  <h4 class="card-title">Ingresar datos</h4>
                              <div id="message"></div> 
                    <input type="hidden" name="id" value="" class="form-control" id="id" >
                    <div class="form-group" align="left">
                      <label for="cedula">Cedula</label>
                      <input type="text" name="cedula" value="{{ $user->cedula }}" class="form-control" id="cedula" placeholder="C.I:" disabled="true">
                    </div>
                    <div class="form-group" align="left">
                      <label for="nombre">nombre</label>
                      <input type="text" name="nombre" value="{{ $user->nombre }}" class="form-control" id="nombre" placeholder="nombre" disabled="true">
                    </div>
                    <div class="form-group" align="left">
                      <label for="apellido">apellido</label>
                      <input type="text" name="apellido" value="{{ $user->apellido }}" class="form-control" id="apellido" placeholder="apellido" disabled="true">
                    </div>
                    <div class="form-group" align="left">
                      <label for="rol">roles</label>
                      <select class="form-control" name="roles" id="roles">
                          <option value="">Elegir rol</option>
                          <option value="admin">Administraidor</option>
                          <option value="asesor">Asesor de Ventas</option>
                      </select>
                    </div>
                    <div class="form-group" align="left">
                      <label for="email">Email</label>
                      <input type="text" name="email" value="{{ $user->email }}" class="form-control" id="email" placeholder="email" disabled="true">
                    </div>
                    <div class="form-group" align="left">
                      <label for="tspassword">Password</label>
                      <input type="password" name="password" value="" class="form-control" id="password" placeholder="Password del usuario" >
                    </div>
                    <div class="form-group" align="left">
                      <label for="tspassword">Confirmacion de Password</label>
                      <input type="password" name="password_confirmation" value="" class="form-control" id="password_confirmation" placeholder="Password del usuario" >
                    </div>
                   <form action="{{ route('user.destroy', $user)}}" method='POST'>                    
                      @csrf
                      @method('delete')
                      <button type="submit" class="btn btn-danger">borrar</button> 
                    </form>
              </div>
          </div>
      </form>
      @if (isset (Auth::user()->email))
          
      @else
          <script type="text/javascript">window.location.="/access";</script>
      @endif
      <br>
  </div>
@stop