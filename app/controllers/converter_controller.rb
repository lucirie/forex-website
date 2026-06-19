class ConverterController < ApplicationController
  def index
    @currencies = FrankfurterClient.currencies
  rescue StandardError
    @currencies = []
    @api_error = "Could not load currencies. Please try again later."
  end
end
