<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seat Booking</title>
    <style>
        label {
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Seat Booking</h1>
    <form action="book_seat.py" method="post">
        <label for="username">Select your username:</label>
        <select id="username" name="username">
            <option value="Alex">Alex</option>
            <option value="Rom">Rom</option>
            <option value="Leena">Leena</option>
            <option value="Rooi">Rooi</option>
        </select>

        <label for="seat">Select your seat:</label>
        <select id="seat" name="seat">
            <option value="Seat 1">Seat 1</option>
            <option value="Seat 2">Seat 2</option>
            <option value="Seat 3">Seat 3</option>
            <option value="Seat 4">Seat 4</option>
        </select>

        <input type="submit" value="Book Seat">
    </form>
</body>
</html>
