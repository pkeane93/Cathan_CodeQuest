import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["cards"]

  change = (event) => {
    const selectedValue = event.target.value
    const articlesArray = Array.from(this.cardsTarget.children)

    switch(selectedValue){
      case "oldest":
        articlesArray.sort((a, b) => {
          const aId = Number(a.id.replace("post-", ""))
          const bId = Number(b.id.replace("post-", ""))
          return aId - bId
        })
        this.cardsTarget.replaceChildren(...articlesArray)
        break;
      case "recent":
        articlesArray.sort((a, b) => {
          const aId = Number(a.id.replace("post-", ""))
          const bId = Number(b.id.replace("post-", ""))
          return bId - aId
        })
        this.cardsTarget.replaceChildren(...articlesArray)
        break;
      case "popular":
        console.log("Most popular selected")
        break;
      default:
        console.log("Error: Unknown Switch Selection.")
        break;
    }
  }
}
