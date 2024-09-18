<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;

class RoomController extends Controller
{
    public function index(Request $request) 
    {
        $checkin = $request->query('checkin');
        $checkout = $request->query('checkout');

        if ($checkin && $checkout) {
            $rooms = Room::available($checkin, $checkout)->get();
        }
        else {
            $rooms = Room::with(['bookings', 'amenities', 'images'])->get();
        }

        return view('rooms.index', ['rooms' => $rooms]);
    }

    public function show(string $id) {
        $room = Room::with(['bookings', 'amenities', 'images'])->findOrFail($id);
        $rooms = Room::with(['bookings', 'amenities', 'images'])->get();
        return view('rooms.room-details', ['room' => $room, 'rooms' => $rooms]);
    }
}
