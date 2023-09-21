<?php

namespace App\Http\Controllers;

use App\Models\GuidesTouristique;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class GuidesTouristiqueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAdmin()
    {
        return GuidesTouristique::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }
    public function index()
    {
        return GuidesTouristique::with('ville', 'images')->where('display',1)->orderBy('created_at', 'DESC')->get();
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
            'user_id' => 'required|unique:guides_touristiques',
        ]);*/
        $gdTour = $request->all();
        if ($request->hasFile('image')) {
            $gdTour['image'] = $request->image->store('images/guides-touristique', 'public');
        }
        $gdTour['slug'] = Str::slug($request->nom);

        return GuidesTouristique::create($gdTour);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return GuidesTouristique::whereSlug($slug)->with('user','langue_guides.langue','type_activite','images','commentaires.user')->first();
    }

      /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function id($id)
    {
        return GuidesTouristique::with('user','langue_guides.langue','type_activite','images','commentaires.user')->find($id);
    }

       public function findByUserId($user_id)
    {
        return GuidesTouristique::where('user_id',$user_id)->with('user','langue_guides.langue','type_activite','images','commentaires.user')->first();
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
        $guide = GuidesTouristique::findOrFail($id);
        $guide->update($request->all());
        return $guide;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        return GuidesTouristique::destroy($id);
    }
}
