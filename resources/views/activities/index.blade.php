<h1>Activities of the cool user <?= Auth::user()->name ?></h1>

<ul>
    @foreach ($activities as $activity)
        <li><?= $activity->type ?></li>
    @endforeach
</ul>

<h2>Create new activity:</h2>

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form method="POST" action="{{ route('activities.store') }}">
    @csrf
    <label for="activity">Activity:</label>
    <input type="text" id="activity" name="type"/>
    <label for="dateTime">Date and time (mm-dd-yyyy HH:mm):</label>
    <input type="text" id="dateTime" name="dateTime"/>
    <label for="notes">Notes:</label>
    <input type="text" id="notes" name="notes" placeholder="Ex: I'm afraid of sharks"/>
    <button type="submit">Submit</button>
</form>