<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LigneMenu;
use App\Models\Menu;

class LigneMenuController extends Controller
{

  /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return LigneMenu::get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            $objLigneMenu = LigneMenu::create([
                'id_restaurant' => $request->id_restaurant,
                'id_cat_menu' => $request->id_categorie,
            ]);
            
            $objMenu = Menu::create([
                'nom' => $request->nom,
                'description' => $request->description,
                'prix' => $request->prix,
                'id_ligne_menu' => $objLigneMenu->id 
            ]);
            
        return $objMenu;    
    }

    /**     **/

    public function storeArray(Request $request)
    {
        
        $id_restaurant = $request->id_restaurant;

        $itemsEntree = json_decode($request->itemsEntree, true);
        $itemsPlats = json_decode($request->itemsPlats, true);
        $itemsDessert = json_decode($request->itemsDessert, true);
        if(isset($itemsEntree) && count($itemsEntree)>0){
            $objLigneMenu = LigneMenu::create([
                'id_restaurant' => $id_restaurant,
                'id_cat_menu' => '1',
            ]);
         LigneMenu::storeMenus($itemsEntree, $objLigneMenu->id);
        }

        if(isset($itemsPlats) && count($itemsPlats)>0){
            $objLigneMenu = LigneMenu::create([
                'id_restaurant' => $id_restaurant,
                'id_cat_menu' => '2',
            ]);
          LigneMenu::storeMenus($itemsPlats, $objLigneMenu->id);
        }
        if(isset($itemsDessert) && count($itemsDessert)>0){
            $objLigneMenu = LigneMenu::create([
                'id_restaurant' => $id_restaurant,
                'id_cat_menu' => '3',
            ]);
          LigneMenu::storeMenus($itemsDessert, $objLigneMenu->id);
        }
        

        $respone = [
            'Message' => 'Success'
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
        //return Chambre::findOrFail($id);
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
        $chambre = LigneMenu::findOrFail($id);
        $chambre->update($request->all());
        return $chambre;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return LigneMenu::destroy($id);
    }
}
