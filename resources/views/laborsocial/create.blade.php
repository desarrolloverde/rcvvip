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
    <form method="POST"   action="{{ route('laborsocial.store') }}" role="form" enctype="multipart/form-data">
        @csrf
        <div class="card border-warning mb-3">
            <div class="card-header text-center bg-warning"><h2>Registro de Labor Social</h2></div>
            <div class="card-body text-warning text-center">
                <h4 class="card-title">Ingresar datos</h4>
                            <div id="message"></div> 
                  <input type="hidden" name="id" value="" class="form-control" id="id" >
                  <div class="form-group" align="left">
                    <label for="titulo">Titulo</label>
                    <input type="text" name="titulo" value="{{ old('titulo') }}" class="form-control @error('titulo') is-invalid @enderror" id="titulo" placeholder="Titulo:" >
                    @error('titulo')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                  <div class="form-group" align="left">
                    <label for="descripcion">Descripcion</label>
                    <textarea name="descripcion" value="{{ old('descripcion') }}" class="form-control @error('descripcion') is-invalid @enderror" id="descripcion" placeholder="descripcion" ></textarea>
                    @error('descripcion')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                 <div class="form-group" align="left">
                    <label for="lugar">Lugar</label>
                    <input type="text" name="lugar" value="{{ old('lugar') }}" class="form-control @error('lugar') is-invalid @enderror" id="lugar" placeholder="lugar" >
                    @error('lugar')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                  <div class="form-group" align="left">
                    <h3>Seleccione fecha de evento</h3>
                    <label for="fecha">Fecha</label>
                    <input type="date" name="fecha" value="{{ old('fecha') }}" class="form-control @error('fecha') is-invalid @enderror" id="fecha" placeholder="fecha" >
                    @error('fecha')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                    
                  <div class="custom-file form-group mb-3">
                    <h3>Seleccione Imagen de evento</h3>
                    <input type="file" class=custom-file-input @error('photo_path') is-invalid @enderror" id="photo_path" name="photo_path">
                    <label class="custom-file-label" for="customFile">Seleccione Imagen</label>
                    @error('photo_path')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                  </div>
                  <div class="container" align="center">
                    <button type="submit" class="btn btn-primary">Guardar Evento</button> 
                  </div>
                </div>
            </div>
        </div>
    </form>    
</div>
<script type="text/javascript">
  $(".custom-file-input").on("click", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
@stop