require 'city_ranking'

describe CityRanking do
    describe "#continent_select" do
        it "returns list of cities in continent" do
            subject.continent_select("EU")
            expect(subject.cities).to include({ "href" => "https://api.teleport.org/api/urban_areas/slug:london/", "name" => "London" })
            subject.continent_select("AF")
            expect(subject.cities).to include({ "href" => "https://api.teleport.org/api/urban_areas/slug:cairo/", "name" => "Cairo"})
        end
    end
end