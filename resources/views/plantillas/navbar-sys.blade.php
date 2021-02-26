
<?php //$user=Auth::user() ?> {{--pendente para manear roles y accesos--}}
    <div class="container-fluid" style="height: 70px; background-image: url('{{ asset('images/banner2.png') }}'); background-repeat: no-repeat; background-size: cover;">
    </div> 
        <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top py-1">
            <!--a class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" href="#">Navbar</a-->
            <ul class="nav navbar-nav navbar-left">
                <img src="{{ asset('images/logo_segurosvip.png') }}" height="40">
            </ul>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="empresa">Tramites RCV</a>
                    </li>
                        <a class="nav-link" href="{{ route('laborsocial.index') }}">Labor Social</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Usuarios
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="{{ route('user.asesores') }}">Asesores</a>
                              <a class="dropdown-item" href="{{ route('user.index') }}">Usuarios</a>
                        </div>
                  </li>
                </ul>            
            </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        @if (isset (Auth::user()->email))
                            <strong>{{ Auth::user()->email }}</strong>
                        @else
                            <script type="text/javascript">window.location.="/access";</script>
                        @endif                                            
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="{{ route('changepass') }}">Cambiar Clave</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Salir</a>
       
                    </li>
                </ul>
        </nav>
