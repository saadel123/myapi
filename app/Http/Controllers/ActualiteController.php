<?php

namespace App\Http\Controllers;

use App\Models\Actualite;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ActualiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Actualite::all();
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
            'titre' => 'required',
            'description' => 'required|min:10|max:30000',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);
        $actualite = $request->all();
        if ($request->hasFile('image')) {
            $actualite['image'] = $request->image->store('images/actualites', 'public');
        }
    $actualite['slug'] = Str::slug($request->titre . ' ' . $request->id, '-');
        $listactualites = Actualite::create($actualite);
        return $listactualites;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Actualite::whereSlug($slug)->first();
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
        $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            //'tel' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            //'email' => 'required|unique:hotels',
        ]);
        $actualites = Actualite::findOrFail($id);
        $modifieractualite = $request->all();
        if ($request->hasFile('image')) {
            $modifieractualite['image'] = $request->image->store('images/actualites', 'public');
        }
        $actualites->update($modifieractualite);
        return $actualites;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Actualite::destroy($id);
    }
}
