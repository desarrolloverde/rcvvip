<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class xubicacionController extends Controller
{
    //
     

     public function estados(Request $request){

    	$estados =  DB::table('estados')->all();
        return response()->json($estados);
    
    }
     public function munxedo(Request $request){

    	$municipio =  DB::table('municipios')->where(['id_estado'=>$request->estado])->get();
        return response()->json($municipio);
    
    }
    public function ciudadxedo(Request $request){

        $ciudad = DB::table('ciudades')->where(['id_estado'=>$request->estado])->get(); 
        return response()->json($ciudad);
    
    }
    public function parrxmun(Request $request){

        $parroquias = DB::table('parroquias')->where(['id_municipio'=>$request->municipio])->get(); 
        return response()->json($parroquias);
    
    }
}
