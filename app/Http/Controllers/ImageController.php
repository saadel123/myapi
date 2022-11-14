<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
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
        if (!$request->hasFile('images')) {
            return response()->json(['In order to continue, you must choose at least one image'], 400);
        }
        $this->validate($request, [
            'images.*' => 'required|image|mimes:jpg,jpeg,png,gif|max:2048',
        ]);

        foreach ($request->file('images') as $mediaFiles) {

            //$name = $mediaFiles->getClientOriginalName();
            $save = new Image();
            if (!empty($request->id_riad)) {
                $save->id_riad = $request->id_riad;
                $path = $mediaFiles->store('images/riads', 'public');
            }
            if (!empty($request->id_hotel)) {
                $save->id_hotel = $request->id_hotel;
                $path = $mediaFiles->store('images/hotels', 'public');
            }
            if (!empty($request->id_maison_hote)) {
                $save->id_maison_hote = $request->id_maison_hote;
                $path = $mediaFiles->store('images/maisons', 'public');
            }
            if (!empty($request->id_restaurant)) {
                $save->id_restaurant = $request->id_restaurant;
                $path = $mediaFiles->store('images/restaurants', 'public');
            }

            //$save->libelle = $name;
            $save->image = $path;
            $save->save();
        }

        return response()->json(['file_uploaded'], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Image::destroy($id);
    }
}
