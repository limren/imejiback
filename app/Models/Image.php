<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;

    protected $fillable = [
        "path",
        "description",
        "title",
        "userId",
        "categoriesId",
        "translatedText"
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'images';
}
