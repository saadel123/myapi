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
    public function storeArray(Request $request)
    {
        $id_hotel = $request->id_hotel;
        $array = json_decode($request->chambres, true);
        $id_type_chambre = '';
        foreach ($array as $chambre) {

            if ($chambre['type'] == 'Chambre individuelle')
                $id_type_chambre = 1;
            else if ($chambre['type'] == 'Chambre double')
                $id_type_chambre = 2;
            else
                $id_type_chambre = 3;

            $objChambre = Chambre::create([
                'id_type_chambre' => $id_type_chambre,
                'prix' => $chambre['prix'],
                'nbr_personnes' => $chambre['nbr_personnes'],
                'options' => $chambre['options'],
                'id_hotel' => $id_hotel,
            ]);
        }

        $respone = [
            'Message' => 'Success',
            'Array' => $array
        ];
        return response($respone, 201);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return Chambre::create($request->all());
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
        $chambre->update($request->all());
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
