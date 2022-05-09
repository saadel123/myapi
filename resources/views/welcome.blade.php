<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h3>Reservez</h3>
    Route::get('/reservations', [ReservezController::class, 'index']);<br>
    Route::post('/reservations', [ReservezController::class, 'store']);<br>
    Route::post('/reservations/{id}', [ReservezController::class, 'update']);<br>
    Route::delete('/reservations/{id}', [ReservezController::class, 'destroy']);<br>
    <h3>Commentaires</h3>
    Route::get('/cmts', [CommentaireController::class, 'index']);<br>
    Route::post('/cmts', [CommentaireController::class, 'store']);<br>
    Route::post('/cmts/{id}', [CommentaireController::class, 'update']);<br>
    Route::delete('/cmts/{id}', [CommentaireController::class, 'destroy']);<br>
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
