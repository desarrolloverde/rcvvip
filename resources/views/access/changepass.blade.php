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
		<div class="alert alert-danger" role="alert">
			<ul>
				@foreach($errors->all() as $error)	
				<li>
					<strong>{{ $error }}</strong>
				</li>
				@endforeach
				
			</ul>
		</div>
	@endif
	<form method="POST" action="{{ route('changepwd') }}">
    @csrf

		<div class="card border-warning mb-3">
			<div class="card-header text-center bg-warning"><h2>Bienvenido al sistema</h2></div>
		  	<div class="card-body text-warning text-center">
			    <h4 class="card-title">Ingresar datos</h4>
			    	<div id="message"></div> 
				  	<input type="hidden" name="id" value="" class="form-control" id="id" >
				<div class="form-group row" align="center">
				    <label for="contraant">Contraseña anterior</label>
				    <br>
				    <div class="col-sm-6">
				    	<input type="password" name="lastpwd" value="" class="form-control @error('lastpwd') is-invalid @enderror" id="lastpwd" placeholder="Contraseña actual" >
				    	@error('lastpwd')
					    	<div class="alert alert-danger">{{ $message }}</div>
						@enderror
				  	</div>
				  </div>				  
				  <div class="form-group row" align="center">
				    <label for="contranue1">Contraseña nueva</label>
				    <br>
				    <div class="col-sm-6">
				    	<input type="password" name="newpwd" value="" class="form-control @error('newpwd') is-invalid @enderror" id="newpwd" placeholder="Nueva contraseña" >
				    	@error('newpwd')
					    	<div class="alert alert-danger">{{ $message }}</div>
						@enderror
				  	</div>
				  </div>				  
				  <div class="form-group row" align="center">
				    <label for="contranue2">Confirmacion contraseña nueva</label>
				    <br>
				    <div class="col-sm-6">
				    	<input type="password" name="newpwd2" value="" class="form-control @error('newpwd2') is-invalid @enderror" id="newpwd2" placeholder="Confirmacion Contraseña" >
						@error('newpwd2')
					    	<div class="alert alert-danger">{{ $message }}</div>
						@enderror
				  	</div>
				  </div>
				 <button type="submit" class="btn btn-success">Cambiar Contraseña</button> 
		  	</div>
		</div>
	</form>
</div>
@stop