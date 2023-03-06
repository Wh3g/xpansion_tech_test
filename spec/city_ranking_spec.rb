require 'city_ranking'

describe CityRanking do
    describe "#continent_select" do
        it "returns list of cities in continent" do
            expect(subject.continent_select("EU")).to include({ "href" => "https://api.teleport.org/api/urban_areas/slug:london/", "name" => "London" })
            expect(subject.continent_select("AF")).to include({ "href" => "https://api.teleport.org/api/urban_areas/slug:cairo/", "name" => "Cairo"})
        end
    end
end