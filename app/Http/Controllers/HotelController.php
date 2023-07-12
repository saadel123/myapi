<?php

namespace App\Http\Controllers;

use App\Models\Hotel;
use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Hotel::with('ville', 'images')->orderBy('created_at', 'DESC')->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /*
        if (!$request->hasFile('images')) {
            return response()->json(['In order to continue, you must choose at least one image'], 400);
        }

        $this->validate($request, [
            'nom' => 'required',
            'description' => 'required|min:10|max:30000',
            'tel' => 'required',
            'adresse' => 'required',
            'image' => 'required|mimes:jpg,jpeg,png|max:2000',
            'images.*' => 'required|image|mimes:jpg,jpeg,png,gif|max:2048'
            //'email' => 'required|unique:hotels',
        ]);
         */
        $hotels = $request->all();
        if ($request->hasFile('image')) {
            $hotels['image'] = $request->image->store('images/hotels', 'public');
        }
        $hotels['slug'] = Str::slug($request->nom . ' ' . $request->id, '-');
        $listhotels = Hotel::create($hotels);
        return $listhotels;


        // foreach ($request->file('images') as $mediaFiles) {
        //     $path = $mediaFiles->store('images/hotels', 'public');
        //     $name = $mediaFiles->getClientOriginalName();
        //     $save = new Image();
        //     $save->libelle = $name;
        //     $save->image = $path;
        //     $save->id_hotel = $listhotels['id'];
        //     $save->save();
        // }

    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
                return Hotel::whereSlug($slug)->with('user','hotel_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres','user_favorites')->first();
    }
     public function findByUserId($user_id)
    {
        return Hotel::where('user_id',$user_id)->with('user','hotel_service.service', 'ville', 'images', 'commentaires.user', 'chambres.type_chambres')->first();
    }

    public function id($id)
    {
        // $chambres = DB::table('hotels')
        //     ->join('chambres', 'hotels.id', '=', 'chambres.id_hotel')
        //     ->join('type_chambres', 'chambres.id', '=', 'type_chambres.id_chambre')
        //     ->where('hotels.id', '=', $id)
        //     ->get();
        //nested relationships
        $hotels = Hotel::with('ville', 'images', 'commentaires', 'chambres.type_chambres','hotel_service.service')->find($id);
        return $hotels;
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
       /* $request->validate([
            'image' => 'mimes:jpg,jpeg,png|max:2000'
        ]);*/
        $hotels = Hotel::findOrFail($id);
        $modifierHotel = $request->all();
        if ($request->hasFile('image')) {
            //$hotels['image'] = $request->file('image');
            $modifierHotel['image'] = $request->image->store('images/hotels', 'public');
        }
        $hotels->update($modifierHotel);
        return $hotels;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Hotel::destroy($id);
    }

    public function search($nom_hotle)
    {
        $ville_id = request()->query('ville');
        $hotels = Hotel::when($nom_hotle, function ($query, $search) {
            return $query->where('nom', 'like', "%{$search}%");
        })->when($ville_id, function ($query, $ville) {
            return $query->where('ville_id', '=', "{$ville}");
        })->get();

        if (count($hotels)) {
            return Response()->json($hotels);
        } else {
            return response()->json(['Result' => 'Data not found'], 404);
        }
    }
}
