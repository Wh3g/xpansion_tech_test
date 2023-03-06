require 'http'

class CityRanking
    def continent_select(code)
        response = HTTP.get("https://api.teleport.org/api/continents/geonames%3A#{code}/urban_areas/")
        hash = response.parse["_links"]
        hash["ua:items"]
    end
end