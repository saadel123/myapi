<?php

namespace App\Http\Controllers;

use App\Models\Evenement;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class EvenementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Evenement::all();
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
        $evenements = $request->all();
        if ($request->hasFile('image')) {
            $evenements['image'] = $request->image->store('images/evenements', 'public');
        }
        $evenements['slug'] = Str::slug($request->titre . ' ' . $request->id, '-');
        return  Evenement::create($evenements);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Evenement::whereSlug($slug)->first();
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
        $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);
        $evenement = Evenement::findOrFail($id);
        $modifierevenement = $request->all();
        if ($request->hasFile('image')) {
            $modifierevenement['image'] = $request->image->store('images/evenements', 'public');
        }
        return $evenement->update($modifierevenement);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Evenement::destroy($id);
    }
}
