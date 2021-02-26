@extends('layout.layout')
@section('page')
  <div class="card" style="width:400px">
          <img class="card-img-bottom" src="{{ asset('storage/'.$laborsocial->foto_path) }}" alt="{{ $laborsocial->titulo }}">
      <div class="card-body">
          <h2 class="card-title">{{ $laborsocial->titulo }}</h2>
          <p class="card-text">{{ $laborsocial->descripcion }}</p>
          <p class="card-text">{{ $laborsocial->lugar }}</p>
          <p class="card-text">{{ $laborsocial->fecha }}</p>
          <form action="{{ route('laborsocial.destroy', $laborsocial)}}" method='POST'>                    
                      @csrf
                      @method('delete')
                      <a href="{{ route('laborsocial.index') }}" class="btn btn-primary">Regresar</a>
                      <button type="submit" class="btn btn-danger">Eliminar</button> 
          </form>
      </div>
  </div>    
        {{--  <div class="card border-warning mb-3">
            <div class="card-header text-center bg-warning"><h2>Registro de Labor Social</h2></div>
            <div class="card-body text-warning text-center">
                <h4 class="card-title">Ingresar datos</h4>
                            <div id="message"></div> 
                  <input type="hidden" name="id" value="" class="form-control" id="id" >
                  <div class="form-group" align="left">
                    <label for="titulo">Titulo</label>
                    <label for="txtitulo">{{ $laborsocial->titulo }}</label>
                  </div>
                  <div class="form-group" align="left">
                    <label for="descripcion">Descripcion</label>
                    <label for="txdescripcion">{{ $laborsocial->descripcion }}</label>
                  </div>
                 <div class="form-group" align="left">
                    <label for="lugar">Lugar</label>
                    <label for="txlugar">{{ $laborsocial->lugar }}</label>                    
                  </div>
                  <div class="form-group" align="left">
                    <label for="Fecha">Fecha</label>
                    <label for="txFecha">{{ $laborsocial->fecha }}</label>                    
                  </div>
                  </div>
                  <div class="form-group" align="left">
                    <label for="Foto">Foto {{ $laborsocial->titulo }}</label>
                    <img class="img-thumbnail" style="height: 60%" src="{{ asset('storage/'.$laborsocial->foto_path) }}">
                    
                  </div>
                    <form action="{{ route('laborsocial.destroy', $laborsocial)}}" method='POST'>                    
                      @csrf
                      @method('delete')
                      <button type="submit" class="btn btn-alert">borrar</button> 
                    </form>
                 <a href="{{ route('laborsocial.index') }}">Regresar</a>
            </div> --}}
        </div> 
@stop