{{-- {!! Form::select('role_id', $tipo, $selectedRole, ['class' => 'form-control m-bot15') !!} --}}
@extends('layout.layout')
@section('page')
  <div class="container">
  @if(isset($mensaje))
    <div class="alert alert-danger" role="alert">
      <button type="button" class="close" data-dismiss="alert">x</button>
      {{ $mensaje }}
    </div>
  @endif
      <form method="POST" action="{{ route('rcv.store') }}">
      @csrf
      
          <div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2><strong>DATOS DEL PROPIETARIO</strong></h2></div>
              <div class="card-body text-warning text-center">
                  <h3 class="card-title"><strong>Personales</strong></h3>
                              <div id="message"></div>                     
                    <input type="hidden" name="id" value="{{ $step }}" class="form-control" id="id" >
                    <input type="hidden" name="plan" value="{{ $plan }}" class="form-control" id="plan" >
                    <input type="hidden" name="hdclase" value="{{ $idclase }}" class="form-control" id="hdclase" >
                  <div class="form-group">
                    <div class="row">                    
                      <div class="col-sm-1" style="text-align: right;">
                        <label for="cedula">Cedula</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="cedula" value="{{ old('cedula') }}" class="form-control form-control-lg @error('cedula') is-invalid @enderror" id="cedula" placeholder="C.I:" >
                          @error('cedula')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="nombre">Nombre</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="nombre" value="{{ old('nombre') }}" class="form-control form-control-lg @error('nombre') is-invalid @enderror" id="nombre" placeholder="nombre" >
                          @error('nombre')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="apellido">Apellido:</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="apellido" value="{{ old('apellido') }}" class="form-control form-control-lg @error('apellido') is-invalid @enderror" id="apellido" placeholder="apellido" >
                          @error('apellido')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="w-100 mt-4"></div>
                        <div class="col-sm-1">
                          <label for="email">Email</label>
                        </div>
                        <div class="col-sm-6">
                          <input type="email" name="email" value="{{ old('email') }}" class="form-control form-control-lg @error('email') is-invalid @enderror" id="email" placeholder="email" >
                          @error('email')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="apellido">Teléfono</label>
                      </div>
                      <div class="col-sm-4">
                        <input type="text" name="telefono" value="{{ old('telefono') }}" class="form-control form-control-lg @error('telefono') is-invalid @enderror" id="telefono" placeholder="telefono" >
                          @error('telefono')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                     <div class="w-100 mt-3"><h3><strong>Ubicaci&oacute;n</strong></h3></div>
                      
                        <div class="col-sm-1" style="text-align: right;">
                        <label for="cedula">Estado</label>
                      </div>
                      <div class="col-sm-3">
                        <select class="form-control form-control-lg @error('estado') is-invalid @enderror" name="estado" id="estado">
                          <option value="">Seleccionar Estado</option>
                          @foreach($estados as $estado) 
                            <option value="{{ $estado->id }}" {{ (old('estado') == $estado->id ? "selected":"") }}>{{ $estado->estado }}</option>
                          @endforeach
                      </select>
                      @error('estado')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="municipio">Municipio</label>
                      </div>
                      <div class="col-sm-3">
                        <select class="form-control form-control-lg @error('municipio') is-invalid @enderror" name="municipio" id="municipio">
                          <option value="">Seleccionar Municipio</option>
                          @if(old('municipio'))
                            <option value="{{ old('municipio') }}" selected>{{ old('municipio') }}</option>
                          @endif
                      </select>
                      @error('municipio')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="nombre">Ciudad</label>
                      </div>
                      <div class="col-sm-3">
                          <select class="form-control form-control-lg @error('ciudad') is-invalid @enderror" name="ciudad" id="ciudad">
                            <option value="">Seleccionar Ciudad</option>
                            @if(old('ciudad'))
                            <option value="{{ old('ciudad') }}" selected>{{ old('ciudad') }}</option>
                          @endif
                        </select>
                        @error('ciudad')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                      </div>
                    </div>                          
                </div>
            </div>
            <!--------datos de vehiculo-------------->
            <div class="card-header text-center bg-warning"><h2><strong>CARACTERISTICAS DEL VEHICULO</strong></h2></div>
              <div class="card-body text-warning text-center">
                  <!--h3 class="card-title"><strong>Personales</strong></h3-->
                              <div id="mensaje"></div>                     
                    <input type="hidden" name="id" value="" class="form-control" id="id" >
                  <div class="form-group">
                    <div class="row">                    
                      <div class="col-sm-1" style="text-align: right;">
                        <label for="marca">Marca</label>
                      </div>
                      <div class="col-sm-3">
                          <select class="form-control form-control-lg @error('marca') is-invalid @enderror" name="marca" id="marca">
                            <option value=""><strong>SELECCIONAR MARCA</strong></option>
                              @foreach($marcas as $marca) 
                                <option value="{{ $marca->id }}" {{ (old('marca') == $marca->id ? "selected":"") }}>{{ $marca->marca }}</option>
                              @endforeach
                        </select>
                        @error('marca')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="nombre">Modelo</label>
                      </div>
                      <div class="col-sm-3">
                        <select class="form-control form-control-lg @error('modelo') is-invalid @enderror" name="modelo" id="modelo">
                          <option value="">SELECCIONAR MODELO</option>
                          @if(old('modelo'))
                            <option value="{{ old('modelo') }}" selected>{{ old('modelo') }}</option>
                          @endif
                      </select>
                      @error('modelo')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="apellido">Tipo:</label>
                      </div>
                      <div class="col-sm-3">
                        <select class="form-control form-control-lg @error('tipo') is-invalid @enderror" name="tipo" id="tipo">
                          <option value="">SELECCIONAR TIPO</option>
                          @foreach($tipos as $tipo) 
                              <option value="{{ $tipo->id }}" {{ (old('tipo') == $tipo->id ? "selected":"") }}>{{ $tipo->tipo }}</option>
                          @endforeach
                      </select>
                      @error('tipo')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                      </div>
                      <div class="w-100 mt-4"></div>
                        <div class="col-sm-1">
                          <label for="clase">Clase</label>
                        </div>
                        <div class="col-sm-3">
                          <select class="form-control form-control-lg @error('clase') is-invalid @enderror"  name="clase" id="clase">
                          @foreach($clases as $clase) 
                            @if($idclase == $clase->id || $clase->id==old('clase'))
                              <option value="{{ $clase->id }}" {{ ($idclase == $clase->id || $clase->id==old('clase') ? "selected":"") }}>{{ $clase->clase }}</option>
                            @endif
                          @endforeach
                          </select>
                      @error('clase')
                          <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="uso">Uso</label>
                      </div>
                      <div class="col-sm-3">
                        <select class="form-control form-control-lg @error('uso') is-invalid @enderror" name="uso" id="uso">
                            <option value="">ELEGIR USO</option>
                            @foreach($usos as $uso) 
                              <option value="{{ $uso->id }}"  {{ (old('uso') == $uso->id ? "selected":"") }}>{{ $uso->uso }}</option>
                          @endforeach
                          </select>
                          @error('uso')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="uso">Color</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="color" value="{{ old('color') }}" class="form-control form-control-lg @error('color') is-invalid @enderror" id="color" placeholder="Color" >
                          @error('color')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="w-100 mt-4"></div>
                        <div class="col-sm-1">
                          <label for="año">Año</label>
                        </div>
                        <div class="col-sm-3">
                          <input type="number"  name="anio" value="{{ old('anio') }}" class="form-control form-control-lg @error('anio') is-invalid @enderror" id="anio" placeholder="Año de Fabricación" >
                          @error('anio')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="puestos">Cant. Puestos</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="number" name="puestos" value="{{ old('puestos') }}" class="form-control form-control-lg @error('puestos') is-invalid @enderror" id="puestos" placeholder="# Puestos" >
                          @error('puestos')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="peso">Peso</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="number" name="peso" value="{{ old('peso') }}" class="form-control form-control-lg @error('peso') is-invalid @enderror" id="peso" placeholder="# Peso Vehiculo" >
                          @error('peso')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                     <div class="w-100 mt-3"><h3><strong>Identificación del vehiculo</strong></h3></div>
                      
                        <div class="col-sm-1" style="text-align: right;">
                        <label for="cedula">Serial Carroceria</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="number" name="serialcarroceria" value="{{ old('serialcarroceria') }}" class="form-control form-control-lg @error('serialcarroceria') is-invalid @enderror" id="serialcarroceria" placeholder="Serial de Carroceria" >
                          @error('serialcarroceria')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="municipio">Serial Motor</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="number" name="serialmotor" value="{{ old('serialmotor') }}" class="form-control form-control-lg @error('serialmotor') is-invalid @enderror" id="serialmotor" placeholder="Seral del Motor" >
                          @error('serialmotor')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="nombre">Placa</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="placa" value="{{ old('placa') }}" class="form-control form-control-lg @error('placa') is-invalid @enderror" id="placa" placeholder="Placa del Transporte" >
                          @error('placa')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                    </div>                          
                </div>
            </div>
          
          <!--------------------------Datos de embarcacion-------------------->
          @if($tpclase=='Acuatico')
          <div class="card-header text-center bg-info"><h2>{{ $tpclase }}<strong>INFORMACION DE EMBARCACION</strong></h2></div>
              <div class="card-body text-warning text-center">
                  <!--h3 class="card-title"><strong>Personales</strong></h3-->
                              <div id="mensaje"></div>                     
                    <input type="hidden" name="id" value="" class="form-control" id="id" >
                  <div class="form-group">
                    <div class="row">
                      
                        <div class="col-sm-1" style="text-align: right;">
                        <label for="buque">Buque</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="buque" value="{{ old('buque') }}" class="form-control form-control-lg @error('buque') is-invalid @enderror" id="buque" placeholder="Buque" >
                          @error('buque')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="matricula">Matricula</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="matricula" value="{{ old('matricula') }}" class="form-control form-control-lg @error('matricula') is-invalid @enderror" id="matricula" placeholder="Matricula" >
                          @error('matricula')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="manga">Manga</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="manga" value="{{ old('manga') }}" class="form-control form-control-lg @error('manga') is-invalid @enderror" id="manga" placeholder="Manga" >
                          @error('manga')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="w-100 mt-3"><h3></h3></div>
                      
                        <div class="col-sm-1" style="text-align: right;">
                        <label for="casco">Casco</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="casco" value="{{ old('casco') }}" class="form-control form-control-lg @error('casco') is-invalid @enderror" id="casco" placeholder="Casco" >
                          @error('casco')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="eslora">Eslora</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="eslora" value="{{ old('eslora') }}" class="form-control form-control-lg @error('eslora') is-invalid @enderror" id="eslora" placeholder="Eslora" >
                          @error('eslora')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                      <div class="col-sm-1">
                        <label for="Puntal">Puntal</label>
                      </div>
                      <div class="col-sm-3">
                        <input type="text" name="puntal" value="{{ old('puntal') }}" class="form-control form-control-lg @error('puntal') is-invalid @enderror" id="puntal" placeholder="Puntal" >
                          @error('puntal')
                              <div class="alert alert-danger">{{ $message }}</div>
                          @enderror
                      </div>
                    </div>                          
                </div>
            </div>
            @endif
            <div class="card-body text-warning text-center">
            <div class="form-group">
              <div class="row"><div class="col-lg-12" align="text-center"><button type="submit" class="btn btn-lg btn-success">Registrar Datos</button></div> </div>
            </div>
            </div>
          </div>                   
      </form>
  </div>
@stop