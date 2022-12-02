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
        return Actualite::orderBy('created_at', 'DESC')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $this->validate($request, [
        //     'titre' => 'required',
        //     'description' => 'required|min:10|max:30000',
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        // ]);
         $actualite = $request->all();
        if ($request->hasFile('image')) {
            $actualite['image'] = $request->image->store('images/guides-touristique', 'public');
        }
        $actualite['slug'] = Str::slug($request->titre);

        $objActualite = Actualite::create($actualite);
        
        $respone = [
            'actualite' => $objActualite,
        ];
        return response($respone, 201);

        // $actualite = $request->all();
        // if ($request->hasFile('image')) {
        //     $actualite['image'] =
        // }
        // $actualite['slug'] = Str::slug($request->titre . ' ' . $request->id, '-');
        // $listactualites = Actualite::create($actualite);
        // return $listactualites;
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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function id($id)
    {
        return Actualite::findOrFail($id);
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
        /*
        // $this->validate($request, [
        //     'nom' => 'required',
        //     'description' => 'required|min:10|max:30000',
        //     //'tel' => 'required',
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        //     //'email' => 'required|unique:hotels',
        // ]);

        $actualite = Actualite::findOrFail($id);
        $actualite->titre =  $request->titre;
        $actualite->description =  $request->description;
        if ($request->hasFile('image')) {
            $actualite->image = $request->image->store('images/actualites', 'public');
        }
        $actualite->save();
        $respone = [
            'actualite' => $actualite,
        ];
        return response($respone, 201);
        */
        
        $actualite = Actualite::findOrFail($id);
        $actualite->update($request->all());
        return $actualite;
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
