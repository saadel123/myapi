<?php

namespace App\Http\Controllers;

use App\Models\MaisonHotes;
use App\Models\Riad;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class RiadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAdmin()
    {
        return Riad::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }
    public function index()
    {
        return Riad::with('ville', 'images')->where('display',1)->orderBy('created_at', 'DESC')->get();
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        /*
        if (!$request->hasFile('images')) {
            return response()->json(['In order to continue, you must choose at least one image'], 400);
        }

        $request->validate([
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            'tel' => 'required',
            'adresse' => 'required',
            'image' => 'mimes:jpg,jpeg,png|max:2000'
            //'email' => 'required|unique:riads',
        ]);*/
        $riads = $request->all();
        $riads['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        /*if ($request->hasFile('image')) {
            $riads['image'] = $request->image->store('images/riads', 'public');
        }*/
        $listriads = Riad::create($riads);
        /* multiple images code (Image Table)
        foreach ($request->file('images') as $mediaFiles) {
            $path = $mediaFiles->store('images/riads', 'public');
            $name = $mediaFiles->getClientOriginalName();
            $save = new Image();
            $save->libelle = $name;
            $save->image = $path;
            $save->id_riad = $listriads['id'];
            $save->save();
        }*/

        return $listriads;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show($slug)
    {
        $maisonHotes = MaisonHotes::whereSlug($slug)->with('user', 'hebergement_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres')->first();
        $riad = Riad::whereSlug($slug)->with('user', 'hebergement_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres')->first();

        if ($maisonHotes) {
            return response()->json($maisonHotes);
        } elseif ($riad) {
            return response()->json($riad);
        } else {
            return response()->json(null, 404);
        }
    }

    public function findByUserId($user_id)
    {
        return Riad::where('user_id', $user_id)->with('user', 'hebergement_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres')->first();
    }

    public function id($id)
    {
        return Riad::with('ville', 'images', 'commentaires', 'chambres.type_chambres', 'hebergement_service.service')->find($id);
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
        /*$request->validate([
            'image' => 'mimes:jpg,jpeg,png|max:2000'
        ]);*/
        $riads = Riad::findOrFail($id);
        $modifierRiad = $request->all();
        if ($request->hasFile('image')) {
            $modifierRiad['image'] = $request->image->store('images/riads', 'public');
        }
        $riads->update($modifierRiad);
        return $riads;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Riad::destroy($id);
    }

    public function search($nom_riad)
    {
        return Riad::where('nom', 'like', '%' . $nom_riad . '%')->get();
    }
}
