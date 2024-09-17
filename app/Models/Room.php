<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Builder;
use App\Models\Booking;
use App\Models\Amenity;
use App\Models\Image;
use App\Models\RoomType;
use App\Models\RoomTypeImage;

class Room extends Model
{
    use HasFactory;

    public function bookings(): HasMany
    {
        return $this->hasMany(Booking::class, 'roomId');
    }

    public static function available($checkin, $checkout)
    {
        return self::whereHas('bookings', function (Builder $query) use ($checkin, $checkout) {
            $query->where('checkOutDate', '<=', $checkin)
                  ->where('checkInDate', '>=', $checkout);
        });
    }

    public function amenities(): BelongsToMany
    {
        return $this->belongsToMany(Amenity::class, 'rooms_amenities', 'roomId', 'amenityId');
    }

    public function type(): BelongsTo
    {
        return $this->belongsTo(RoomType::class, 'roomType');
    }

    public function images(): BelongsToMany
    {
        return $this->belongsToMany(Image::class, 'room_type_images', 'roomType', 'imageId');
    }
}
