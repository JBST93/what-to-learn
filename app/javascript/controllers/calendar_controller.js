import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scheduler"
export default class extends Controller {
  connect() {
    console.log("Connected!");
    this.userCourses = [];
    this.loadCalendar();
  }

  async loadCalendar() {
    await this.getUserCourses();
    let calendarE1 = this.element;
    console.log(this.userCourses)
    const colors = ['#3788D8', '#F05F40', '#6C7A89', '#2ECC71', '#E67E22'];
    function color_shuffle() {
      return colors[(Math.floor(Math.random() * colors.length))];
    }

    let calendar = new FullCalendar.Calendar(calendarE1, {
      initialView: 'dayGridMonth',
      events: this.userCourses.map((course) => ({
        title: course.title,
        start: course.start_date,
        end: course.end_date,
        color: color_shuffle()
      }))
    });

    calendar.render();
  }

  async getUserCourses() {
    const response = await fetch("/users/my_enrollments.json")
    this.userCourses = await response.json()
    // fetch('...').then(response => response.json()).then(data => ...)
      // .then(response => response.json())
      // .catch(error => console.error("Error fetching user's courses:", error))
  }
}
