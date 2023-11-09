<?php

namespace App\Http\Controllers;

use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{

    public function createImage(Request $request)
    {
        $validatedData = $request->validate([
            "image" => 'required|image|mimes:jpeg,png,jpg',
            "title" => 'required|string|max:255',
            "description" => "nullable|string",
            "categoriesId" => "nullable"
        ]);

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images');
            $imageUrl = Storage::url($imagePath);

            Image::create([
                // No need to get the user Id from the request since he should be logged in to make the request
                'userId' => Auth::id(),
                'categoriesId' => json_decode($request->input('categoriesId')),
                'path' => $imageUrl,
                'title' => $validatedData['title'],
                'description' => $validatedData['description'],
            ]);

            return response()->json([
                'path' => $imageUrl,
                'title' => $validatedData['title'],
                'description' => $validatedData['description'],
                'categoriesId' => json_decode($request->input('categoriesId'))
            ], 201);
        }

        return response()->json([
            'message' => 'Image upload failed'
        ]);
    }

    public function getImages(Request $request)
    {
        return Image::where("userId", "=", Auth::id())->get();
    }
}
