<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\{Hotel,Riad,MaisonHotes,Restaurant,Activite,GuidesTouristique,Partage,Evenement,Lieux,Actualite,Gastronomie};
//use App\Models\Riad;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules\Password;


use App\Mail\VerifiedAccountMail;
use Illuminate\Support\Facades\Mail;

class AuthController extends Controller
{

    public function index()
    {
    }

    public function verifier(Request $request)
    {

        $user = User::where('email', '=', $request['email'])->first();

        if ($user !== null) {
            if($user->is_verifier == true){
                 return response('Votre compte a été déjà vérifier', 201);
            }
            elseif($user->code_verification === $request['codeVerification']){
                $user->is_verifier = true;
                $user->email_verified_at = new \DateTime();
                $user->update();
                   return response('Votre compte a été bien vérifier', 200);
              }else{
                   return response('Code vérification n\'est pas valider', 202);
              }
        }else{
                   return response('Adresse email n\'est pas existe', 203);
        }

    }

    public function register(Request $request)
    {
        $fields = $request->validate([
            'nom' => 'required|string',
            'prenom' => 'required|string',
            // 'name' => 'required|string',
            'pseudo' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'confirmation_de_adresse_email' => 'required|string|same:email',
            'password' => ['required', 'string', Password::min(8)],
            'confirmation_de_mot_de_passe' => 'required|same:password',
            'regles' => 'required',
        ]);

        $code_verification = rand(1000000,9999999);

        $user = User::create([
            'role_id' => 1,
            'nom' => $fields['nom'],
            'prenom' => $fields['prenom'],
            'pseudo' => $fields['pseudo'],
            //'name' => $fields['name'],
            'email' => $fields['email'],
            'is_verifier' =>1,
            'password' => Hash::make($fields['password']),
            'code_verification' => $code_verification,
        ]);

        Mail::to($user->email)->send(new VerifiedAccountMail($user));

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
            'type_service' => 'required',
            'confirmation_de_adresse_email' => 'required|string|same:email',
            'password' => ['required', 'string', Password::min(8)],
            'confirmation_de_mot_de_passe' => 'required|same:password'
        ]);

        // $code_verification = rand(1000000,9999999);

        $user = User::create([
            'role_id' => 2,
            'nom' => $fields['nom'],
            'prenom' => $fields['prenom'],
            'email' => $fields['email'],
            'type_service' => $fields['type_service'],
            'is_verifier' =>1,
            'password' => Hash::make($fields['password']),
            // 'code_verification' => $code_verification,
        ]);

        // Mail::to($user->email)->send(new VerifiedAccountMail($user));

        $token = $user->createToken('myapptoken')->plainTextToken;
        $respone = [
            'user' => $user,
            'token' => $token
        ];
        return response($respone, 201);
    }

     public function registerForAdmin(Request $request)
    {

        $user = User::create([
            'role_id' => $request['role_id'],
            'nom' => $request['nom'],
            'prenom' => $request['prenom'],
            'email' => $request['email'],
            'type_service' => $request['type_service'],
            'password' => Hash::make($request['password'])
        ]);
        //$token = $user->createToken('myapptoken')->plainTextToken;
        $respone = [
            'user' => $user,
           // 'token' => $token
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

        //  if ($user->is_verifier == false) {
        //     return response([
        //         'message' => 'Votre compte n\'est pas encore vérifier'
        //     ], 401);
        // }


        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function login_admin(Request $request)
    {

        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);
        $user = User::where('email', $fields['email'])->first();

        // Check password
        if (!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'Ces identifiants ne correspondent pas à nos enregistrements'
            ], 401);
        }else if($user->role_id != 3){
             return response([
                'message' => 'Vous n\'êtes pas autorisé à accéder à cette page'
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

     public function dashboard(Request $request)
    {

        $totals = [
            'hotels' => Hotel::count(),
            'riads' => Riad::count(),
            'maisonHotes' => MaisonHotes::count(),
            'restaurants' => Restaurant::count(),
            'activites' => Activite::count(),
            'guides' => GuidesTouristique::count(),
            'partages' => Partage::count(),
            'evenements' => Evenement::count(),
            'lieux' => Lieux::count(),
            'actualites' => Actualite::count(),
            'gastronomies' => Gastronomie::count(),
            // And so on
        ];

        return [
            'totals' => $totals
        ];
    }
}
