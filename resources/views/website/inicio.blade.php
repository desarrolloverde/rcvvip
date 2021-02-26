@extends('layout.layout')
  @section('page')
      <div class="container" style="width: 800px; height: 450px;">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="{{asset('/images/carousel/imagen1.png')}}" alt="Primer slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="{{asset('/images/carousel/imagen2.png')}}" alt="Segundo slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="{{asset('/images/carousel/imagen3.png')}}" alt="Tercero slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previo</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Proximo</span>
              </a>
            </div>
        </div>
  @stop