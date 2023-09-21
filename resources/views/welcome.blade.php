<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <meta name="google-site-verification" content="R7mcB049jsqeUhYd3MuVJIeyMezvf0JIN3lDjPjFZeE" />
</head>

<body>

<p>
    /******Appart'hôtels ******* */
Route::get('/appart-hotels', [ApparthotelsController::class, 'index']);<br>
Route::post('/appart-hotels', [ApparthotelsController::class, 'store']);<br>
Route::get('/appart-hotels/{slug}', [ApparthotelsController::class, 'show']);<br>
Route::get('/appart-hotels/id/{id}', [ApparthotelsController::class, 'id']);<br>
Route::post('/appart-hotels/{id}', [ApparthotelsController::class, 'update']);<br>
Route::delete('/appart-hotels/{id}', [ApparthotelsController::class, 'destroy']);<br>
Route::get('/appart-hotels/search/{name}', [ApparthotelsController::class, 'search']);<br>
/******Appart'hôtels ****** */

/******favorites******* */
Route::get('/favorites', [UserFavoriteController::class, 'index']);<br>
Route::post('/favorites', [UserFavoriteController::class, 'store']);<br>
Route::delete('/favorites/{id}', [UserFavoriteController::class, 'destroy']);<br>
Route::get('/user_favorite/{id}', [UserFavoriteController::class, 'show']);<br>
/******Endfavorites******* */

/******Langue******* */
Route::post('/langues-guide', [LangueGuideContoller::class, 'store']);<br>
Route::get('/langues-guide', [LangueGuideContoller::class, 'index']);<br>
Route::get('/langues-guide/{id}', [LangueGuideContoller::class, 'show']);<br>
Route::post('/langue-guide-liste', [LangueGuideContoller::class, 'storeArray']);<br>
/******End Lnague******* */

/******Langue******* */
Route::post('/langues', [LangueController::class, 'store']);<br>
Route::get('/langues', [LangueController::class, 'index']);<br>
Route::get('/langues/{id}', [LangueController::class, 'show']);<br>
Route::post('/langue-liste', [LangueController::class, 'storeArray']);<br>
/******End Lnague******* */

/******TypeActivite******* */
Route::post('/type-activites', [TypeActiviteController::class, 'store']);<br>
Route::get('/type-activites', [TypeActiviteController::class, 'index']);<br>
Route::get('/type-activites/{id}', [TypeActiviteController::class, 'show']);<br>
Route::put('/type-activites/{id}', [TypeActiviteController::class, 'update']);<br>
Route::post('/type-activites/update/{id}', [TypeActiviteController::class, 'updateActivite']);<br>
Route::delete('/type-activites/{id}', [TypeActiviteController::class, 'destroy']);<br>
Route::post('/activite-liste', [TypeActiviteController::class, 'storeArray']);<br>
/******EndTypeActivite******* */

/******Menu******* */
Route::post('/menus', [MenuController::class, 'store']);<br>
Route::get('/menu', [MenuController::class, 'index']);<br>
Route::get('/menu/{id}', [MenuController::class, 'show']);<br>
Route::delete('/menus/{id}', [MenuController::class, 'destroy']);<br>
Route::post('/menu-liste', [MenuController::class, 'storeArray']);<br>
Route::put('/menus/{id}', [MenuController::class, 'update']);<br>
/******EndMenu******* */

/******LigneMenu******* */
Route::get('/linge-menus', [LigneMenuController::class, 'index']);<br>
Route::post('/ligne-menus', [LigneMenuController::class, 'storeArray']);<br>
/******EndLigneMenu******* */

/******Service******* */
Route::post('/services', [ServiceController::class, 'store']);<br>
Route::get('/services', [ServiceController::class, 'index']);<br>
// Route::post('/hotelservices', [HotelServiceController::class, 'store']);<br>
Route::post('/hotel-liste-services', [HebergementServiceController::class, 'storeArray']);<br>
Route::post('/hotelservices', [HebergementServiceController::class, 'store']);<br>
/******Guide Service******* */

Route::post('/post-images', [ActiviteImagesCotroller::class, 'store']);<br>
Route::delete('/post-images/{id}', [ActiviteImagesCotroller::class, 'destroy']);<br>
/******Guide Touristique******* */
Route::get('/guides-touristique', [GuidesTouristiqueController::class, 'index']);<br>
Route::post('/guides-touristique', [GuidesTouristiqueController::class, 'store']);<br>
Route::get('/guides-touristique/{slug}', [GuidesTouristiqueController::class, 'show']);<br>
Route::get('/guides-touristique/id/{id}', [GuidesTouristiqueController::class, 'id']);<br>
Route::post('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'update']);<br>
Route::delete('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'destroy']);<br>
Route::get('/guides-touristique/search/{name}', [GuidesTouristiqueController::class, 'search']);<br>
/******EndGuide Touristique******* */

/******Activites******* */
Route::get('/activites', [ActiviteController::class, 'index']);<br>
Route::post('/activites', [ActiviteController::class, 'store']);<br>
Route::get('/activites/{slug}', [ActiviteController::class, 'show']);<br>
Route::get('/activites/id/{id}', [ActiviteController::class, 'id']);<br>
Route::post('/activites/{id}', [ActiviteController::class, 'update']);<br>
Route::delete('/activites/{id}', [ActiviteController::class, 'destroy']);<br>
Route::get('/activites/search/{name}', [ActiviteController::class, 'search']);<br>
/******EndActivites******* */

/******Actualite******* */
Route::get('/evenements', [EvenementController::class, 'index']);<br>
Route::post('/evenements', [EvenementController::class, 'store']);<br>
Route::get('/evenements/{slug}', [EvenementController::class, 'show']);<br>
Route::get('/evenements/id/{id}', [EvenementController::class, 'id']);<br>
Route::post('/evenements/{id}', [EvenementController::class

</p>

</body>

</html>
