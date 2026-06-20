import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["amount", "from", "to", "result"]

    async convert(event) {
        event.preventDefault()

        const amount = this.amountTarget.value
        const from = this.fromTarget.value
        const to = this.toTarget.value


        const url = `https://api.frankfurter.dev/v2/rates?base=${from}&quotes=${to}`
        const response = await fetch(url)
        const data = await response.json()

        const rate = data[0]["rate"]
        const converted_price = (amount * rate).toFixed(3)
        this.resultTarget.textContent = converted_price
    }
}