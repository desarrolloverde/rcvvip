@extends('layout.layout')
@section('page')
  <div class="container marketing">
    <div class="row">
@foreach($laborsocials as $laborsocial)
    <div class="col-lg-4" style="align-content: center;text-align: center;">
      <img class="rounded-circle" src="{{ asset('storage/'.$laborsocial->foto_path) }}" alt="{{ $laborsocial->titulo }}" width="140" height="140">
      <h2>{{ $laborsocial->titulo }}</h2>
      <p>{{ $laborsocial->descripcion }}</p>
      <p>{{ $laborsocial->lugar }}</p>
      <p>{{ $laborsocial->fecha }}</p>
      <p><a class="btn btn-secondary" href="#" role="button">Ver Detalles &raquo;</a></p>
    </div><!-- /.col-lg-4 -->
  @endforeach
    </div><!-- /.row -->    
  </div>
  @stop