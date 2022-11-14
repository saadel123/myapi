<?php

namespace App\Http\Controllers;

use App\Models\Chambre;
use Illuminate\Http\Request;

class ChambreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Chambre::with('type_chambres')->get();
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
        if($request['type'] == 'Chambre individuelle')
            $id_type_chambre = 1;
            else if($request['type'] == 'Chambre double')
            $id_type_chambre = 2;
            else
            $id_type_chambre = 3;
            */
            
            $id_hotel=$request->id_hotel;
            $id_maison_hote = $request->id_maison_hote;
            $id_riad = $request->id_riad;

             $objChambre = Chambre::create([
                    'type' => $request['type'],
                    'prix' => $request['prix'],
                    'options' => $request['options'],
                    'id_hotel' => $id_hotel,
                    'id_riad' => $id_riad,
                    'id_maison_hote' => $id_maison_hote,
             ]);
        return $objChambre;
    }

    public function storeArray(Request $request)
    {
        $id_hotel=$request->id_hotel;
        $id_maison_hote = $request->id_maison_hote;
        $id_riad = $request->id_riad;
        $array = json_decode($request->chambres, true);
        $id_type_chambre = '';
        
        foreach ($array as $chambre) {

           /* if($chambre['type'] == 'Chambre individuelle')
            $id_type_chambre = 1;
            else if($chambre['type'] == 'Chambre double')
            $id_type_chambre = 2;
            else
            $id_type_chambre = 3;
            */
             $objChambre = Chambre::create([
                    'type' => $request['type'],
                    'prix' => $chambre['prix'],
                    'options' => $chambre['options'],
                    'id_hotel' => $id_hotel,
                    'id_riad' => $id_riad,
                    'id_maison_hote' => $id_maison_hote,
                ]);

        }

        $respone = [
            'Message' => 'Success',
            'Array' => $array
        ];
        return response($respone, 201);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //return Chambre::findOrFail($id);
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
        $chambre = Chambre::findOrFail($id);
         
         $chambre->type  = $request['type'];
         $chambre->prix  = $request['prix'];
         $chambre->options  = $request['options'];

        $chambre->update();
        return $chambre;
    }
    
     /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateChambre(Request $request, $id)   
    {
        $chambre = Chambre::findOrFail($id);
         
         $chambre->type  = $request['type'];
         $chambre->prix  = $request['prix'];
         $chambre->options  = $request['options'];

        $chambre->update();
        return $chambre;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Chambre::destroy($id);
    }
}
