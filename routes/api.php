<?php

use App\Http\Controllers\ActiviteController;
use App\Http\Controllers\ActiviteImagesCotroller;
use App\Http\Controllers\ActualiteController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ChambreController;
use App\Http\Controllers\CommentaireController;
use App\Http\Controllers\CommentPartageController;
use App\Http\Controllers\EvenementController;
use App\Http\Controllers\GastronomieController;
use App\Http\Controllers\GuidesTouristiqueController;
use App\Http\Controllers\HebergementServiceController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\HotelServiceController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\LangueController;
use App\Http\Controllers\LangueGuideContoller;
use App\Http\Controllers\LieuxController;
use App\Http\Controllers\MaisonHotesController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\PartageController;
use App\Http\Controllers\ReservezController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\RiadController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\TemoignagesController;
use App\Http\Controllers\TypeActiviteController;
use App\Http\Controllers\TypeChambreController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VilleController;
use App\Http\Controllers\ContactController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LigneMenuController;
use App\Http\Controllers\UserFavoriteController;


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


//Route::middleware(['checkIp'])->group(function () {


/******favorites******* */
Route::get('/favorites', [UserFavoriteController::class, 'index']);
Route::post('/favorites', [UserFavoriteController::class, 'store']);
Route::delete('/favorites/{id}', [UserFavoriteController::class, 'destroy']);
Route::get('/user_favorite/{id}', [UserFavoriteController::class, 'show']);
/******Endfavorites******* */

/******Langue******* */
Route::post('/langues-guide', [LangueGuideContoller::class, 'store']);
Route::get('/langues-guide', [LangueGuideContoller::class, 'index']);
Route::get('/langues-guide/{id}', [LangueGuideContoller::class, 'show']);
Route::post('/langue-guide-liste', [LangueGuideContoller::class, 'storeArray']);
/******End Lnague******* */

/******Langue******* */
Route::post('/langues', [LangueController::class, 'store']);
Route::get('/langues', [LangueController::class, 'index']);
Route::get('/langues/{id}', [LangueController::class, 'show']);
Route::post('/langue-liste', [LangueController::class, 'storeArray']);
/******End Lnague******* */


/******TypeActivite******* */
Route::post('/type-activites', [TypeActiviteController::class, 'store']);
Route::get('/type-activites', [TypeActiviteController::class, 'index']);
Route::get('/type-activites/{id}', [TypeActiviteController::class, 'show']);
Route::put('/type-activites/{id}', [TypeActiviteController::class, 'update']);
Route::post('/type-activites/update/{id}', [TypeActiviteController::class, 'updateActivite']);
Route::delete('/type-activites/{id}', [TypeActiviteController::class, 'destroy']);
Route::post('/activite-liste', [TypeActiviteController::class, 'storeArray']);
/******EndTypeActivite******* */

/******Menu******* */
Route::post('/menus', [MenuController::class, 'store']);
Route::get('/menu', [MenuController::class, 'index']);
Route::get('/menu/{id}', [MenuController::class, 'show']);
Route::delete('/menus/{id}', [MenuController::class, 'destroy']);
Route::post('/menu-liste', [MenuController::class, 'storeArray']);
Route::put('/menus/{id}', [MenuController::class, 'update']);
/******EndMenu******* */

/******LigneMenu******* */

Route::get('/linge-menus', [LigneMenuController::class, 'index']);
Route::post('/ligne-menus', [LigneMenuController::class, 'storeArray']);
/******EndLigneMenu******* */

/******Service******* */
Route::post('/services', [ServiceController::class, 'store']);
Route::get('/services', [ServiceController::class, 'index']);
// Route::post('/hotelservices', [HotelServiceController::class, 'store']);
Route::post('/hotel-liste-services', [HebergementServiceController::class, 'storeArray']);
Route::post('/hotelservices', [HebergementServiceController::class, 'store']);
/******Guide Service******* */

Route::post('/post-images', [ActiviteImagesCotroller::class, 'store']);
Route::delete('/post-images/{id}', [ActiviteImagesCotroller::class, 'destroy']);

