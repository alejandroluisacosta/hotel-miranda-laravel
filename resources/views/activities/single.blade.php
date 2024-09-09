<h1>The activity you're looking for is:</h1>

<p>Activity: <?= $activity->type ?></p>
<p>Date and time: <?= $activity->dateTime ?></p>
<p>Notes: <?= $activity->notes ?></p>

<h2>Update:</h2>

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form method="POST" action="{{ route('activities.show', ['activity' => $activity->id]) }}">
    @csrf
    @method ('PATCH')
    <label for="activity">Activity:</label>
    <input type="text" id="activity" name="type"/>
    <label for="dateTime">Date and time (mm-dd-yyyy HH:mm):</label>
    <input type="text" id="dateTime" name="dateTime"/>
    <label for="notes">Notes:</label>
    <input type="text" id="notes" name="notes" placeholder="Ex: Scared of heights"/>
    <label for="paid">Paid:</label>
    <select id="paid" name="paid">
        <option value="1">Yes</option>
        <option value="0">No</option>
    </select>
    <label for="satisfaction">Satisfaction:</label>
    <select type="text" id="satisfaction" name="satisfaction">
        <option>0</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>
    </select>
    <button type="submit">Submit</button>
</form>

<button>Back to all activities</button>