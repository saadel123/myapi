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
        return Evenement::orderBy('created_at', 'DESC')->get();
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
            $data['image'] = $request->image->store('images/evenements', 'public');
        }
        $evenement = Evenement::create($data);
        /*
        $evenement = Evenement::create([
            'titre' => $request->titre,
            'slug' =>  Str::slug($request->titre),
            'description' => $request->description,
            'image' => $request->image->store('images/evenements', 'public'),
        ]);
         */
        $respone = [
            'evenement' => $evenement,
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
        // $this->validate($request, [
        //     'nom' => 'required',
        //     'description' => 'required|min:10|max:30000',
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        // ]);
         /*
        $evenement = Evenement::findOrFail($id);
        $updateEvenement = $request->all();
        if ($request->hasFile('image')) {
            $updateGastronomie["image"] = $request->image->store('images/evenements', 'public');
        }
        $evenement->update($updateEvenement);
       */
        $evenement = Evenement::findOrFail($id);
        $evenement->titre =  $request->titre;
        $evenement->description =  $request->description;
              $evenement->seo_titre =  $request->seo_titre;
         $evenement->seo_keywords =  $request->seo_keywords;
          $evenement->seo_description =  $request->seo_description;
        if ($request->hasFile('image')) {
            $evenement->image = $request->image->store('images/evenements', 'public');
        }
        $evenement->save();
         
        $respone = [
            'evenement' => $evenement,
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
        return Evenement::destroy($id);
    }
}
