<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CSRFTokenController extends Controller
{
    public function getToken()
    {
        return response()->json(['token' => csrf_token()]);
    }
}
