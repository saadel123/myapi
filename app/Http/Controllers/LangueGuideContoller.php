<?php

namespace App\Http\Controllers;

use App\Models\LangueGuide;
use Illuminate\Http\Request;

class LangueGuideContoller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return LangueGuide::all();

    }

    public function storeArray(Request $request)
    {
        $id_guide = $request->id_guide;
        $array = json_decode($request->languesguide, true);
        // $id_type_chambre = '';
        foreach ($array as $languesguide) {

            $objMenu = LangueGuide::create([
                'id_langue' => $languesguide['id_langue'],
                'id_activite' => $id_guide,
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
        LangueGuide::create($request->all());
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
        $tchambre = LangueGuide::findOrFail($id);
        $tchambre->update($request->all());
        return $tchambre;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return LangueGuide::destroy($id);
    }
}
