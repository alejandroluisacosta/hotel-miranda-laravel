<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;

class OfferController extends Controller
{
    public function index() {
        $roomsOnOffer = Room::onOffer();
        $popularRooms = Room::limit(3)->get();

        return view('offers', ['roomsOnOffer' => $roomsOnOffer, 'popularRooms' => $popularRooms]);
    }
}
