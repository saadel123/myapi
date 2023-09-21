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
            'description' => $request->description,
            'titre_ar' => $request->titre_ar,
            'description_ar' => $request->description_ar,
            'seo_titre' => $request->seo_titre,
            'seo_keywords' => $request->seo_keywords,
            'seo_description' => $request->seo_description,
            'slug' =>  Str::slug($request->titre),
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
            $partages = Partage::whereUserId($id)->with('user','commentpartage.user')->get();
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
        return Partage::whereSlug($slug)->with('commentpartage.user','user')->first();
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
        $partage->seo_titre =  $request->seo_titre;
        $partage->seo_keywords =  $request->seo_keywords;
        $partage->seo_description =  $request->seo_description;
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
