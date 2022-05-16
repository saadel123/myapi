<?php

namespace App\Http\Controllers;

use App\Models\Gastronomie;
use App\Models\Lieux;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LieuxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Lieux::all();
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
        $lieux = $request->all();
        if ($request->hasFile('image')) {
            $lieux['image'] = $request->image->store('images/lieux', 'public');
        }
        $lieux['slug'] = Str::slug($request->titre . ' ' . $request->id, '-');
        $listlieux = Lieux::create($lieux);
        return $listlieux;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Lieux::whereSlug($slug)->first(); 
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
        return Gastronomie::destroy($id);
    }
}
