@extends('layout.layout')
@section('page')
<div class="container">
     @if ($message = Session::get('error'));
        <div class="alert alert-primary" role="alert">
            <button type="button" class="close" data-dismiss="alert">x</button>
            <strong>{{ $message }}</strong>
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
    <form action="{{ route('laborsocial.update',$laborsocial) }}">
    @csrf
    @method('put')
        <div class="card border-warning mb-3">
            <div class="card-header text-center bg-warning"><h2>Registro de Labor Social</h2></div>
            <div class="card-body text-warning text-center">
                <h4 class="card-title">Ingresar datos</h4>
                            <div id="message"></div> 
                  <input type="hidden" name="id" value="{{ $laborsocial->id }}" class="form-control" id="id" >
                  <div class="form-group" align="left">
                    <label for="titulo">Titulo</label>
                    <input type="text" name="titulo" value="{{ $laborsocial->titulo }}" class="form-control" id="titulo" placeholder="Titulo:" >
                  </div>
                  <div class="form-group" align="left">
                    <label for="descripcion">Descripcion</label>
                    <textarea name="descripcion" value="" class="form-control" id="descripcion" placeholder="descripcion" >{{ $laborsocial->descripcion }}</textarea>
                  </div>
                 <div class="form-group" align="left">
                    <label for="lugar">Lugar</label>
                    <input type="text" name="lugar" value="{{ $laborsocial->lugar }}" class="form-control" id="lugar" placeholder="lugar" >
                  </div>
                  <div class="form-group" align="left">
                    <label for="Fecha">Fecha</label>
                    <div class="form-group" align="left">
                    <label for="fecha">Fecha</label>
                    <input type="date" name="fecha" value="{{ $laborsocial->fecha }}" class="form-control" id="fecha" placeholder="fecha" >
                  </div>
                  </div>
                  <div class="form-group" align="left">
                    <label for="foto">Foto</label>
                    <input type="text" name="foto_path" value="{{ $laborsocial->foto_path }}" class="form-control" id="photo_path">
                  </div>
                 <button type="submit" class="btn btn-success">Ingresar</button> 
            </div>
        </div>
    </form>
</div>
@stop