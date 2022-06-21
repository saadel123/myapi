<?php

namespace App\Http\Controllers;

use App\Models\Partage;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PartageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Partage::orderBy('created_at', 'DESC')->get();
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
            'description' => 'required|min:10|max:30000',
            'titre' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        ]);

        $partage = Partage::create([
            'user_id' => $request->user_id,
            'titre' => $request->titre,
            'slug' =>  Str::slug($request->titre),
            'description' => $request->description,
            'image' => $request->image->store('images/partages', 'public'),
        ]);
        $respone = [
            'partage' => $partage,
        ];
        return response($respone, 201);
    }

    public function mesPartages($id)
    {
        if ($id) {
            $partages = Partage::whereUserId($id)->get();
            return response()->json(['partages' => $partages], 200);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Partage::whereSlug($slug)->with('commentpartage.user')->first();
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
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        // ]);
        $partage = partage::findOrFail($id);
        $partage->titre =  $request->titre;
        $partage->description =  $request->description;
        if ($request->hasFile('image')) {
            $partage->image = $request->image->store('images/partages', 'public');
        } else {
            unset($partage->image);
        }
        $partage->save();
        $respone = [
            'partage' => $partage,
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
        return Partage::destroy($id);
    }
}
