import { Controller } from "@hotwired/stimulus"
// import { Calendar, dayGridPlugin } from '@fullcalendar';

// Connects to data-controller="scheduler"
export default class extends Controller {
  connect() {
    console.log("Connected!");
    this.loadCalendar();
  }

  loadCalendar() {
    let calendarE1 = this.element;
    let calendar = new FullCalendar.Calendar(calendarE1, {
      initialView: 'dayGridMonth',
      events: this.data.get("http://localhost:3000/users/my_enrollments")
    });
    calendar.render();

    // Fetch events via AJAX
    fetch(this.data.get("http://localhost:3000/users/my_enrollments"))
      .then(response => response.json())
      .then(data => {
        calendar.addEventSource(data); // Add events to the calendar
      })
      .catch(error => console.error('Error fetching events:', error));
  }
}
