<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use App\Models\User; 
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class accessController extends Controller
{
    //
    public function login(){

    
    	return view('access.login');
    
    }

    public function checklogin(Request $request){

    	
    	$this->validate($request, ['email'  => 'required|email',
    							 'password'	=>'required|string|min:8'
    						      ]);
    	$user_data =  array(
    			'email' 		=>  $request->post('email'),
    			'password'		=>	$request->post('password')
    		);
        //&& Auth::user()->activo==1 && Auth::user()->aprobado==1
    	if(Auth::attempt($user_data) && Auth::user()->activo==1 && Auth::user()->aprobado==1)
    	{
        	return view('system.inicio-sys');		
    	} else {
            //$message=>'No Autorizado para Acceso';
            Auth::logout();
           return view('access.login',['mensaje'=>'No Autorizado para Acceso']); 
    	}
    	
    }
    public function logout() {
    	Auth::logout();
    	return redirect('/');
    }   
    public function changepass() {
        return view('access.changepass');

    }
    public function changepwd(Request $request) {
        
        $this->validate($request, ['lastpwd'    =>'required',
                                    'newpwd'    =>'required|string|min:8',
                                    'newpwd2'    =>'required|same:newpwd'
                                  ]);
        
        if (Hash::check($request->lastpwd, Auth::user()->password))
            {
                $user = new User();
                $user = Auth::user();
                $user->Password = Hash::make($request->newpwd);
                $user->save();
                return view('system.inicio-sys');
            } else {
                return view('access.changepass');
            }
            


    }
}
