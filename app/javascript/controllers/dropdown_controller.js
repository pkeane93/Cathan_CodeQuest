import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "icon", "border", "select", "label"]

  open = () => {
    this.menuTarget.classList.toggle("hidden")

    if (this.menuTarget.classList.contains("hidden")) {
      this.iconTarget.classList.remove("ti-chevron-up")
      this.iconTarget.classList.add("ti-chevron-down")
      this.borderTarget.classList.add("border","rounded-sm")
      this.borderTarget.classList.remove("border-t", "border-l", "border-r", "rounded-t-sm")

    } else {
      this.borderTarget.classList.remove("border","rounded-sm")
      this.borderTarget.classList.add("border-t", "border-l", "border-r", "rounded-t-sm")

      this.iconTarget.classList.remove("ti-chevron-down")
      this.iconTarget.classList.add("ti-chevron-up")
    }
  }

  select = (event) => {
    let displayedText = this.labelTarget.textContent
    const selectedText = event.currentTarget.textContent
    this.labelTarget.textContent = selectedText
    event.currentTarget.textContent = displayedText


    this.menuTarget.classList.toggle("hidden")
    this.iconTarget.classList.remove("ti-chevron-up")
    this.iconTarget.classList.add("ti-chevron-down")
    this.borderTarget.classList.add("border","rounded-sm")
    this.borderTarget.classList.remove("border-t", "border-l", "border-r", "rounded-t-sm")
  }
}
