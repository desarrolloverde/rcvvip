@extends('layout.layout')
@section('page')
<div class="container">
     @if ($message = Session::get('error'));
        <div class="alert alert-primary" role="alert">
            <button type="button" class="close" data-dismiss="alert">x</button>
            <strong>{{ $message }}</strong>
        </div>
    @endif
     
  
    <form method="post" name="myForm" action="{{ route('rcv.create') }}">
    @csrf  
      <div class="container">
      <div class="card-deck mb-3 text-center">
        <div class="card mb-4 ml-1 shadow">
          <div class="card-header bg-success">
            <h3 class="my-0 font-weight-normal">Seleccione Tipo y Clase de Transporte</h3>
          </div>
          <div class="card-body">
            <ul class="list-unstyled mt-3 mb-3">
              <li class="list-group-item">
                <h2 class="card-title pricing-card-title"><strong>Tipo de Transporte</strong></h2>
                <div class="form-check">
                  <label class="form-check-label">
                    <input type="radio" class="form-check-input" id="tpclase" name="tpclase" value="Terrestre">&nbsp;Terrestre
                  </label>
                </div>
                <div class="form-check">
                  <label class="form-check-label">
                    <input type="radio" class="form-check-input" id="tpclase" name="tpclase" value="Acuatico">&nbsp;Acuatico
                  </label>
                </div>
              </li>
            </ul>
            <input  name="hdplan"  id="hdplan" >
            <ul class="list-unstyled mt-3 mb-4">
              <li class="list-group-item">
              <h2 class="card-title pricing-card-title"><strong>Clase de Vehiculo</strong></h2>
                <ul class="list-unstyled mt-3 mb-4">
                  <li>Seleccionar:
                    <select class="form-control form-control-lg @error('clases') is-invalid @enderror" name="clases" id="clases">
                        <option value="">Selecionar</option>
                      </select>
                  </li>
                </ul>
                <!-- button type="button" class="btn btn-lg btn-block btn-outline-primary">Sign up for free</button-->
              </li>
            </ul>
          </div>
        </div>
        <div class="card mb-4 shadow ml-1">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Planes</h4>
          </div>
          <!--ul class="list-unstyled mt-3">
            <li class="list-group-item"-->
            
              <div class="card-body">
                <h2 class="card-title pricing-card-title"><strong>Elegir Plan</strong></h2>
                <ul class="list-unstyled mt-3 mb-4" id="ulplans">
                  <p>Seleccionar clase de vehiculo</p>
                </ul>
              </div>
              <!--/li>              
          </ul-->
        </div>
        <div class="card mb-4 ml-1 shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">Resumen</h4>
          </div>
          <div class="card-body" id="dscplan">
            
          </div>
        </div>
      </div>

        
    </form>
</div>
@stop

        
