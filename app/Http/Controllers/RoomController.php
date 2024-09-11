<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;

class RoomController extends Controller
{
    public function index() {
        $rooms = Room::with(['bookings', 'amenities', 'images'])->get();
        return view('rooms.rooms', ['rooms' => $rooms]);
    }

    public function show(string $id) {
        return view('rooms.room-details');
    }
}
