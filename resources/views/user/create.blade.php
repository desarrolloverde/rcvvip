@extends('layout.layout')
@section('page')
  <div class="container">
       @if ($message = Session::get('error'));
          <div class="alert alert-primary" role="alert">
              <button type="button" class="close" data-dismiss="alert">x</button>
              <strong>{{ $message }}</strong>
          </div>
      @endif
      <form method="POST" action="{{ route('user.store') }}">
      @csrf
          <div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2>Registro de Usuario</h2></div>
              <div class="card-body text-warning text-center">
                  <h4 class="card-title">Ingresar datos</h4>
                              <div id="message"></div> 
                    <input type="hidden" name="id" value="" class="form-control" id="id" >
                    <div class="form-group" align="left">
                      <label for="cedula">Cedula</label>
                      <input type="text" name="cedula" value="{{ old('cedula') }}" class="form-control @error('cedula') is-invalid @enderror" id="cedula" placeholder="C.I:" >
                      @error('cedula')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="nombre">Nombre</label>
                      <input type="text" name="nombre" value="{{ old('nombre') }}" class="form-control @error('nombre') is-invalid @enderror" id="nombre" placeholder="nombre" >
                      @error('nombre')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="apellido">apellido</label>
                      <input type="text" name="apellido" value="{{ old('apellido') }}" class="form-control @error('apellido') is-invalid @enderror" id="apellido" placeholder="apellido" >
                      @error('apellido')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="rol">roles</label>
                      <select class="form-control @error('roles') is-invalid @enderror" name="roles" id="roles">
                          <option value="">Elegir rol</option>
                          <option value="admin" {{ (old('roles') == 'admin' ? "selected":"") }}>Administraidor</option>
                          <option value="asesor"{{ (old('roles') == 'asesor' ? "selected":"") }}>Asesor de Ventas</option>
                      </select>
                      @error('roles')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="email">Email</label>
                      <input type="text" name="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email" >
                      @error('email')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="tspassword">Password</label>
                      <input type="password" name="password" value="{{ old('password') }}" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Password del usuario" >
                      @error('password')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="form-group" align="left">
                      <label for="tspassword">Confirmacion de Password</label>
                      <input type="password" name="password_confirmation" value="{{ old('password_confirmation') }}" class="form-control @error('password_confirmation') is-invalid @enderror" id="password_confirmation" placeholder="Password del usuario" >
                      @error('password_confirmation')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                   <button type="submit" class="btn btn-success">Nuevo Usuario</button> 
              </div>
          </div>
      </form>
  </div>
@stop