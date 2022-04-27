<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\MaisonHotesController;
use App\Http\Controllers\RiadController;
use App\Http\Controllers\VilleController;
use Illuminate\Http\Request;
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

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/saveme', [ImageController::class, 'store']);

Route::get('/villes', [VilleController::class, 'index']);

Route::get('/hotels', [HotelController::class, 'index']);
Route::post('/hotels', [HotelController::class, 'store']);
Route::get('/hotels/{id}', [HotelController::class, 'show']);
/*put is not supported in postman for the form-data section i've solved the problem using the bellow insteractions
1-use ?_method=PUT as params(POSTMAN) and keep the route (PUT) or 2-change it to post(Route::POST) with a given id*/
Route::post('/hotels/{id}', [HotelController::class, 'update']);
Route::delete('/hotels/{id}', [HotelController::class, 'destroy']);
Route::get('/hotels/search/{name}', [HotelController::class, 'search']);


Route::get('/riads', [RiadController::class, 'index']);
Route::post('/riads', [RiadController::class, 'store']);
Route::get('/riads/{id}', [RiadController::class, 'show']);
Route::post('/riads/{id}', [RiadController::class, 'update']);
Route::delete('/riads/{id}', [RiadController::class, 'destroy']);
Route::get('/riads/search/{name}', [RiadController::class, 'search']);

Route::get('/maisons', [MaisonHotesController::class, 'index']);
Route::post('/maisons', [MaisonHotesController::class, 'store']);
Route::get('/maisons/{id}', [MaisonHotesController::class, 'show']);
Route::post('/maisons/{id}', [MaisonHotesController::class, 'update']);
Route::delete('/maisons/{id}', [MaisonHotesController::class, 'destroy']);
Route::get('/maisons/search/{name}', [MaisonHotesController::class, 'search']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
});
