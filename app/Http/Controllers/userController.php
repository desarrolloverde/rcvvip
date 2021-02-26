<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Http\Request;
use App\Models\User; 
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Validator;

class userController extends Controller
{
    use HasFactory;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
                //
        $users = User::where(['activo'=>1,'aprobado'=>1])->orderBy('id','desc')->get();
        return view('user.index',compact('users'));

    }
    /**
     * Display a listing of the resource type asesor.
     *
     * @return \Illuminate\Http\Response
     */

    public function index_asesores()
    {
                //
        $users = User::where(['activo'=>1,'aprobado'=>0,'roles'=>'asesor'])->orderBy('id','asc')->get();//paginate()
        return view('user.index_asesores',compact('users'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('user.create');
        //return view('layout.layout',['modulo'=>'users', 'site'=>'registro']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        

        $this->validate($request, [ 'cedula'        => 'required|integer|unique:users',
                                    'nombre'        => 'required|string|max:64',
                                    'apellido'      => 'required|string|max:64',
                                    'roles'         => 'required|string',
                                    'email'         => 'required|email|unique:users',
                                    'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
                                    'password_confirmation' => 'min:6'
                                     ]);
        
        $user= new User();
        $user->cedula           = $request->post('cedula');
        $user->nombre           = $request->post('nombre');
        $user->apellido         = $request->post('apellido');
        $user->roles            = $request->post('roles');
        $user->email            = $request->post('email');
        $user->aprobado         = 1;
        $user->password         = Hash::make($request->post('password'));
        $user->remember_token    = Str::random(10);
        $user->save();

        return redirect()->route('user.show',compact('user'));//return redirect('/users');



    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store_asesor(Request $request)
    {
        

        $this->validate($request, [ 'cedula'     => 'required|numeric|min:900000|unique:users',
                                    'nombre'        => 'required|string|max:64',
                                    'apellido'      => 'required|string|max:64',
                                    //'roles'         => 'required|alpha',
                                    'email'         => 'required|email|unique:users'
                                    //'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
                                    ///'password_confirmation' => 'min:6'
                                     ]);
        
        $user= new User();
        $user->cedula           = $request->post('cedula');
        $user->nombre           = $request->post('nombre');
        $user->apellido         = $request->post('apellido');
        $user->roles            = 'asesor';//$request->post('roles');
        $user->email            = $request->post('email');
        $user->password         = Hash::make($request->post('cedula'));
        $user->remember_token    = Str::random(10);
        $user->save();

        return view('website.asesorventa',['mensaje'=>'Sr(a). '.$user->nombre.'...Su solicitud fue enviada, Estaremos respondiendo via email']);//return redirect('/users');



    }

    /**
     * Return list or the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function read()
    {
        //
        $user= new User();
        
            $users=$user::all();
            
        
        //return compact('users');        
        //return view('layout.layout',['modulo'=>'users', 'site'=>'users'],compact('users'));
    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //$user= new User();
        return view('user.show',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        
        return view('user.edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,User $user)
    {
        //validaciones
        $this->validate($request, [ 'cedula'        => 'required|integer',
                                    'nombre'        => 'required|string|max:64',
                                    'apellido'      => 'required|string|max:64',
                                    'roles'         => 'required|string',
                                    'email'         => 'required|email'
                                   // 'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
                                    //'password_confirmation' => 'min:6'
                                     ]);
        //usuarios
        $user->cedula = $request->cedula;
        $user->nombre = $request->nombre;
        $user->apellido = $request->apellido;
        $user->roles = $request->roles;
        $user->email = $request->email;
        $user->save();        
        return redirect('user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        
        $user->delete();
        return redirect()->route('user.index');   
        
        //return view('layout.layout',['modulo'=>'users', 'site'=>'users'],compact('users'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function atender_asesor(Request $request, User $user)
    {

        $user = User::find($request->post('id')); 
        $boton = $request->post('btnatender');
        $lenced=strlen($user->cedula);
        $clave=$user->cedula;
        $abc=[1=>'a',2=>'b',3=>'c',4=>'d',5=>'e',6=>'f',7=>'g',8=>'h'];
        $j=1;
        for ($i=$lenced; $i < 8  ; $i++) { 
            $clave=$clave.$abc[$j];
            $j++;
        }
        //return $clave."-".$boton;
        
        switch ($boton) {
            case 'Autorizar':
                //generar correo
                $user->password=Hash::make($clave);
                $user->activo=1;
                $user->aprobado=1;
                //enviar correo con contraseña
                break;
            
            case 'Rechazar':
                //
                //$user->password=$clave;
                $user->activo=0;
                $user->aprobado=0;
                break;
        }
        $user->save();
        
        return redirect()->route('user.index',['mensaje',$clave]);   
        

    }
}
