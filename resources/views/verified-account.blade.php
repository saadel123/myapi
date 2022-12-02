@component('mail::message')
Bonjour,

Votre code de vérification est  <strong>{{ $user['code_verification'] }}</strong>. <br>
Saisissez ce code sur notre site Msafar.ma pour activer votre compte <strong>{{ $user['email'] }}</strong> . <br><br>

<a target='_blank' href="http://msafar.ma/verification-email">Cliquez ici pour ouvrir la page de vérification.</a>

Si vous avez des questions, envoyez-nous un e-mail à contact@msafar.ma  <br>

Nous sommes heureux que vous soyez là !<br>
L'équipes<span> </span>Masafar.ma
@endcomponent

