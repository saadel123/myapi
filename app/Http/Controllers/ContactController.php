<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
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
        $this->validate($request, [
            'username' => 'required',
            'email' => 'required|min:10|max:3000',
            'subject' => 'required|min:10|max:3000',
            'message' => 'required',
        ]);
        */
        $contact = $request->all();

        Mail::to('contact@msafar.ma')->send(new ContactMail($contact));
        $msg = '';
        $array = [];
        if( count(Mail::failures()) > 0 ) {
               $msg =  "There was one or more failures. They were: <br />";
               foreach(Mail::failures() as $email_address) {
                  array_push( $array ,$email_address);
                }

            } else {
                $msg = "No errors, all sent successfully!";
            }
        
        $respone = [
            'Message' => $msg ,
            'array' => $array
            
        ];
        return response($respone, 201);

        // $reservez = Reservez::create([
        //     'username' => $request->username,
        //     'email' =>  $request->email,
        //     'subject' => $request->subject,
        //     'message' => $request->message
        //     'owner_email' => $request->message
        // ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
