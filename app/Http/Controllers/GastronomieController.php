<?php

namespace App\Http\Controllers;

use App\Models\Gastronomie;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class GastronomieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Gastronomie::all();
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
        $gastronomie = $request->all();
        if ($request->hasFile('image')) {
            $gastronomie['image'] = $request->image->store('images/gastronomies', 'public');
        }
        $gastronomie['slug'] = Str::slug($request->titre . ' ' . $request->id, '-');
        $listgastronomies = Gastronomie::create($gastronomie);
        return $listgastronomies;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Gastronomie::whereSlug($slug)->first();
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
            'titre' => 'required',
            'description' => 'required|min:10|max:30000',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);
        $gastronomie = Gastronomie::findOrFail($id);
        $modifiergastronomie = $request->all();
        if ($request->hasFile('image')) {
            $modifiergastronomie['image'] = $request->image->store('images/actualites', 'public');
        }
        $gastronomie->update($modifiergastronomie);
        return $gastronomie;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        return Gastronomie::destroy($id);
    }
}
