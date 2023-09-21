<?php

namespace App\Http\Controllers;

use App\Models\Activite;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ActiviteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAdmin()
    {
        return Activite::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }
    public function index()
    {
        return Activite::with('ville', 'images')->where('display',1)->orderBy('created_at', 'DESC')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       /* $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            //'tel' => 'required',
            'adresse' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            //'email' => 'required|unique:hotels',
        ]);*/
        $activites = $request->all();
        if ($request->hasFile('image')) {
            $activites['image'] = $request->image->store('images/activites', 'public');
        }
        $activites['slug'] = Str::slug($request->nom);

        return Activite::create($activites);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Activite::whereSlug($slug)->with('user','type_activite','images','commentaires.user')->first();
    }

        /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function id($id)
    {
        return Activite::with('user','type_activite','images','commentaires.user')->find($id);
    }

    public function findByUserId($user_id)
    {
        return Activite::where('user_id',$user_id)->with('user','type_activite','images','commentaires.user')->first();
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
        $activite = Activite::findOrFail($id);
        $activite->update($request->all());
        return $activite;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Activite::destroy($id);
    }
}
