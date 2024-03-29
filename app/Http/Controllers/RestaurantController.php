<?php

namespace App\Http\Controllers;

use App\Models\Restaurant;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class RestaurantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexAdmin()
    {
        return Restaurant::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }
    public function index()
    {
        return Restaurant::with('ville', 'images')->where('display',1)->orderBy('created_at', 'DESC')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      /*  $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            //'tel' => 'required',
            'adresse' => 'required',
            //'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            //'email' => 'required|unique:hotels',
        ]);*/
        $restaurants = $request->all();
        if ($request->hasFile('image')) {
            $restaurants['image'] = $request->image->store('images/restaurants', 'public');
        }
        $restaurants['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        $listrestaurants = Restaurant::create($restaurants);
        return $listrestaurants;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return Restaurant::whereSlug($slug)->with('ligne_menus.menus','ligne_menus.categoriemenu','user','images','commentaires.user')->first();
    }

     /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function id($id)
    {
        return Restaurant::with('ligne_menus.menus','ligne_menus.categoriemenu','user','images','commentaires.user')->find($id);
    }

     public function findByUserId($user_id)
    {
        return Restaurant::where('user_id',$user_id)->with('ligne_menus.menus','ligne_menus.categoriemenu','user','images','commentaires.user')->first();
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
        /*$this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            //'tel' => 'required',
            'adresse' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            //'email' => 'required|unique:hotels',
        ]);*/
        $restaurants = Restaurant::findOrFail($id);
        $modifierrest = $request->all();
        if ($request->hasFile('image')) {
            $modifierrest['image'] = $request->image->store('images/restaurants', 'public');
        }
        $restaurants->update($modifierrest);
        return $restaurants;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Restaurant::destroy($id);
    }
}
