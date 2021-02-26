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
      <form method="POST" action="{{-- route('pago.store') --}}">
      @csrf
          <div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2><strong>RCV SOMETIDO A APROBACION</strong></h2></div>
              <div class="card-body  text-center">
                    <div id="message"></div>                     
                    <h3 class="card-title pricing-card-title"><strong>CLIENTE {{-- $propietariosalvado->apellido }}" "{{  $propietariosalvado->nombre --}}</strong></h3>
                    <div class="form-group">
                        <div class="row">                                          
                              <div class="col-sm-12">
                            <table class="table">                              
                              <tbody>
                                <tr>
                                  <td>Placa del Transporte</td>
                                  <td>{{ $datos['placa'] }}</td>
                                  <td>Plan a Contratar</td>
                                  <td>{{ $datos['plan'] }}</td>
                                </tr>
                                <tr>
                                  <td>Pagado</td><td>{{ $datos['pagofinal'] }}</td>
                                  <td>Cobertura</td><td>{{ $datos['cobertura'] }}</td>
                                </tr>
                                <tr>
                                  <td colspan="2">CORREO PARA CONSULTA</td>
                                  <td colspan="2"><strong>{{ $datos['email'] }}</strong></td>
                                </tr>
                                <tr>
                                  <td>Tipo de Transferencia</td>
                                  <td>{{-- $datos['referencia'] --}}</td>
                                  <td>Banco de Origen</td>
                                  <td>{{-- $datos['banco'] --}}</td>
                                </tr>
                                <tr>
                                  <td># referencia</td><td>{{-- $datos['referencia'] --}}</td>
                                  <td>Imagen</td><td>Imagen</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>                                                
                        <div class="w-100 mt-3"></div>
                        <div class="col-sm-12">
                          <button type="submit" class="btn btn-success">Regresar</button>
                        </div>                              
                </div>
            </div>                          
          </div>                         
      </form>
  </div>
@stop