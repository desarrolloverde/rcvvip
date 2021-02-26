<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\claseController;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\propietarioController;
use App\Http\Controllers\transporteController;
use Illuminate\Support\Facades\DB;
use App\Models\Tramite; 
use Illuminate\Support\Collection;
use validator;
use Auth;



class tramiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cotizar()
    {
        //
        //$clases = Clase::all();
        //$clases = Clase::where(['tipoclase'=>'Acuatico'])->get();
        return view('tramite.cotizacion');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('tramite.pagotramite');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        //['tptransporte'=>$request->post('tptransporte')]
        $estados= DB::table('estados')->get();
        $marcas= DB::table('marcas')->get();
        $tipos= DB::table('tipo')->get();
        $usos= DB::table('usos')->get();
        $clases= DB::table('clases')->get();

        return view('tramite.creatercv',['tpclase'=>$request->tpclase,'idclase'=>$request->clases,'plan'=>$request->rdplan,'step'=>1],compact('estados','marcas','tipos','usos','clases'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, [ 'cedula'        => 'required|max:9|min:6|unique:propietarios',
                                    'nombre'        => 'required|string|max:64',
                                    'apellido'      => 'required|string|max:64',
                                    'email'         => 'required|email|unique:propietarios',
                                    'telefono'        => 'required|string|max:13',
                                    'estado'        => 'required',
                                    'municipio'        => 'required',
                                    'ciudad'        => 'required',
                                    'marca'         =>'required',//transporte
                                    'modelo'   =>'required',
                                    'tipo'         =>'required',
                                    'clase'         =>'required',
                                    'uso'         =>'required',
                                    'color'         =>'required|max:64',
                                    'anio'         =>'required|integer',
                                    'puestos'         =>'required|integer',
                                    'serialcarroceria'         =>'required|integer',
                                    'serialmotor'         =>'required|integer',
                                    'placa'         =>'required|max:8'
                                     ]);

        $propietario = [ 'cedula'         => $request->cedula,
                        'nombre'        => $request->nombre,
                        'apellido'          => $request->apellido,
                        'email'         => $request->email,               
                        'telefono'           => $request->telefono,
                        'id_estado'         => $request->estado,
                        'id_municipio'       => $request->municipio,
                        'id_ciudad'          => $request->ciudad];

        //aqui debo llamar el controlador propietario y guardar la infrmación
        
        $propietariocontrol = new propietarioController;
        $propietariosalvado=$propietariocontrol->store($propietario);
        //AQUI CONSULTAR EL ID DEL PROPIETARIO PARA PODER GUARDAR TRANSPORTE Y TRAMITE
        $transporte = [ 'color'         => $request->color,
                        'puestos'       => $request->puestos,
                        'id_marca'      => $request->marca,
                        'id_modelo'     => $request->modelo,
                        'id_tipo'       => $request->tipo,
                        'id_clase'      => $request->clase,               
                        'id_uso'        => $request->uso,                        
                        'anio'          => $request->anio,
                        'serialcarroceria' => $request->serialcarroceria,
                        'serialmotor'       => $request->serialmotor,
                        'placa'         => $request->placa,
                        'id_propietario' =>  $propietariosalvado->id
                    ];
        //aqui llamar al controlador transporte y guardar la informacion
        $transportecontrol =  new transporteController;
        $transportesalvado = $transportecontrol->store($transporte);
        $iduser= (isset (Auth::user()->email)) ? $iduser = Auth::user()->id : 1;  //si se hace desde sistema se asoia al usuario
        $tramite=[  'id_user'=> $iduser,
                    'id_propietario'=>$propietariosalvado->id,
                    'id_transporte'=>$transportesalvado->id,
                    'id_statustramite'=>1,
                    'id_clase'=>$transportesalvado->id_clase,
                    'id_plan'=>$request->plan,
                    'tptramite'=>'rcv'
                    ];

        $tramitecontrol = Tramite::create($tramite);

        $plan = $this->planesxid($tramitecontrol->id_plan);
        
        //Obtener nuevamente Plan.
        //Pasar objetos Propietario y Transporte
        return view('tramite.pagotramite',compact('propietariosalvado','transportesalvado','tramitecontrol','plan'));
        //dd($tramitecontrol);

    }

    public function planesxclase($idclase){

        $planes = DB::table('plans')->where(['id_clase'=>$idclase])->get(); 
        return $planes;
    
    }
    public function planesxid($idplan){

        $plan = DB::table('plans')->where(['id'=>$idplan])->get(); 
        return $plan;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
