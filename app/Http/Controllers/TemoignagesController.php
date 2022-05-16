<?php

namespace App\Http\Controllers;

use App\Models\Temoignage;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class TemoignagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Temoignage::with('user')->get();
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
            'description' => 'required|min:10|max:30000',
        ]);
        $gastronomie = $request->all();
        if ($request->hasFile('image')) {
            $gastronomie['image'] = $request->image->store('images/temoignages', 'public');
        }
        $gastronomie['slug'] = Str::slug($request->nom);
        $listgastronomies = Temoignage::create($gastronomie);
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
        return Temoignage::with('user')->find($slug);
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
            'description' => 'required|min:10|max:30000',
        ]);
        $temoignage = Temoignage::findOrFail($id);
        $listtemoignages = $request->all();
        if ($request->hasFile('image')) {
            $listtemoignages['image'] = $request->image->store('images/temoignages', 'public');
        }
        $temoignage->update($listtemoignages);
        return $temoignage;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Temoignage::destroy($id);
    }
}
