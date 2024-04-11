import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passengers"
export default class extends Controller {
  static targets = ["passenger", "template", "list"];
  connect() {
    console.info("Connected");
  }

  remove() {
    if(this.listTarget.children.length > 1) {
      this.passengerTarget.remove();
    }
  }

  add() {
    const passengerList = this.listTarget;
    const template = this.templateTarget;
    const clone = template.content.cloneNode(true);

    if(passengerList.children.length < 4){
      passengerList.appendChild(clone);
    }
  }
}
