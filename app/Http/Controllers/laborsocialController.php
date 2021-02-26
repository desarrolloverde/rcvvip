<?php

namespace App\Http\Controllers;

use App\Models\Laborsocial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Validator;



class laborsocialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $laborsocials = Laborsocial::orderBy('id','desc')->paginate();
        return view('laborsocial.index',compact('laborsocials'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('laborsocial.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Reskskskquest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, ['titulo'         =>'required',
                                    'descripcion'   =>'required',
                                    'lugar'         =>'required',
                                    'fecha'         =>'required|date',
                                    'photo_path'     =>'required|file|image|mimes:jpeg,png,gif,jpg|max:2048'
                                  ]);


        $laborsocial = new Laborsocial();
        $laborsocial->titulo = $request->titulo;
        $laborsocial->descripcion = $request->descripcion;
        $laborsocial->lugar = $request->lugar;
        $laborsocial->fecha = $request->fecha;
        $path = $request->file('photo_path')->store('public/laborsocial'); //carpeta origen se debecolocar aqui
        $laborsocial->foto_path = str_replace('public/', '', $path);//correccion de error en path creado por laravel
        //se puede corregir tambien creando un enlacesimbolico a la carpea correcta
        // manualmente//$path = $request->file('photo_path')->storeAs('public/laborsocial', $request->user()->id
        $laborsocial->save();
        //$laborsocial= Laborsocial::create($request->all());
        return redirect()->route('laborsocial.show',compact('laborsocial'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Laborsocial $laborsocial)
    {
        //$laborsocial = Laborsocial::find($id);
        return view('laborsocial.show',compact('laborsocial'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Laborsocial $laborsocial)
    {
        //
        return view('laborsocial.edit',compact('laborsocial'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Laborsocial $laborsocial)
    {
        //
        $laborsocial->update($request->all());
        return redirect()->route('laborsocial.show',compact('laborsocial'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Laborsocial $laborsocial)
    {
        //
        $laborsocial->delete();
        return redirect()->route('laborsocial.index');   
    }
}
