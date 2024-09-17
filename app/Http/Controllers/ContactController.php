<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index() {
        return view('contact');
    }

    public function store(Request $request) {
        $validated = $request->validate([
            'name' => ['required', 'string'],
            'phone' => ['string'],
            'email' => ['required', 'string'],
            'subject' => ['required', 'string'],
            'text' => ['required', 'string'],
        ]);

        $comment = Contact::create((array_merge($validated, [
            'read' => false,
        ])));

        return redirect('/contact');
    }
}
