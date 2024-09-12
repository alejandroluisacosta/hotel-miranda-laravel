<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Image;

class RoomType extends Model
{
    use HasFactory;

    public function images(): BelongsToMany
    {
        return $this->belongsToMany(Image::class, 'room_types_images', 'roomType', 'imageId');
    }
}
