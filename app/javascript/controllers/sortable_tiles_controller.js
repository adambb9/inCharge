import { Controller } from "stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = [ "tilepage" ]

  connect() {
   console.log( "hi there" )

   new Sortable(this.tilepageTarget, {
    animation: 150,
    ghostClass: 'blue-background-class',
    filter: '.filtered',
    dragable: ".topicsCard",
    swap: true
});
  }
}
