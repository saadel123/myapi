@component('mail::message')
Bonjour

Vous avez un nouveau message de: <strong>{{ $reservez['username'] }}</strong> <br><br>
Ci-dessous les informations de l'utilisateur: <br><br>
<strong>Nom et Prenom:</strong> {{ $reservez['username'] }} <br>
<strong>Email:</strong> {{ $reservez['email'] }} <br>
@if(!empty($reservez['tel']))
<strong>Telephone:</strong> {{ $reservez['tel'] }} <br>
@endif
<strong>Objet:</strong> {{ $reservez['subject'] }}</strong> <br>
<strong>Message:</strong> {{ $reservez['message'] }}</strong> <br><br>

Cordialement,<br>
L'équipes<span> </span>Masafar.ma
@endcomponent
