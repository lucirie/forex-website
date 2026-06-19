class FrankfurterClient
    def self.currencies
        response = HTTParty.get("https://api.frankfurter.app/currencies")
        response.parsed_response
    end
end