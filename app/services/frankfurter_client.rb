class FrankfurterClient
    def self.currencies
        response = HTTParty.get("https://api.frankfurter.dev/v2/currencies")
        response.parsed_response
    end

    def self.rate(base, quote)
        response = HTTParty.get("https://api.frankfurter.dev/v2/rates",
        query: { base: base, quotes: quote }
        )
        response.parsed_response
    end
end