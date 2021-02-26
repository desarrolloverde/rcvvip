<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Laborsocial;

class websiteController extends Controller
{
    //
    public function inicio()
    {
    	return view('website.inicio');//view('layout.layout',['modulo'=>'website', 'site'=>'inicio']);//return view('welcome');
    }
    public function empresa()
    {
    	return view('website.empresa');
    }

    public function laborsocial()
    {
    	$laborsocials = Laborsocial::orderBy('id','desc')->paginate();
    	return view('website.laborsocial',compact('laborsocials'));
    }

    public function asesorinfo()
    {
    	return view('website.asesorventa');
    }

}
