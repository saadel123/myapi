<?php

namespace App\Http\Controllers;

use App\Models\TypeActivite;
use Illuminate\Http\Request;

class TypeActiviteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TypeActivite::all();
    }

    public function storeArray(Request $request)
    {
        $id_activite = $request->id_activite;
        $id_guide = $request->id_guide;
        $array = json_decode($request->typeActivites, true);
        // $id_type_chambre = '';
        foreach ($array as $typeactvites) {

            $objMenu = TypeActivite::create([
                'activite' => $typeactvites['activite'],
                'duree' => $typeactvites['duree'],
                'prix_actv' => $typeactvites['prix'],
                'id_activite' => $id_activite,
                'id_guide' => $id_guide,
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
        $typeActivite = TypeActivite::create($request->all());
        
         return $typeActivite;
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tchambre = TypeActivite::findOrFail($id);
        $tchambre->update($request->all());
        return $tchambre;
    }
    
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response 
     */
    public function updateActivite(Request $request, $id)
    {
        $activite = TypeActivite::findOrFail($id);
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
        return TypeActivite::destroy($id);
    }
}
