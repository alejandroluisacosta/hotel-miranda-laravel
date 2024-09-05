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
        $activities = Activity::all();
        return response()->json(["activities" => $activities]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'type' => ['required', 'string', 'max:255'],
            'dateTime' => ['required', 'date'],
            'notes' => ['required', 'string', 'max:255'],
        ]);

        $activity = Activity::create(array_merge($validated, [
            'user_id' => Auth::id() ?? 1,
            'paid' => $request->paid ?? false,
            'satisfaction' => $request->satisfaction ?? 0,
        ]));
    
        return response()->json(["activity" => $activity]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $activity = Activity::find($id);
    
        if (!$activity) {
            return response()->json(['message' => 'Activity not found'], 404);
        }
    
        return response()->json(['activity' => $activity]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'type' => ['required', 'string', 'max:255'],
            'dateTime' => ['required', 'date'],
            'notes' => ['required', 'string', 'max:255'],
        ]);

        $activity = Activity::findOrFail($id);
        $activity->update(array_merge($validated, [
            'paid' => $request->paid ?? false,
            'satisfaction' => $request->satisfaction ?? 0,
        ]));
    
        return response()->json(["activity" => $activity]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $activity = Activity::find($id);
    
        if (!$activity) {
            return response()->json(['message' => 'Activity not found'], 404);
        }
    
        $activity->delete();
    
        return response()->json(['message' => 'Activity deleted successfully']);
    }
}
