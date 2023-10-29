<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        echo $request;
        $validatedData = $request->validate([
            'pseudo' => 'required|string|max:255',
            'firstname' => 'required|string|max:255',
            'surname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);
        $user = User::create([
            'pseudo' => $validatedData['pseudo'],
            'firstname' => $validatedData['firstname'],
            'surname' => $validatedData['surname'],
            'email' => $validatedData['email'],
            'password' => Hash::make($validatedData['password']),
        ]);

        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'token' => $token,
            'email' => $validatedData['email'],
            'pseudo' => $validatedData['pseudo'],
            'firstname' => $validatedData['firstname'],
            'surname' => $validatedData['surname'],
        ]);
    }

    public function login(Request $request)
    {
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'message' => 'Invalid login details'
            ], 401);
        }

        $user = User::where('email', $request['email'])->firstOrFail();
        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'token' => $token,
            'email' => $request['email'],
            'pseudo' => $user['pseudo'],
            'firstname' => $user['firstname'],
            'surname' => $user['surname'],
        ]);
    }
    public function logout()
    {
        Auth::user()->tokens->each(function ($token, $key) {
            $token->delete();
        });

        return response()->json('Logged out successfully');
    }
}
