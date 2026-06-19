import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["amount", "from", "to", "result"]

    convert(event) {
        event.preventDefault()

        const amount = this.amountTarget.value
        const from = this.fromTarget.value
        const to = this.toTarget.value

        this.resultTarget.textContent = `${amount} of ${from} = x ${to}`
    }
}