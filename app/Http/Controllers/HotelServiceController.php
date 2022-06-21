<?php

namespace App\Http\Controllers;

use App\Models\HotelService;
use Illuminate\Http\Request;

class HotelServiceController extends Controller
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
        $service = HotelService::create([
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
        $servicesArray = [];
        foreach ($services as $service) {
            $service = HotelService::create([
                'id_hotel' => $id_hotel,
                'id_service' => $service,
            ]);
            array_push($servicesArray, $service);
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
