feature "City rankings" do
    describe "city ranking table" do
        it "lists top five cities" do
            visit '/'
            select "Europe", from: "continents"
            click_button "Submit"
            expect(page).to have_content "Top Ranking Urban Areas in Europe"
            expect(page).to have_content "London"
        end

        it "has no table for Antarctica" do
            visit '/'
            select "Antarctica", from: "continents"
            click_button "Submit"
            expect(page).to have_content "There are zero ranked urban areas in Antarctica"
        end
    end
end