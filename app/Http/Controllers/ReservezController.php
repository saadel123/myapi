<?php

namespace App\Http\Controllers;

use App\Mail\ReservezMail;
use App\Models\Reservez;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ReservezController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Reservez::all();
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
            'username' => 'required',
            'email' => 'required|min:10|max:3000',
            'subject' => 'required|min:10|max:3000',
            'message' => 'required',
        ]);
        $reservez = $request->all();
        $owner_email = $request->owner_email;
        if (!empty($owner_email)) {
            Mail::to($owner_email)->send(new ReservezMail($reservez));
        }
            // Mail::to('s.elghanemy@directinvest.ma')->send(new ReservezMail($reservez));
        return Reservez::create($reservez);

        // $reservez = Reservez::create([
        //     'username' => $request->username,
        //     'email' =>  $request->email,
        //     'subject' => $request->subject,
        //     'message' => $request->message
        //     'owner_email' => $request->message
        // ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

      /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showByHotel($id)
    {
        return Reservez::where('id_hotel','=',$id)->get();
    }

     public function showByRiad($id)
    {
        Reservez::where('id_riad','=',$id)->get();
    }

     public function showByMaison($id)
    {
        Reservez::where('id_maison_hote','=',$id)->get();
    }

     public function showByrestaurant($id)
    {
        Reservez::where('id_restaurant','=',$id)->get();
    }

     public function showByActivite($id)
    {
        Reservez::where('id_activite','=',$id)->get();
    }

     public function showByGuide($id)
    {
        Reservez::where('id_guide','=',$id)->get();
    }
    public function showByApparthotels($id)
    {
        Reservez::where('id_apparthotels','=',$id)->get();
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
            'username' => 'required',
            'email' => 'required|min:10|max:3000',
            'subject' => 'required|min:10|max:3000',
            'message' => 'required',
        ]);
        $commentaire = Reservez::findOrFail($id);
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
        //
    }
}
