<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class xclasificacionController extends Controller
{
    //
    public function modxmarca(Request $request){

    	$modelos =  DB::table('modelos')->where(['id_marca'=>$request->marca])->get();
        return response()->json($modelos);
    
    }
}
