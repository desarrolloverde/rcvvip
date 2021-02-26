@extends('layout.master')


@section('title',env('APP_NAME'))


{{-- inicio del navbar --}}    
@section('navbar')
	@if (isset (Auth::user()->email))
	    @include('plantillas.navbar-sys')
	@else
		@include('plantillas.navbar')
	@endif    
 @stop
{{-- fin del navbar --}}
{{--inicio del contenido de inicio--}}
@section('content')
     @yield('page') 
@stop
{{-- fin contenido de inicio --}}
{{-- footer --}}
@section('footer')
    @include('plantillas.footer')
@stop
