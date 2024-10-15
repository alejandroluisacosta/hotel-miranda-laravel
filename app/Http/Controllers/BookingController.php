<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function store(Request $request, $id) {
        $checkin = $request->query('checkin');
        $checkout = $request->query('checkout');

        $room = Room::available($checkin, $checkout)
                    ->where('id', $id)
                    ->get();
        
        if ($room->isNotEmpty()) {
            
            return redirect('/rooms')->with('status', 'Your booking has been created. Details have been sent to your email.');
        } else {
            return redirect()->back()->withErrors(['message' => 'This room is occupied on the dates you requested.']);
        }
    }
}
