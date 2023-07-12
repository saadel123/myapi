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
        return Gastronomie::orderBy('created_at', 'DESC')->get();
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
        $data = $request->all();
        $data['slug'] = Str::slug($request->titre);
        if ($request->hasFile('image')) {
            $data['image'] = $request->image->store('images/gastronomies', 'public');
        }
        $gastronomie = Gastronomie::create($data);

        /*$gastronomie = Gastronomie::create([
            'titre' => $request->titre,
            'slug' =>  Str::slug($request->titre),
            'description' => $request->description,
            'image' => $request->image->store('images/gastronomies', 'public'),
        ]);*/
        $respone = [
            'gastronomie' => $gastronomie,
        ];
        return response($respone, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Gastronomie::whereSlug($slug)->with('user','commentaires.user')->first();
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

        // $this->validate($request, [
        //     'titre' => 'required',
        //     'description' => 'required|min:10|max:30000',
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        // ]);
         /*
        $gastronomie = Gastronomie::findOrFail($id);
        $updateGastronomie = $request->all();
        if ($request->hasFile('image')) {
            $updateGastronomie["image"] = $request->image->store('images/gastronomies', 'public');
        }
        $gastronomie->update($updateGastronomie);
        */
        $gastronomie = Gastronomie::findOrFail($id);
        $gastronomie->titre =  $request->titre;
        $gastronomie->description =  $request->description;
        $gastronomie->seo_titre =  $request->seo_titre;
        $gastronomie->seo_keywords =  $request->seo_keywords;
        $gastronomie->seo_description =  $request->seo_description;
        if ($request->hasFile('image')) {
            $gastronomie->image = $request->image->store('images/gastronomies', 'public');
        }
        $gastronomie->save();
        
        $respone = [
            'gastronomie' => $gastronomie,
        ];
        return response($respone, 201);


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
