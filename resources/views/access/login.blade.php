@extends('layout.layout')
@section('page')
<div class="row">
		<div class="col border"></div>
		<div class="col border">
			@if(isset($mensaje))
				<div class="alert alert-danger" role="alert">
					<button type="button" class="close" data-dismiss="alert">x</button>
					<strong>{{ $mensaje }}</strong> Solicite acceso al Administrador
				</div>
			@endif
			<div class="jumbotron center">
				<form action="/checklogin" method="POST" class="form-signing">
			    @csrf
					{{-- <div class="card border-warning mb-3">
						<div class="card-header text-center bg-warning"><h2>Bienvenido al sistema</h2></div>
					  	<div class="card-body text-warning text-center">
						    <h4 class="card-title">Ingresar datos</h4>
						    		    <div id="message"></div> 
							  <input type="hidden" name="id" value="" class="form-control" id="id" >
							  <div class="form-group row" align="center">
							    <label for="lbemail">Email</label>
							    <br>
							    <div class="col-sm-6">
							    	<input type="text" name="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email" > 
								@error('email')
								    <div class="alert alert-danger">{{ $message }}</div>
								@enderror
							    </div>
							  </div>
							  <div class="form-group row" align="center">
							    <label for="tspassword">Password</label>
							    <br>
							    <div class="col-sm-6">
							    	<input type="password" name="password" value="" class="form-control" id="password" placeholder="Password del usuario" >
							  	</div>
							  </div>
							 <button type="submit" class="btn btn-success">Ingresar</button> 
					  	</div>
					</div> --}}
						<img class="mb-4" src="{{ asset('images/logo_segurosvip.png') }}" alt="" width="72" height="72">
				      <h1 class="h3 mb-3 font-weight-normal">Identificarse Aqui</h1>
				      <label for="inputEmail" class="sr-only">Dirección Email</label>
				      <input type="email" id="email" name="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror"  placeholder="email"   required autofocus>
				      <label for="inputPassword" class="sr-only">Password</label>
				      <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
					    <div class="checkbox mb-3">
					        <label>
					          <input type="checkbox" value="remember-me"> Remember me
					        </label>
						</div>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
					</form>
				</div>
			</div>	
	<div class="col border"></div>
</div>
@stop