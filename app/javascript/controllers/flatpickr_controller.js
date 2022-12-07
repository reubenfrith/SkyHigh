import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]
  connect() {
    flatpickr(this.startDateTarget, {
      dateFormat: "j-F-Y",
      minDate: "today"
    })
    flatpickr(this.endDateTarget, {
      dateFormat: "j-F-Y",
      minDate: "today"
    })
  }
}
