require 'city_ranking'

describe CityRanking do
    describe "#continent_select" do
        it "saves list of cities in continent" do
            subject.continent_select("EU")
            expect(subject.cities).to include(include("name" => "London" ))
        end

        before do
            subject.continent_select("AF")
        end
        it "you can select the continent with the code variable" do
            expect(subject.cities).to include(include("name" => "Cairo" ))
        end

        it "saves the scores and summary for each city" do
            expect(subject.cities.first).to have_key("teleport_city_score")
            expect(subject.cities.first).to have_key("summary")
        end

        it "#cities are ranked in order of score" do
            p subject.cities
            expect(subject.cities[0]["teleport_city_score"]).to be >= subject.cities[1]["teleport_city_score"]
        end
    end
end