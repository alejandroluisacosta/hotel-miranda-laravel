<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ActivityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $activities = Auth::user()->activities()->get();
        return view('activities.index', ['activities' => $activities]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'type' => ['required', 'string', 'in:Surf,Windsurf,Kayak,ATV,Hot air baloon'],
            'dateTime' => ['required', 'date'],
            'notes' => ['required', 'string', 'max:255'],
        ]);

        $activity = Activity::create(array_merge($validated, [
            'user_id' => Auth::user()->id,
        ]));

        $activities = Auth::user()->activities()->get();
    
        return view('activities.index', ['activities' => $activities]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $activity = Activity::findOrFail($id);
    
        return view('activities.single', ['activity' => $activity]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'type' => ['required', 'string', 'in:Surf,Windsurf,Kayak,ATV,Hot air baloon'],
            'dateTime' => ['required', 'date'],
            'notes' => ['required', 'string', 'max:255'],
            'paid' => ['required', 'boolean'],
            'satisfaction' => ['required', 'integer'],
        ]);

        $activity = Activity::findOrFail($id);
        $activity->update($validated);
    
        return view('activities.single', ['activity' => $activity]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $deleted = Activity::destroy($id);
    
        return response()->json(['message' => 'Activity deleted successfully']);
    }
}
