<?php

namespace App\Http\Controllers;


use App\Models\Lieux;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LieuxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Lieux::orderBy('created_at', 'DESC')->get();
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
        //     'titre' => 'required',
        //     'description' => 'required|min:10|max:30000',
        //     'image' => 'required|mimes:jpg,jpeg,png|max:2000',
        // ]);
        $data = $request->all();
        $data['slug'] = Str::slug($request->titre);
        if ($request->hasFile('image')) {
            $data['image'] = $request->image->store('images/lieux', 'public');
        }
        $lieux = Lieux::create($data);
        if ($lieux_images = $request->file('images')) {
            foreach ($lieux_images as $image) {
                $path = $image->store('images/lieux', 'public');
                $lieux->images()->create([
                    'id_lieux' => $lieux->id,
                    'image' => $path,
                ]);
            }
        }
        $respone = [
            'lieux' => $lieux,
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
        return Lieux::whereSlug($slug)->with('user','commentaires.user','images')->first();
    }
    
      /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function id($id)
    {
        return Lieux::with('images')->findOrfail($id);
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
        
        $lieux = Lieux::findOrFail($id);
        $lieux->titre =  $request->titre;
        $lieux->user_id =  $request->user_id;
        $lieux->description =  $request->description;
        $lieux->seo_titre =  $request->seo_titre;
         $lieux->seo_keywords =  $request->seo_keywords;
          $lieux->seo_description =  $request->seo_description;
        if ($request->hasFile('image')) {
            $lieux->image = $request->image->store('images/lieux', 'public');
        }
        $lieux->save();
        $respone = [
            'lieux' => $lieux,
        ];
        return response($respone, 201);
       
        /*
         $lieux = Lieux::findOrFail($id);
          $updatePartage = $request->all();
        if ($request->hasFile('image')) {
            $lieux->image = $updatePartage["image"]->store('images/lieux', 'public');
        }
        $lieux->save($updatePartage);

        $respone = [
            'lieux' => $lieux,
        ];
        return response($respone, 201);
         */ 
       
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Lieux::destroy($id);
    }
}
