require 'city_ranking'

describe CityRanking do
    describe "#continent_select" do
        it "saves list of cities in continent" do
            subject.continent_select("EU")
            expect(subject.cities).to include(include("name" => "London" ))
        end

        it "you can select the continent with the code variable" do
            subject.continent_select("AF")
            expect(subject.cities).to include(include("name" => "Cairo" ))
        end

        it "saves the scores and summary for each city" do
            subject.continent_select("EU")
            expect(subject.cities.first).to have_key("teleport_city_score")
            expect(subject.cities.first).to have_key("summary")
        end
    end
end