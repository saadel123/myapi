<?php

namespace App\Http\Controllers;

use App\Models\ActiviteImage;
use Illuminate\Http\Request;

class ActiviteImagesCotroller extends Controller
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
            $path = $mediaFiles->store('images/guides-touristique', 'public');
            $name = $mediaFiles->getClientOriginalName();
            $save = new ActiviteImage();
            //$save->libelle = $name;
            $save->image = $path;
            $save->id_activite = $request->id_activite;
            $save->id_guide = $request->id_guide;
            $save->id_lieux = $request->id_lieux;
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
        //
        return ActiviteImage::destroy($id);
    }
}
