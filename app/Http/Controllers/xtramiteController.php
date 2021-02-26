<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class xtramiteController extends Controller
{
    //
    public function list(){

    	//$clase = Clase::all();
    	return compact($clase);
    
    }

    public function listxtipo(Request $request){

    	$clases =  DB::table('clases')->where(['tipoclase'=>$request->tpclase])->get();
        return response()->json($clases);
    
    }
    public function planesxclase(Request $request){

        $planes = DB::table('plans')->where(['id_clase'=>$request->clase])->get(); 
        return response()->json($planes);
    
    }
    public function planesxid(Request $request){

        $planes = DB::table('plans')->where(['id'=>$request->idplan])->get(); 
        return response()->json($planes);
    
    }
}
