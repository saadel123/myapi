<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ChambreController;
use App\Http\Controllers\CommentaireController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\MaisonHotesController;
use App\Http\Controllers\RiadController;
use App\Http\Controllers\TypeChambreController;
use App\Http\Controllers\VilleController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/cmt', [CommentaireController::class, 'index']);

Route::post('/saveme', [ImageController::class, 'store']);


Route::resource('chambres', ChambreController::class);
Route::resource('typechambres', TypeChambreController::class);

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);


Route::get('/villes', [VilleController::class, 'index']);


Route::get('/hotels', [HotelController::class, 'index']);
Route::post('/hotels', [HotelController::class, 'store']);
Route::get('/hotels/{slug}', [HotelController::class, 'show']);
Route::get('/hotels/id/{id}', [HotelController::class, 'id']);
/*put is not supported in postman for the form-data section i've solved the problem using the bellow insteractions
1-use ?_method=PUT as params(POSTMAN) and keep the route (PUT) or 2-change it to post(Route::POST) with a given id*/
Route::post('/hotels/{id}', [HotelController::class, 'update']);
Route::delete('/hotels/{id}', [HotelController::class, 'destroy']);
Route::get('/hotels/search/{name}', [HotelController::class, 'search']);


Route::get('/riads', [RiadController::class, 'index']);
Route::post('/riads', [RiadController::class, 'store']);
Route::get('/riads/{slug}', [RiadController::class, 'show']);
Route::get('/riads/id/{id}', [RiadController::class, 'id']);
Route::post('/riads/{id}', [RiadController::class, 'update']);
Route::delete('/riads/{id}', [RiadController::class, 'destroy']);
Route::get('/riads/search/{name}', [RiadController::class, 'search']);

Route::get('/maisons', [MaisonHotesController::class, 'index']);
Route::post('/maisons', [MaisonHotesController::class, 'store']);
Route::get('/maisons/{slug}', [MaisonHotesController::class, 'show']);
Route::post('/maisons/{id}', [MaisonHotesController::class, 'update']);
Route::delete('/maisons/{id}', [MaisonHotesController::class, 'destroy']);
Route::get('/maisons/search/{name}', [MaisonHotesController::class, 'search']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
});
