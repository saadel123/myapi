<?php

namespace App\Http\Controllers;

use App\Models\GuidesTouristique;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class GuidesTouristiqueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return GuidesTouristique::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            //'tel' => 'required',
            'adresse' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            'user_id' => 'required|unique:guides_touristiques',
        ]);
        $gdTour = $request->all();
        if ($request->hasFile('image')) {
            $gdTour['image'] = $request->image->store('images/guides-touristique', 'public');
        }
        $gdTour['slug'] = Str::slug($request->nom);

        return GuidesTouristique::create($gdTour);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return GuidesTouristique::whereSlug($slug)->with('langue_guides.langue','type_activite','images','commentaires.user')->first();
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
    }
}