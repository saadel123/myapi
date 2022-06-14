<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h3>Guides touristique</h3>
    Route::get('/guides-touristique', [GuidesTouristiqueController::class, 'index']);<br>
    Route::post('/guides-touristique', [GuidesTouristiqueController::class, 'store']);<br>
    Route::get('/guides-touristique/{slug}', [GuidesTouristiqueController::class, 'show']);<br>
    Route::post('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'update']);<br>
    Route::delete('/guides-touristique/{id}', [GuidesTouristiqueController::class, 'destroy']);<br>
    Route::get('/guides-touristique/search/{name}', [GuidesTouristiqueController::class, 'search']);<br>
    <h3>Activites</h3>
    Route::get('/activites', [ActiviteController::class, 'index']);<br>
    Route::post('/activites', [ActiviteController::class, 'store']);<br>
    Route::get('/activites/{slug}', [ActiviteController::class, 'show']);<br>
    Route::post('/activites/{id}', [ActiviteController::class, 'update']);<br>
    Route::delete('/activites/{id}', [ActiviteController::class, 'destroy']);<br>
    Route::get('/activites/search/{name}', [ActiviteController::class, 'search']);<br>
    <h3>Evenements</h3>
    Route::get('/evenements', [EvenementController::class, 'index']);<br>
    Route::post('/evenements', [EvenementController::class, 'store']);<br>
    Route::get('/evenements/{slug}', [EvenementController::class, 'show']);<br>
    Route::get('/evenements/id/{id}', [EvenementController::class, 'id']);<br>
    Route::post('/evenements/{id}', [EvenementController::class, 'update']);<br>
    Route::delete('/evenements/{id}', [EvenementController::class, 'destroy']);<br>
    Route::get('/evenements/search/{name}', [EvenementController::class, 'search']);<br>
    <h3>Partage Comments</h3>
    Route::get('/commentpartage', [CommentPartageController::class, 'index']);<br>
    Route::post('/commentpartage', [CommentPartageController::class, 'store']);<br>
    Route::post('/commentpartage/{id}', [CommentPartageController::class, 'update']);<br>
    Route::delete('/commentpartage/{id}', [CommentPartageController::class, 'destroy']);<br>
    <h3>Partages</h3>
    Route::get('/partages', [PartageController::class, 'index']);<br>
    Route::post('/partages', [PartageController::class, 'store']);<br>
    Route::get('/partages/{slug}', [PartageController::class, 'show']);<br>
    Route::post('/partages/{id}', [PartageController::class, 'update']);<br>
    Route::delete('/partages/{id}', [PartageController::class, 'destroy']);<br>
    Route::get('/partages/search/{name}', [PartageController::class, 'search']);<br>
    <h3>Temoignages</h3>
    Route::get('/temoignages', [TemoignagesController::class, 'index']);<br>
    Route::post('/temoignages', [TemoignagesController::class, 'store']);<br>
    Route::get('/temoignages/{id}', [TemoignagesController::class, 'show']);<br>
    Route::post('/temoignages/{id}', [TemoignagesController::class, 'update']);<br>
    Route::delete('/temoignages/{id}', [TemoignagesController::class, 'destroy']);<br>
    Route::get('/temoignages/search/{name}', [TemoignagesController::class, 'search']);<br>
    <h3>Gastronomies</h3>
    Route::get('/gastronomies', [GastronomieController::class, 'index']);<br>
    Route::post('/gastronomies', [GastronomieController::class, 'store']);<br>
    Route::get('/gastronomies/{slug}', [GastronomieController::class, 'show']);<br>
    Route::get('/gastronomies/id/{id}', [GastronomieController::class, 'id']);<br>
    Route::post('/gastronomies/{id}', [GastronomieController::class, 'update']);<br>
    Route::delete('/gastronomies/{id}', [GastronomieController::class, 'destroy']);<br>
    Route::get('/gastronomies/search/{name}', [GastronomieController::class, 'search']);<br>
    <h3>lieux</h3>
    Route::get('/lieux', [LieuxController::class, 'index']);<br>
    Route::post('/lieux', [LieuxController::class, 'store']);<br>
    Route::get('/lieux/{slug}', [LieuxController::class, 'show']);<br>
    Route::get('/lieux/id/{id}', [LieuxController::class, 'id']);<br>
    Route::post('/lieux/{id}', [LieuxController::class, 'update']);<br>
    Route::delete('/lieux/{id}', [LieuxController::class, 'destroy']);<br>
    Route::get('/lieux/search/{name}', [LieuxController::class, 'search']);<br>

    <h3>Actualites</h3>
    Route::get('/actualites', [ActualiteController::class, 'index']);<br>
    Route::post('/actualites', [ActualiteController::class, 'store']);<br>
    Route::get('/actualites/{slug}', [ActualiteController::class, 'show']);<br>
    Route::get('/actualites/id/{id}', [ActualiteController::class, 'id']);<br>
    Route::post('/actualites/{id}', [ActualiteController::class, 'update']);<br>
    Route::delete('/actualites/{id}', [ActualiteController::class, 'destroy']);<br>
    Route::get('/actualites/search/{name}', [ActualiteController::class, 'search']);<br>

    <h3>Restaurant</h3>
    Route::get('/restaurants', [RestaurantController::class, 'index']);<br>
    Route::post('/restaurants', [RestaurantController::class, 'store']);<br>
    Route::get('/restaurants/{slug}', [RestaurantController::class, 'show']);<br>
    Route::post('/restaurants/{id}', [RestaurantController::class, 'update']);<br>
    Route::delete('/restaurants/{id}', [RestaurantController::class, 'destroy']);<br>
    Route::get('/restaurants/search/{name}', [RestaurantController::class, 'search']);<br>

    <h3>Reservez</h3>
    Route::get('/reservations', [ReservezController::class, 'index']);<br>
    Route::post('/reservations', [ReservezController::class, 'store']);<br>
    Route::post('/reservations/{id}', [ReservezController::class, 'update']);<br>
    Route::delete('/reservations/{id}', [ReservezController::class, 'destroy']);<br>
    <h3>Commentaires</h3>
    Route::get('/commentaires', [CommentaireController::class, 'index']);<br>
    Route::post('/commentaires', [CommentaireController::class, 'store']);<br>
    Route::post('/commentaires/{id}', [CommentaireController::class, 'update']);<br>
    Route::delete('/commentaires/{id}', [CommentaireController::class, 'destroy']);<br>
    <h3>Hotels</h3>
    Route::get('/hotels', [HotelController::class, 'index']); <br>
    Route::post('/hotels', [HotelController::class, 'store']); <br>
    Route::get('/hotels/{slug}', [HotelController::class, 'show']); <br>
    Route::get('/hotels/id/{id}', [HotelController::class, 'id']); <br>
    Route::post('/hotels/{id}', [HotelController::class, 'update']); <br>
    Route::delete('/hotels/{id}', [HotelController::class, 'destroy']); <br>
    Route::get('/hotels/search/{name}', [HotelController::class, 'search']); <br>
    <br>

    <h3>Riads</h3>
    Route::get('/riads', [RiadController::class, 'index']); <br>
    Route::post('/riads', [RiadController::class, 'store']); <br>
    Route::get('/riads/{slug}', [RiadController::class, 'show']); <br>
    Route::get('/riads/id/{id}', [RiadController::class, 'id']); <br>
    Route::post('/riads/{id}', [RiadController::class, 'update']); <br>
    Route::delete('/riads/{id}', [RiadController::class, 'destroy']); <br>
    Route::get('/riads/search/{name}', [RiadController::class, 'search']); <br>
    <h3>Maisons</h3>
    Route::get('/maisons', [MaisonHotesController::class, 'index']); <br>
    Route::post('/maisons', [MaisonHotesController::class, 'store']); <br>
    Route::get('/maisons/{slug}', [MaisonHotesController::class, 'show']); <br>
    Route::post('/maisons/{id}', [MaisonHotesController::class, 'update']); <br>
    Route::delete('/maisons/{id}', [MaisonHotesController::class, 'destroy']); <br>
    Route::get('/maisons/search/{name}', [MaisonHotesController::class, 'search']); <br> <br>

    <p>

        Route::resource('chambres', ChambreController::class); <br>
        Route::resource('typechambres', TypeChambreController::class); <br>

        Route::post('/register', [AuthController::class, 'register']); <br>
        Route::post('/login', [AuthController::class, 'login']);
        <br> <br>

        Route::get('/villes', [VilleController::class, 'index']); <br> <br>
        Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::post('/logout', [AuthController::class, 'logout']);
        });

    </p>
</body>

</html>
