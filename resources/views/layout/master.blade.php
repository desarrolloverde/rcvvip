<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags --> 
    <title>@yield('title')</title>

<!-- Styles -->
        <link href="{{ mix('css/app.css') }}" rel="stylesheet" type="text/css" />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
        
                <!-- JavaScript -->
        <script src="{{ mix('js/app.js') }}" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        </script>
        @if(Route::currentRouteName()=='rcv')
            <script src="{{ asset('js/cotizacion.js') }}" type="text/javascript"></script>            
        @endif
        @if(Route::currentRouteName()=='rcv.create')
            <script src="{{ asset('js/ubicacion.js') }}" type="text/javascript"></script>
            <script src="{{ asset('js/clasificacion.js') }}" type="text/javascript"></script>
        @endif
        <!--style type="text/css">
            .container {
                 font-size: 20px;
                 font-family: Verdana, Helvetica, sans-serif;
            }
            h1 {
              font-size: 30px;
            }

            h2 {
              font-size: 20px;
            }

            p {
              font-size: 15px;
            }
        </style-->
</head>
<body>
        {{-- inicio del navbar --}}    
        @section('navbar')
        @show
        {{-- fin del navbar --}}
    {{--inicio del contenido de inicio--}}
        <br>
        <div class="container-fluid">
            @yield('content')
        </div>
    {{-- fin contenido de inicio --}}

{{-- footer --}}
        @yield('footer')