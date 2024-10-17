<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\Room;
use Carbon\Carbon;

class BookingController extends Controller
{
    public function store(Request $request, $id)
    {
        $room = Room::findOrFail($id);
        $checkin = $request->checkin;
        $checkout = $request->checkout;

        $isRoomAvailable = Room::available($checkin, $checkout)->where('id', $id)->exists();

        $guestMockNames = ['Marcus Aurelius', 'Albert Einstein', 'Leonardo Da Vinci'];
        
        if ($isRoomAvailable) {
            $booking = Booking::create([
                'name' => array_rand($guestMockNames),
                'orderDate' => date("Y-m-d"),
                'checkInDate' => $checkin,
                'checkOutDate' => $checkout,
                'specialRequest' => "No special requests",
                'roomType' => $room->roomType,
                'status' => "Check-In",
                'roomId' => $id,
            ]);
            return redirect('/rooms')->with('status', 'Your booking has been created. Details have been sent to your email.');
        } else {
            return redirect()->back()->withErrors(['message' => 'This room is occupied on the dates you requested.']);
        }
    }
}
