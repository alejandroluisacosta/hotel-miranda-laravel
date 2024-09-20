<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;

class OfferController extends Controller
{
    public function index() {
        $roomsOnOffer = Room::onOffer();

        return view('offers', ['rooms' => $roomsOnOffer]);
    }
}
