<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class OwnCors
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        header("Access-Control-Allow-Origin: " . $request->header('Origin'));
        //header("Access-Control-Allow-Credentials: true");

        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, X-XSRF-TOKEN, Origin, Authorization'
        ];

        if ($request->getMethod() == "OPTIONS") {
            header("Access-Control-Allow-Credentials: true"); // Set this for preflight OPTIONS request
            return response('OK')->withHeaders($headers);
        }

        $response = $next($request);
        foreach ($headers as $key => $value)
            $response->header($key, $value);

        // Don't forget to set the credentials header for other responses as well if you're using credentials.

        return $response;
    }
}
