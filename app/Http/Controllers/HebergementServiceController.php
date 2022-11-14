<?php

namespace App\Http\Controllers;

use App\Models\HebergementService;
use Illuminate\Http\Request;

class HebergementServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = HebergementService::create([
            'id_hotel' => $request->id_hotel,
            'id_service' => $request->id_service,
        ]);
        $respone = [
            'service' => $service,
        ];
        return response($respone, 201);
    }


    public function storeArray(Request $request)
    {
        
        $services = $request->services;
        $id_hotel = $request->id_hotel;
        $id_riad = $request->id_riad;
        $id_maison_hote = $request->id_maison_hote;
        
        if(isset($id_hotel))
            HebergementService::where('id_hotel',$id_hotel)->delete();
        if(isset($id_riad))
            HebergementService::where('id_riad',$id_riad)->delete();
        if(isset($id_maison_hote))
            HebergementService::where('id_maison_hote',$id_maison_hote)->delete();

        
        $servicesArray = [];
        foreach($services as $service){
                $service = HebergementService::create([
                    'id_hotel' => $id_hotel,
                    'id_riad' => $id_riad,
                    'id_maison_hote' => $id_maison_hote,
                    'id_service' => $service,
                ]);
           array_push($servicesArray,$service);
         }
        $respone = [
            'services' => $servicesArray,
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
        //
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
