<?php

namespace App\Http\Controllers;

use App\Models\Commentaire;
use Egulias\EmailValidator\Warning\Comment;
use Illuminate\Http\Request;

class CommentaireController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Commentaire::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'commentaire' => 'required'
        ]);
        return Commentaire::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
      public function show($id)
    {
        return Commentaire::whereId($id)->with('user')->first();

    }

       /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getCommentairesByHotel($hotel_id)
    {
       return Commentaire::where('id_hotel','=',$hotel_id)->with('user')->get();
    }

    public function getCommentairesByRiad($riad_id)
    {
       return Commentaire::where('id_riad','=',$riad_id)->with('user')->get();
    }

    public function getCommentairesByRestaurant($restaurant_id)
    {
       return Commentaire::where('id_restaurant','=',$restaurant_id)->with('user')->get();
    }

    public function getCommentairesByMaison($maison_id)
    {
       return Commentaire::where('id_maison_hote','=',$maison_id)->with('user')->get();
    }

    public function getCommentairesByActivite($activite_id)
    {
       return Commentaire::where('id_activite','=',$activite_id)->with('user')->get();
    }

    public function getCommentairesByGuide($guide_id)
    {
       return Commentaire::where('id_guide','=',$guide_id)->with('user')->get();
    }

    public function getCommentairesByAppartHotel($guide_id)
    {
       return Commentaire::where('id_apparthotels','=',$guide_id)->with('user')->get();
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
        $commentaire = Commentaire::findOrFail($id);
        $commentaire->update($request->all());
        return $commentaire;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Commentaire::destroy($id);
    }
}
