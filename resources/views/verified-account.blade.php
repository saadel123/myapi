@component('mail::message')
Bonjour,

Votre code de vérification est: <br>
<div class="c-email__code">
    <span class="c-email__code__text"><strong>{{ $user['code_verification'] }}</strong> </span>
</div>

<br>
Saisissez ce code sans espace sur notre site Msafar.ma pour activer votre compte <strong>{{ $user['email'] }}</strong> . <br><br>

<a target='_blank' href="http://msafar.ma/verification-email">Cliquez ici pour ouvrir la page de vérification.</a>

Si vous avez des questions, envoyez-nous un e-mail ou contactez-nous <br> Email: contact@msafar.ma  <br> WhatsApp : +212 (0) 651 28 08 62
<br> Numéro Fixe : +212 (0) 522 22 85 27 <br> <br>
Nous sommes heureux que vous soyez là !<br>
L'équipes<span> </span>Msafar.ma
@endcomponent

