<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;

class AuthController extends Controller
{

    public function index()
    {
    }

    public function register(Request $request)
    {
        $fields = $request->validate([
            'nom' => 'required|string',
            'prenom' => 'required|string',
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'confirmation_de_adresse_email' => 'required|string|same:email',
            'password' => ['required', 'string', Password::min(8)],
            'confirmation_de_mot_de_passe' => 'required|same:password'
        ]);
        $user = User::create([
            'role_id' => 3,
            'nom' => $fields['nom'],
            'prenom' => $fields['prenom'],
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => Hash::make($fields['password'])
        ]);
        $token = $user->createToken('myapptoken')->plainTextToken;
        $respone = [
            'user' => $user,
            'token' => $token
        ];
        return response($respone, 201);
    }
    public function registerPro(Request $request)
    {
        $fields = $request->validate([
            'nom' => 'required|string',
            'prenom' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'confirmation_de_adresse_email' => 'required|string|same:email',
            'password' => ['required', 'string', Password::min(8)],
            'confirmation_de_mot_de_passe' => 'required|same:password'
        ]);
        $user = User::create([
            'role_id' => 2,
            'nom' => $fields['nom'],
            'prenom' => $fields['prenom'],
            'email' => $fields['email'],
            'password' => Hash::make($fields['password'])
        ]);
        $token = $user->createToken('myapptoken')->plainTextToken;
        $respone = [
            'user' => $user,
            'token' => $token
        ];
        return response($respone, 201);
    }

    public function login(Request $request)
    {

        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        // Check email
        $user = User::where('email', $fields['email'])->first();

        // Check password
        if (!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'Ces identifiants ne correspondent pas à nos enregistrements'
            ], 401);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return [
            'message' => 'Logged out'
        ];
    }
}