/******Guide Touristique******* */
Route::get('/guides-touristique', [GuidesTouristiqueController::class, 'index']);
Route::post('/guides-touristique', [GuidesTouristiqueController::class, 'store']);
Route::get('/guides-touristique/{slug}', [GuidesTouristiqueController::class, 'show']);
Route::get('/guides-touristique/id/{id}', [GuidesTouristiqueController::class, 'id']);
Route::post('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'update']);
Route::delete('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'destroy']);
Route::get('/guides-touristique/search/{name}', [GuidesTouristiqueController::class, 'search']);
/******EndGuide Touristique******* */

/******Activites******* */
Route::get('/activites', [ActiviteController::class, 'index']);
Route::post('/activites', [ActiviteController::class, 'store']);
Route::get('/activites/{slug}', [ActiviteController::class, 'show']);
Route::get('/activites/id/{id}', [ActiviteController::class, 'id']);
Route::post('/activites/{id}', [ActiviteController::class, 'update']);
Route::delete('/activites/{id}', [ActiviteController::class, 'destroy']);
Route::get('/activites/search/{name}', [ActiviteController::class, 'search']);
/******EndActivites******* */

/******Actualite******* */
Route::get('/evenements', [EvenementController::class, 'index']);
Route::post('/evenements', [EvenementController::class, 'store']);
Route::get('/evenements/{slug}', [EvenementController::class, 'show']);
Route::get('/evenements/id/{id}', [EvenementController::class, 'id']);
Route::post('/evenements/{id}', [EvenementController::class, 'update']);
Route::delete('/evenements/{id}', [EvenementController::class, 'destroy']);
Route::get('/evenements/search/{name}', [EvenementController::class, 'search']);
/******EndActualite******* */

/******commentpartage******* */
Route::get('/commentpartage', [CommentPartageController::class, 'index']);
Route::post('/commentpartage', [CommentPartageController::class, 'store']);
Route::post('/commentpartage/{id}', [CommentPartageController::class, 'update']);
Route::delete('/commentpartage/{id}', [CommentPartageController::class, 'destroy']);
Route::get('/commentpartage/user/{id}', [CommentPartageController::class, 'getCommentsByUserId']);
/******Endcommentpartage******* */

/******Partaage******* */
Route::get('/partages', [PartageController::class, 'index']);
Route::post('/partages', [PartageController::class, 'store']);
Route::post('/partages/{id}', [PartageController::class, 'update']);
Route::delete('/partages/{id}', [PartageController::class, 'destroy']);
Route::get('/partages/{slug}', [PartageController::class, 'show']);
Route::get('/partages/search/{name}', [PartageController::class, 'search']);
/******EndPartaage******* */

/******gastronomies******* */
Route::get('/temoignages', [TemoignagesController::class, 'index']);
Route::post('/temoignages', [TemoignagesController::class, 'store']);
Route::get('/temoignages/{id}', [TemoignagesController::class, 'show']);
Route::post('/temoignages/{id}', [TemoignagesController::class, 'update']);
Route::delete('/temoignages/{id}', [TemoignagesController::class, 'destroy']);
Route::get('/temoignages/search/{name}', [TemoignagesController::class, 'search']);
/******Endgastronomies******* */

/******gastronomies******* */
Route::get('/gastronomies', [GastronomieController::class, 'index']);
Route::post('/gastronomies', [GastronomieController::class, 'store']);
Route::get('/gastronomies/{slug}', [GastronomieController::class, 'show']);
Route::post('/gastronomies/{id}', [GastronomieController::class, 'update']);
Route::delete('/gastronomies/{id}', [GastronomieController::class, 'destroy']);
Route::get('/gastronomies/search/{name}', [GastronomieController::class, 'search']);
/******Endgastronomies******* */


/******lieux******* */
Route::get('/lieux', [LieuxController::class, 'index']);
Route::post('/lieux', [LieuxController::class, 'store']);
Route::get('/lieux/{slug}', [LieuxController::class, 'show']);
Route::get('/lieux/id/{id}', [LieuxController::class, 'id']);
Route::post('/lieux/{id}', [LieuxController::class, 'update']);
Route::delete('/lieux/{id}', [LieuxController::class, 'destroy']);
Route::get('/lieux/search/{name}', [LieuxController::class, 'search']);
/******EndLieux******* */

/******Actualite******* */
Route::get('/actualites', [ActualiteController::class, 'index']);
Route::post('/actualites', [ActualiteController::class, 'store']);
Route::get('/actualites/{slug}', [ActualiteController::class, 'show']);
Route::get('/actualites/id/{id}', [ActualiteController::class, 'id']);
Route::post('/actualites/{id}', [ActualiteController::class, 'update']);
Route::delete('/actualites/{id}', [ActualiteController::class, 'destroy']);
Route::get('/actualites/search/{name}', [ActualiteController::class, 'search']);
/******EndActualite******* */

/******Restaurant******* */
Route::get('/restaurants', [RestaurantController::class, 'index']);
Route::post('/restaurants', [RestaurantController::class, 'store']);
Route::get('/restaurants/{slug}', [RestaurantController::class, 'show']);
Route::get('/restaurants/id/{id}', [RestaurantController::class, 'id']);
Route::post('/restaurants/{id}', [RestaurantController::class, 'update']);
Route::delete('/restaurants/{id}', [RestaurantController::class, 'destroy']);
Route::get('/restaurants/search/{name}', [RestaurantController::class, 'search']);
/******EndRestaurant******* */


/***** get Hebergement By User id ****/

Route::get('/hotels/findbyuserid/{userid}', [HotelController::class, 'findByUserId']);
Route::get('/riads/findbyuserid/{userid}', [RiadController::class, 'findByUserId']);
Route::get('/maisons/findbyuserid/{userid}', [MaisonHotesController::class, 'findByUserId']);
Route::get('/restaurants/findbyuserid/{userid}', [RestaurantController::class, 'findByUserId']);
Route::get('/activites/findbyuserid/{userid}', [ActiviteController::class, 'findByUserId']);
Route::get('/guides-touristique/findbyuserid/{userid}', [GuidesTouristiqueController::class, 'findByUserId']);

/*** End ****/


Route::post('/contact', [ContactController::class, 'store']);

Route::get('/reservations', [ReservezController::class, 'index']);
Route::post('/reservations', [ReservezController::class, 'store']);
Route::post('/reservations/{id}', [ReservezController::class, 'update']);
Route::delete('/reservations/{id}', [ReservezController::class, 'destroy']);

Route::get('reservations/hotel/{id}', [ReservezController::class, 'showByHotel']);
Route::get('reservations/riad/{id}', [ReservezController::class, 'showByRiad']);
Route::get('reservations/restaurant/{id}', [ReservezController::class, 'showByRestaurant']);
Route::get('reservations/maison-hote/{id}', [ReservezController::class, 'showByMaison']);
Route::get('reservations/activite/{id}', [ReservezController::class, 'showByActivite']);
Route::get('reservations/guide/{id}', [ReservezController::class, 'showByGuide']);




Route::get('/commentaires', [CommentaireController::class, 'index']);
Route::get('/commentaires/{id}', [CommentaireController::class, 'show']);
Route::post('/commentaires', [CommentaireController::class, 'store']);
Route::post('/commentaires/{id}', [CommentaireController::class, 'update']);
Route::delete('/commentaires/{id}', [CommentaireController::class, 'destroy']);

Route::get('/commentaires/hotel/{id}', [CommentaireController::class, 'getCommentairesByHotel']);
Route::get('/commentaires/riad/{id}', [CommentaireController::class, 'getCommentairesByRiad']);
Route::get('/commentaires/restaurant/{id}', [CommentaireController::class, 'getCommentairesByRestaurant']);
Route::get('/commentaires/maison-hote/{id}', [CommentaireController::class, 'getCommentairesByMaison']);
Route::get('/commentaires/activite/{id}', [CommentaireController::class, 'getCommentairesByActivite']);
Route::get('/commentaires/guide/{id}', [CommentaireController::class, 'getCommentairesByGuide']);

Route::post('/images', [ImageController::class, 'store']);
Route::delete('/images/{id}', [ImageController::class, 'destroy']);


Route::resource('chambres', ChambreController::class);
Route::post('/chambres/update/{id}', [ChambreController::class, 'updateChambre']);
Route::resource('typechambres', TypeChambreController::class);
Route::post('/liste-chambres', [ChambreController::class, 'storeArray']);


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
Route::get('/maisons/id/{id}', [MaisonHotesController::class, 'id']);
Route::post('/maisons/{id}', [MaisonHotesController::class, 'update']);
Route::delete('/maisons/{id}', [MaisonHotesController::class, 'destroy']);
Route::get('/maisons/search/{name}', [MaisonHotesController::class, 'search']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', [AuthController::class, 'register']);
Route::post('/registerpro', [AuthController::class, 'registerPro']);
Route::post('/admin/register', [AuthController::class, 'registerForAdmin']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/login-admin', [AuthController::class, 'login_admin']);
Route::post('/verifier', [AuthController::class, 'verifier']);

Route::get('/users/professionnels', [UserController::class, 'getProfessionnelsUsers']);
Route::get('/users/voyageurs', [UserController::class, 'getVoyageursUsers']);
Route::delete('/users/{id}', [UserController::class, 'destroy']);
Route::post('/users/update/{id}', [UserController::class, 'updateUser']);
Route::get('/dashboard', [AuthController::class, 'dashboard']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/partages/user/{id}', [PartageController::class, 'mesPartages']);
    Route::post('/users/{id}', [UserController::class, 'update']);
    Route::post('/updatepassword/{id}', [UserController::class, 'updatePassword']);
    Route::get('/users', [UserController::class, 'index']);
    Route::get('/users/{id}', [UserController::class, 'show']);
    
});


//});