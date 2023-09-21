<?php

namespace App\Http\Controllers;

use App\Models\Apparthotels;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ApparthotelsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAdmin()
    {
        return Apparthotels::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }
    public function index()
    {
        $Apparthotelss = Apparthotels::with('ville', 'images')->where('display',1)->orderBy('created_at', 'DESC')->get();
        // $appartements = Appartement::with('ville', 'images')->orderBy('created_at', 'DESC');

        // $results = $Apparthotelss->union($appartements)->get();

        return response()->json($Apparthotelss);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $apparthotel = $request->all();
        if ($request->hasFile('image')) {
            $hotels['image'] = $request->image->store('images/apparthotels', 'public');
        }
        $apparthotel['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        $listapparthotel = Apparthotels::create($apparthotel);
        return $listapparthotel;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $apparthotels = Apparthotels::whereSlug($slug)->with('user', 'hebergement_service.service', 'ville', 'images', 'commentaires.user' ,'chambres.type_chambres','user_favorites')->first();

        if ($apparthotels) {
            return response()->json($apparthotels);
        } else {
            return response()->json(null, 404);
        }
    }

    public function findByUserId($user_id)
    {
        return Apparthotels::where('user_id', $user_id)->with('user', 'hebergement_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres','user_favorites')->first();
    }

    public function id($id)
    {
        return Apparthotels::with('ville', 'images', 'commentaires', 'hebergement_service.service', 'chambres.type_chambres')->find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $apparthotels = Apparthotels::findOrFail($id);
        $modifierApparthotels = $request->all();
        if ($request->hasFile('image')) {
            //$hotels['image'] = $request->file('image');
            $modifierApparthotels['image'] = $request->image->store('images/apparthotels', 'public');
        }
        $apparthotels->update($modifierApparthotels);
        return $apparthotels;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Apparthotels::destroy($id);

    }
}
