<?php

namespace App\Mail;

use Illuminate\Http\Request;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ReservezMail extends Mailable
{
    use Queueable, SerializesModels;
    public $reservez;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($reservez)
    {
        //
        $this->reservez = $reservez;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build(Request $request)
    {
        return $this->subject($request->input('subject'))->markdown('emails.Reservez');
    }
}
