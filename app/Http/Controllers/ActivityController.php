<?php

namespace App\Http\Controllers;

use app\Models\Activity;
use Illuminate\Http\Request;

class ActivityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return 'All activities';
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        return 'You saved a new Activity instance';
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return 'One activity';
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        return 'You\'ve modified an activity';
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        return 'You\'ve killed an activity :(';
    }
}
