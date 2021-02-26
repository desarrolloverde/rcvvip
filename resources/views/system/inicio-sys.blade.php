
@extends('layout.layout')
@section('page')
	<div class="container">
		 <div class="pb-2 mt-4 mb-2 border-bottom">
	      Bienvenidos
	      {{ Auth::user()->password }} {{ Auth::user()->activo }}{{ Auth::user()->aprobado }}
		</div>
	</div>
@stop