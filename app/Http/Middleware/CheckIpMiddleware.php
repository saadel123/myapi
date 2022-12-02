<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckIpMiddleware

{

    public $whiteIps = ['41.77.118.130','41.141.178.87'];

    /**
     * Handle an incoming request.
     *
     * @param  IlluminateHttpRequest  $request
     * @param  Closure  $next
     * @return mixed
     */

    public function handle($request, Closure $next)
    {

        if (!in_array($request->ip(), $this->whiteIps)) {

            /*
                 You can redirect to any error page. 
            */
            return response()->json(['your ip address is not valid. : '.$request->ip()]);

        }

        return $next($request);

    }

}