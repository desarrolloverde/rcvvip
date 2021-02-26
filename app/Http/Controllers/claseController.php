<?php

namespace App\Http\Controllers;

use App\Models\Clase;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class claseController extends Controller
{
    //
    public function list(){

    	$clase = Clase::all();
    	return compact($clase);
    
    }

    public function listxtipo(Request $request){

    	$clases =  Clase::where(['tipoclase'=>$request->tpclase])->get();
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
