class ConverterController < ApplicationController
  def index
    @currencies = FrankfurterClient.currencies
  rescue StandardError => e
    @error = e.message
  end
end
