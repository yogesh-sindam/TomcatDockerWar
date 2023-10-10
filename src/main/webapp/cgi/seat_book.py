import cgi

# Initialize a dictionary to store booking information
booked_seats = {}

# Function to save booking information
def save_booking(username, seat):
    booked_seats[username] = seat

# Print HTTP headers
print("Content-type: text/html\n")

# Get form data
form = cgi.FieldStorage()

# Check if the form has been submitted
if "username" in form and "seat" in form:
    # Get username and selected seat from the form
    username = form["username"].value
    seat = form["seat"].value

    # Save the booking
    save_booking(username, seat)

    # Print a success message
    print("<h2>Booking Confirmation</h2>")
    print(f"<p>{username} has booked {seat}.</p>")

# Display the current booking status
print("<h2>Current Bookings</h2>")
if booked_seats:
    print("<ul>")
    for username, seat in booked_seats.items():
        print(f"<li>{username} has booked {seat}</li>")
    print("</ul>")
else:
    print("<p>No bookings have been made yet.</p>")
