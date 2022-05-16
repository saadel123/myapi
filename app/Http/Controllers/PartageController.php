<?php

namespace App\Http\Controllers;

use App\Models\Partage;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PartageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Partage::all();
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
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);
        $partages = $request->all();
        if ($request->hasFile('image')) {
            $partages['image'] = $request->image->store('images/partages', 'public');
        }
        $partages['slug'] = Str::slug($request->titre);
        $listpartages = Partage::create($partages);
        return $listpartages;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Partage::whereSlug($slug)->with('commentpartage.user')->first();
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
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);
        $partage = Partage::findOrFail($id);
        $listpartages = $request->all();
        if ($request->hasFile('image')) {
            $listpartages['image'] = $request->image->store('images/partages', 'public');
        }
        $partage->update($listpartages);
        return $listpartages;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Partage::destroy($id);
    }
}
