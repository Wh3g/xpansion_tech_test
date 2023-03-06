require 'http'

class CityRanking
    attr_reader :cities, :name

    def continent_select(code)
        response = HTTP.get("https://api.teleport.org/api/continents/geonames%3A#{code}/urban_areas/")
        @cities = response.parse["_links"]["ua:items"]

        continent_name(code)

        cities_scores
    end

    private 

    def cities_scores
        @cities.each do | city |
            response = HTTP.get(city["href"] + "scores/")
            city["teleport_city_score"] = response.parse["teleport_city_score"]
            city["summary"] = response.parse["summary"]
        end
        @cities.sort_by! { | city | city["teleport_city_score"] }.reverse!
    end

    def continent_name(code)
        case code
        when "AF"
            @name = "Africa"
        when "AN"
            @name = "Antarctica"
        when "AS"
            @name = "Asia"
        when "EU"
            @name = "Europe"
        when "NA"
            @name = "North America"
        when "OC"
            @name = "Oceania"
        else
            @name = "South America"
        end
    end
end