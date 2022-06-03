<?php

namespace App\Http\Controllers;

use App\Models\Temoignage;
use Illuminate\Http\Request;



class TemoignagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Temoignage::with('user')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $this->validate($request, [
        //     'description' => 'required|min:10|max:30000',
        //     'user_id' => 'required',
        // ]);
        $temoignage = Temoignage::create([
            'user_id' => $request->user_id,
            'description' => $request->description,
            'image' => $request->image->store('images/temoignages', 'public'),
        ]);
        $respone = [
            'temoignage' => $temoignage,
        ];
        return response($respone, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Temoignage::with('user')->find($slug);
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
        // $this->validate($request, [
        //     'description' => 'required|min:10|max:30000',
        // ]);
        $temoignage = temoignage::findOrFail($id);
        $temoignage->user_id =  $request->user_id;
        $temoignage->description =  $request->description;
        if ($request->hasFile('image')) {
            $temoignage->image = $request->image->store('images/temoignages', 'public');
        }
        $temoignage->save();
        $respone = [
            'temoignage' => $temoignage,
        ];
        return response($respone, 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Temoignage::destroy($id);
    }
}
