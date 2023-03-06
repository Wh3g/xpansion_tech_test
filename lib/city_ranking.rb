require 'http'

class CityRanking
    attr_reader :cities

    def continent_select(code)
        response = HTTP.get("https://api.teleport.org/api/continents/geonames%3A#{code}/urban_areas/")
        @cities = response.parse["_links"]["ua:items"]

        @cities.each do | city |
            response = HTTP.get(city["href"] + "scores/")
            city["teleport_city_score"] = response.parse["teleport_city_score"]
            city["summary"] = response.parse["summary"]
        end
    end


end