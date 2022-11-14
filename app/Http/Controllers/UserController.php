<?php

namespace App\Http\Controllers;

use App\Models\Partage;
use App\Models\User;
use App\Rules\MatchOldPassword;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return User::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updatePassword(Request $request, $id)
    {
        $request->validate([
            'mot_de_passe_actuel' => ['required'],
            'nouveau_mot_de_passe' => ['required'],
            'confirmation_de_mot_de_passe' => ['required', 'same:nouveau_mot_de_passe'],
        ], [
        'confirmation_de_mot_de_passe.same' => 'Les champs "Nouveau mot de passe" et "Confirmation du nouveau mot de passe" doivent être identiques'
    ]);
        $user = User::findOrFail($id);
        $password = $request->mot_de_passe_actuel;
        if (!Hash::check($password, $user->password)) {
            return response(['message' => 'Le mot de passe ne correspond pas.'], 401);
        } else {
            $user->password = Hash::make($request->nouveau_mot_de_passe);
            $user->save();
            return response()->json(['message' => 'Votre mot de passe a été mis à jour'], 200);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return User::findOrfail($id);
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
        // $request->validate([
        //     'nom' => 'required|string',
        //     'prenom' => 'required|string',
        //     'name' => 'required|string',
        // ]);
        $user = User::findOrFail($id);
        if ($request->hasFile('avatar')) {
            $user->avatar = $request->file('avatar')->store('images/profil', 'public');
        } else {
            $user->nom = $request->nom;
            $user->prenom = $request->prenom;
            $user->name = $request->name;
              $user->password = Hash::make($request->password);
        }


        // $file = $request->file('avatar');
        // $name = '/images/' . uniqid() . '.' . $file->extension();
        // $file->storePubliclyAs('public', $name);
        // $user->avatar = $name;
        $user->save();
        return response()->json([
            'message' => 'user updated succesfully',
            'code' => 200
        ]);
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
