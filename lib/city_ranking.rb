require 'http'

class CityRanking
    attr_reader :cities

    def continent_select(code)
        response = HTTP.get("https://api.teleport.org/api/continents/geonames%3A#{code}/urban_areas/")
        hash = response.parse["_links"]
        @cities = hash["ua:items"]
    end


end