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
            "translatedText" => 'nullable',
            "description" => "nullable",
        ]);

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('public/images');
            $imageUrl = Storage::url($imagePath);
            $imageCreated = Image::create([
                // No need to get the user Id from the request since he should be logged in to make the request
                'userId' => Auth::id(),
                'path' => $imageUrl,
                'title' => $validatedData['title'],
                'description' => $validatedData['description'],
                'translatedText' => $validatedData['translatedText']
            ]);

            return response()->json([
                "id" => $imageCreated->id,
                'path' => $imageUrl,
                'title' => $validatedData['title'],
                'description' => $validatedData['description'],
                'translatedText' => $validatedData['translatedText'],
            ], 201);
        }

        return response()->json([
            'message' => 'Image upload failed'
        ]);
    }

    public function getImages($page)
    {
        $perPage = 10;

        if ($page < 0) {
            $page = 0; // Ensure page is not negative
        }

        $offset = ($page - 1) * $perPage;

        return response()->json([
            'images' => Image::where("userId", "=", Auth::id())->skip($offset)->take($perPage)->get(),
            'total' => Image::where("userId", "=", Auth::id())->count()
        ], 200);
    }
    public function getImage($id)
    {
        $image = Image::where("id", "=", $id)->first();
        if ($image->userId == Auth::id()) {
            return response()->json([
                'image' => $image
            ]);
        }
        return response()->json([
            'message' => 'Image not found'
        ]);
    }
    public function deleteImage($id)
    {
        $image = Image::where("id", "=", $id)->first();
        if ($image->userId == Auth::id()) {
            $image->delete();
            return response()->json([
                'message' => 'Image deleted successfully',
                'success' => true
            ], 200);
        }
        return response()->json([
            'message' => 'Image not found',
            'success' => false
        ]);
    }
    public function putImage(Request $request)
    {
        $validatedData = $request->validate([
            "id" => "required",
            "title" => 'required|string|max:255',
            "translatedText" => 'nullable',
            "description" => "nullable",
        ]);

        $image = Image::where("id", "=", $validatedData['id'])->first();
        if ($image->userId == Auth::id()) {
            $image->title = $validatedData['title'];
            $image->translatedText = $validatedData['translatedText'];
            $image->description = $validatedData['description'];
            $image->save();
            return response()->json([
                'message' => 'Image updated successfully',
                'success' => true
            ], 201);
        }
    }
}
