<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\Room;

class BookingController extends Controller
{
    public function store(Request $request, $id)
    {
        $room = Room::findOrFail($id);
        $checkin = $request->checkin;
        $checkout = $request->checkout;

        $isRoomAvailable = Room::available($checkin, $checkout)
                    ->where('id', $id)
                    ->get();
        
        if ($isRoomAvailable->isNotEmpty()) {
            $booking = new Booking;
            $booking->name = "Marcus Aurelius";
            $booking->orderDate = date("Y-m-d");
            $booking->checkInDate = $checkin;
            $booking->checkOutDate = $checkout;
            $booking->specialRequest = "No special requests";
            $booking->roomType = $room->roomType;
            $booking->status = "Check-In";
            $booking->roomId = $id;
            $booking->save();
            return redirect('/rooms')->with('status', 'Your booking has been created. Details have been sent to your email.');
        } else {
            return redirect()->back()->withErrors(['message' => 'This room is occupied on the dates you requested.']);
        }
    }
}
