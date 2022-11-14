<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\MaisonHotes;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MaisonHotesController extends Controller
{
    public function index()
    {
        return MaisonHotes::with('ville','images')->orderBy('created_at', 'DESC')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       /* if (!$request->hasFile('images')) {
            return response()->json(['In order to continue, you must choose at least one image'], 400);
        }
        $request->validate([
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            'tel' => 'required',
            'adresse' => 'required',
            'image' => 'mimes:jpg,jpeg,png|max:2000'
        ]);*/
        $maisons = $request->all();
        $maisons['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        if ($request->hasFile('image')) {
            $maisons['image'] = $request->image->store('images/maisons', 'public');
        }
        $listmaisons = MaisonHotes::create($maisons);
        /* multiple images code (Image Table)*/
      /*  foreach ($request->file('images') as $mediaFiles) {
            $path = $mediaFiles->store('images/riads', 'public');
            $name = $mediaFiles->getClientOriginalName();
            $save = new Image();
            $save->libelle = $name;
            $save->image = $path;
            $save->id_riad = $listmaisons['id'];
            $save->save();
        }*/
        return $listmaisons;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return MaisonHotes::whereSlug($slug)->with('user','ville','hebergement_service.service','images','commentaires.user','chambres.type_chambres')->first();
    }
    
    public function findByUserId($user_id)
    {
        return MaisonHotes::where('user_id',$user_id)->with('user','hebergement_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres')->first();
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
       /* $request->validate([
            'image' => 'mimes:jpg,jpeg,png|max:2000'
        ]);*/
        $MaisonHotess = MaisonHotes::findOrFail($id);
        $modifierMaisons = $request->all();
        if ($request->hasFile('image')) {
            $modifierMaisons['image'] = $request->image->store('images/maisons', 'public');
        }
        $MaisonHotess->update($modifierMaisons);
        return $MaisonHotess;
    }
     public function id($id)
    {
        return MaisonHotes::with('ville','images','commentaires','chambres.type_chambres','hebergement_service.service')->find($id);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return MaisonHotes::destroy($id);
    }

    public function search($nom_maison)
    {
        return MaisonHotes::where('nom', 'like', '%' . $nom_maison . '%')->get();
    }
}
