
<?php //$user=Auth::user() ?> {{--pendente para manear roles y accesos--}}
    <div class="container-fluid" style="height: 70px; background-image: url('{{ asset('images/banner2.png') }}'); background-repeat: no-repeat; background-size: cover;">
    </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top py-1">
            <!--a class="navbar-brand" href="#">Navbar</a-->
            <ul class="nav navbar-nav navbar-left">
                <img src="{{ asset('images/logo_segurosvip.png') }}" height="40">
            </ul>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ route('inicio') }}">Inicio<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('empresa') }}">Quienes Somos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('asesorinfo') }}">Asesores de venta</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contactenos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('laborsocials') }}">Labor Social</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Tramites
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="{{ route('rcv') }}">RCV</a>
                              <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                  </li>
                </ul>            
            </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">Ingresar</a>
                    </li>
                </ul>
        </nav>
