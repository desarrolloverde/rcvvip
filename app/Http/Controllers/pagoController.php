<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pago;
use Illuminate\Support\Facades\Storage;

class pagoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        
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
        $this->validate($request, [ 'origenbanco'         =>'required',
                                    'referencia'   =>'required',
                                    'fepago'   =>'required|date',
                                    'imgpago'     =>'nullable|file|image|mimes:jpeg,png,gif,jpg|max:2048'
                                  ]);


        $descuento=1;
        $ingresoreal=$request->pago*$descuento;

        
        //$pago = new Pago();
        $pago = $request->only(['origenbanco','referencia','fepago','tipopago','imgpago','id_tramite','pago']);
        //agregar tambien id_tramite, pagofinal, ingresoreal,status(Enviado, Aprobado, Rechazado)
        
        
        //$path = $request->file('imgpago')->store('public/laborsocial'); //carpeta origen se debecolocar aqui
        //$imgpago = str_replace('public/', '', $path);//correccion de error en 
        $pago += [ 'descuento'=>$descuento,
                            'ingresoreal'=>$ingresoreal,
                            //'pagofinal' =>123123,
                            'estatus'=>'Enviado' ];


        $pagosalvado = Pago::create($pago);
        
        //se puede corregir tambien creando un enlacesimbolico a la carpea correcta
        // manualmente//$path = $request->file('photo_path')->storeAs('public/laborsocial', 
        
        //$laborsocial= Laborsocial::create($request->all());
        $datos=$request->only('plan','pagofinal','cobertura','email','propietario','placa');
        return view('tramite.tramite',$datos);//redirect()->route('tramite.tramite',compact('pagosalvado'));
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
