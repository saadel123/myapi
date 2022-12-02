@component('mail::message')
Bonjour

Vous avez un nouveau message de: <strong>{{ $contact['username'] }}</strong> <br><br>
Ci-dessous les informations de l'utilisateur: <br><br>
<strong>Nom et Prenom:</strong> {{ $contact['username'] }} <br>
<strong>Email:</strong> {{ $contact['email'] }} <br>

<strong>Message:</strong> {{ $contact['message'] }}</strong> <br><br>

Cordialement,<br>
L'équipes<span> </span>Masafar.ma
@endcomponent
