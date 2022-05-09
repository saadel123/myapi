<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'msafar.ma')
<img src="{{ asset('/storage/images/logo.png') }}"  alt="logo msafar">
@else
{{ $slot }}
@endif
</a>
</td>
</tr>
