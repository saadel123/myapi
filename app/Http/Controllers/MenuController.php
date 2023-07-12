<?php

namespace App\Http\Controllers;
use App\Models\LigneMenu;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Menu::all();
    }
    public function storeArray(Request $request)
    {
        /*
        $id_hotel = $request->id_hotel;
        $array = json_decode($request->chambres, true);
        $id_type_chambre = '';
        foreach ($array as $chambre) {

            if ($chambre['type'] == 'Chambre individuelle')
                $id_type_chambre = 1;
            else if ($chambre['type'] == 'Chambre double')
                $id_type_chambre = 2;
            else
                $id_type_chambre = 3;

            $objMenu = Menu::create([
                'id_type_chambre' => $id_type_chambre,
                'prix' => $chambre['prix'],
                'nbr_personnes' => $chambre['nbr_personnes'],
                'options' => $chambre['options'],
                'id_hotel' => $id_hotel,
            ]);
        }

        $respone = [
            'Message' => 'Success',
            'Array' => $array
        ];
        return response($respone, 201);
        */
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $idLigneMenu = 0;
        $LigneMenu =  LigneMenu::where([['id_restaurant', '=', $request->id_restaurant],['id_cat_menu', '=', $request->id_categorie]])->first();
        $LineMenuReturn = $LigneMenu;
        if($LigneMenu == null){
        $objLigneMenu = LigneMenu::create([
                'id_restaurant' => $request->id_restaurant,
                'id_cat_menu' => $request->id_categorie,
            ]);
            $idLigneMenu = $objLigneMenu->id ;
            $LineMenuReturn = $objLigneMenu;
        }else{
            $idLigneMenu = $LigneMenu->id ;
        }
            $objMenu = Menu::create([
                'nom' => $request->nom,
                'description' => $request->description,
                'prix' => $request->prix,
                'id_ligne_menu' => $idLigneMenu,
            ]);
            
        return ['linge_menu'=>$LineMenuReturn,'menu'=>$objMenu,'request'=>$request];    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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
        $menu = Menu::findOrFail($id);
        $menu->update($request->all());
        return $menu;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Menu::destroy($id);
    }
}
