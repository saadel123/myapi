<?php

namespace App\Http\Controllers;

use App\Models\Hotel;
use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Hotel::with('ville','images')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!$request->hasFile('images')) {
            return response()->json(['In order to continue, you must choose at least one image'], 400);
        }
        $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            'tel' => 'required',
            'adresse' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            'images.*' => 'required|image|mimes:jpg,jpeg,png,gif|max:2048'
            //'email' => 'required|unique:hotels',
        ]);
        $hotels = $request->all();
        if ($request->hasFile('image')) {
            $hotels['image'] = $request->image->store('images/hotels', 'public');
        }
        $hotels['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        $listhotels = Hotel::create($hotels);

        /* multiple images code (Image Table)*/
        foreach ($request->file('images') as $mediaFiles) {
            $path = $mediaFiles->store('images/hotels', 'public');
            $name = $mediaFiles->getClientOriginalName();
            $save = new Image();
            $save->libelle = $name;
            $save->image = $path;
            $save->id_hotel = $listhotels['id'];
            $save->save();
        }

        return $listhotels;
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Hotel::whereId($id)->with('ville','images','commentaires','chambres','type_chambres')->first();
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
        $request->validate([
            'image' => 'mimes:jpg,jpeg,png|max:2000'
        ]);
        $hotels = Hotel::findOrFail($id);
        $modifierHotel = $request->all();
        if ($request->hasFile('image')) {
            //$hotels['image'] = $request->file('image');
            $modifierHotel['image'] = $request->image->store('images/hotels', 'public');
        }
        $hotels->update($modifierHotel);
        return $hotels;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Hotel::destroy($id);
    }

    public function search($nom_hotle)
    {
        return Hotel::where('nom', 'like', '%' . $nom_hotle . '%')->get();
    }
}
