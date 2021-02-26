<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\websiteController;
use App\Http\Controllers\accessController;
use App\Http\Controllers\userController;
use App\Http\Controllers\laborsocialController;
use App\Http\Controllers\tramiteController;
use App\Http\Controllers\xtramiteController;
use App\Http\Controllers\claseController;
use App\Http\Controllers\xubicacionController;
use App\Http\Controllers\xclasificacionController;
use App\Http\Controllers\pagoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//en lav7 Route::get('/', 'websiteController@inicio']);

//Rutas de sitio web
Route::get('/', [websiteController::class,'inicio'])->name('inicio');
Route::get('/empresa', [websiteController::class,'empresa'])->name('empresa');
Route::get('/laborsocials', [websiteController::class,'laborsocial'])->name('laborsocials');
Route::get('/asesorinfo', [websiteController::class,'asesorinfo'])->name('asesorinfo');
Route::post('/asesorventas', [userController::class,'store_asesor'])->name('user.store_asesor');

//Rutas para acceso a sistema
Route::get('changepass', [accessController::class,'changepass'])->name('changepass');
Route::post('changepwd', [accessController::class,'changepwd'])->name('changepwd');
Route::get('login', [accessController::class,'login'])->name('login');
Route::post('checklogin', [accessController::class,'checklogin'])->name('checklogin');
Route::get('logout', [accessController::class,'logout'])->name('logout');

//tramite RCV
Route::get('rcv', [tramiteController::class,'cotizar'])->name('rcv');
Route::post('rcv1', [tramiteController::class,'create'])->name('rcv.create');
Route::post('rcv2', [tramiteController::class,'store'])->name('rcv.store');
Route::put('rcv2', [pagoController::class,'create'])->name('rcv.pago');
Route::post('pago', [pagoController::class,'store'])->name('pago.store');
Route::get('pagosw', [pagoController::class,'show'])->name('tramite.tramite');
//xajax
Route::post('clasextpjs', [xtramiteController::class,'listxtipo'])->name('clasextpjs');
Route::post('planesxclasejs', [xtramiteController::class,'planesxclase'])->name('planesxclasejs');
Route::post('planesxidjs', [xtramiteController::class,'planesxid'])->name('planesxidjs');
Route::post('modxmarcajs', [xclasificacionController::class,'modxmarca'])->name('modxmarcajs');
Route::post('munxedojs', [xubicacionController::class,'munxedo'])->name('munxedojs');
Route::post('ciudadxedojs', [xubicacionController::class,'ciudadxedo'])->name('ciudadxedojs');
Route::post('parrxmunjs', [xubicacionController::class,'parrxmun'])->name('parrxmunjs');

//Usuario
//ruta especial para usarios asesores de venta
Route::get('user/asesores', [userController::class,'index_asesores'])->name('user.asesores');
Route::post('user/atender_asesor', [userController::class,'atender_asesor'])->name('user.atender_asesor');
//tramite



Route::resource('user',userController::class);

 // Route::get('user', [userController::class,'index'])->name('user.index');
 // Route::get('user/create', [userController::class,'create'])->name('user.create');
 // Route::post('user', [userController::class,'store'])->name('user.store');
 // Route::get('user/{user}', [userController::class,'show'])->name('user.show');
 // Route::get('user/{user}/edit', [userController::class,'edit'])->name('user.edit');
 // Route::put('user/{user}', [userController::class,'update'])->name('user.update');
 // Route::delete('user/{user}', [userController::class,'destroy'])->name('user.destroy');

//labor social
Route::resource('laborsocial',laborsocialController::class);

// Route::get('laborsocial', [laborsocialController::class,'index'])->name('laborsocial.index');
// Route::get('laborsocial/create', [laborsocialController::class,'create'])->name('laborsocial.create');
// Route::post('laborsocial', [laborsocialController::class,'store'])->name('laborsocial.store');
// Route::get('laborsocial/{laborsocial}', [laborsocialController::class,'show'])->name('laborsocial.show');
// Route::get('laborsocial/{laborsocial}/edit', [laborsocialController::class,'edit'])->name('laborsocial.edit');
// Route::put('laborsocial/{laborsocial}', [laborsocialController::class,'update'])->name('laborsocial.update');
// Route::delete('laborsocial/{laborsocial}', [laborsocialController::class,'destroy'])->name('laborsocial.destroy');
