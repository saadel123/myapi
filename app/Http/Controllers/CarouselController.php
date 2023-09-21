<?php

namespace App\Http\Controllers;

use App\Models\Activite;
use App\Models\GuidesTouristique;
use App\Models\Hotel;
use App\Models\MaisonHotes;
use App\Models\Restaurant;
use App\Models\Riad;
use Illuminate\Http\Request;

class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $carousel = Riad::where('display_home',1)->get();
        $carousel = collect();
        $carousel = $carousel->concat(Riad::with('ville', 'images')->where('display_home', 1)->get());
        $carousel = $carousel->concat(Hotel::with('ville', 'images')->where('display_home', 1)->get());
        $carousel = $carousel->concat(MaisonHotes::with('ville', 'images')->where('display_home', 1)->get());
        $carousel = $carousel->concat(Restaurant::with('ville', 'images')->where('display_home', 1)->get());
        $carousel = $carousel->concat(Activite::with('ville', 'images')->where('display_home', 1)->get());
        $carousel = $carousel->concat(GuidesTouristique::with('ville', 'images')->where('display_home', 1)->get());
        return $carousel;
        // return response()->json(['carousel' => $carousel]);
    }
}
