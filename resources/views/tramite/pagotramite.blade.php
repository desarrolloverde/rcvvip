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
      <form method="POST" action="{{ route('pago.store') }}">
      @csrf
          <div class="card border-warning mb-3">
              <div class="card-header text-center bg-warning"><h2><strong>PAGO DE DOCUMENTO</strong></h2></div>
              <div class="card-body  text-center">
                    <div id="message"></div>                     
                    <input type="hidden" name="id_tramite" value="{{ $tramitecontrol->id }}" class="form-control" id="id_tramite" >
                    <input type="hidden" name="pago" value="{{ $plan[0]->costo }}" class="form-control" id="pagofinal" >
                    <input type="hidden" name="plan" value="{{ $plan[0]->plan }}">
                    <input type="hidden" name="cobertura" value="{{ $plan[0]->cobertura }}">
                    <input type="hidden" name="email" value="{{ $propietariosalvado->email }}">
                    <input type="hidden" name="propietario" value="{{ $propietariosalvado->apellido." ". $propietariosalvado->nombre  }}">
                    <input type="hidden" name="placa" value="{{ $transportesalvado->placa  }}">
                    <h3 class="card-title pricing-card-title"><strong>Tramite</strong></h3>
                    <div class="form-group">
                        <div class="row">                                          
                              <div class="col-sm-12">
                            <table class="table">                              
                              <tbody>
                                <tr>
                                  <td>Propietario</td><td>{{ $propietariosalvado->cedula }}</td>
                                  <td  colspan="2">Apellido Propietario {{ $propietariosalvado->apellido }} {{ $propietariosalvado->nombre }} </td>
                                </tr>
                                <tr>
                                  <td colspan="2">{{ $propietariosalvado->email }}</td>
                                </tr>
                                <tr>
                                  <td>Placa del Transporte</td>
                                  <td>{{ $transportesalvado->placa }}</td>
                                  <td>Plan a Contratar</td>
                                  <td>{{ $plan[0]->plan }}</td>
                                </tr>
                                <tr>
                                  <td>Total a Pagar</td><td>{{ $plan[0]->costo }}</td>
                                  <td>Cobertura</td><td>{{ $plan[0]->cobertura }}</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>                        
                       <div class="w-100 mt-3"><h3><strong>Informacion de Cuentas</strong></h3></div>

                        <div class="col-sm-6">
                          <ul class="list-unstyled mt-3 mb-3">
                            <li class="list-group-item">
                              <h2 class="card-title pricing-card-title"><strong>Metodos de Pago</strong></h2>
                              <div class="form-check" align="left">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" value="Pago Mobil" name="tipopago">&nbsp;Pago Movil
                                </label>
                              </div>
                              <div class="form-check"  align="left">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" value="Transferencia name="tipopago">&nbsp;Transferencia Banesco
                                </label>
                              </div>
                              <div class="form-check" align="left">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" value="Transferencia" name="tipopago">&nbsp;Transferencia Venezuela
                                </label>
                              </div>
                            </li>
                          </ul>
                        </div>
                        <ul class="list-unstyled mt-3 mb-3">
                            <li class="list-group-item">
                              <div class="col-sm-6">
                                
                                Aqui Datos de Cuentas Bancaras
                              </div>
                          </li>
                        </ul>
                        <div class="w-100 mt-3"><h3><strong>Datos de Pago</strong></h3></div>
                              <div class="col-sm-2">
                                  <label for="referencia">Numero de Referencia</label>
                              </div>
                                <div class="col-sm-4">
                                  <input type="text" name="referencia" value="{{ old('referencia') }}" class="form-control form-control-lg @error('referencia') is-invalid @enderror" id="referencia" placeholder="Referencia" >
                                  @error('referencia')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                  @enderror
                              </div>
                              <div class="col-sm-2">
                                <label for="Capture">Banco de Origen</label>
                              </div>
                              <div class="col-sm-4">
                                <input type="text" name="origenbanco" class="form-control form-control-lg @error('origenbanco') is-invalid @enderror" id="origenbanco" placeholder="Banco de Origen" >
                                  @error('origenbanco')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                  @enderror
                              </div>
                              <div class="w-100 mt-3"></div>
                              <div class="col-sm-2">
                                <label for="Capture">Fecha de Pago</label>
                              </div>
                              <div class="col-sm-4">
                                <input type="date" name="fepago" class="form-control form-control-lg @error('fepago') is-invalid @enderror" id="fepago" placeholder="Imagen de Pago" >Opcional
                                  @error('fepago')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                  @enderror
                              </div>
                              <div class="col-sm-2">
                                <label for="Capture">Imagen de transferencia (Opcional)</label>
                              </div>
                              <div class="col-sm-4">
                                <input type="file" name="imgpago" class="form-control form-control-lg @error('imgpago') is-invalid @enderror" id="img_pago" placeholder="Imagen de Pago" >Opcional
                                  @error('imgpago')
                                      <div class="alert alert-danger">{{ $message }}</div>
                                  @enderror
                              </div>
                        <div class="w-100 mt-3"></div>
                        <div class="col-sm-12">
                          <button type="submit" class="btn btn-success">Enviar Pago</button>
                        </div>                              
                </div>
            </div>                          
          </div>                         
      </form>
  </div>
@stop