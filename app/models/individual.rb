class Individual < ApplicationRecord
  belongs_to :cohort
  enum ethnicity: { "White" => 0, "Hispanic/Latino" => 1, "Black or African American" =>  2, "Asian" => 3, "American Native or Alaska Native" => 4, "Middle Eastern or North African" => 5, "Native Hawaiian or Pacific Islander" => 6, "Other race, ethnicity, or origin" => 7 }
  enum springfield_non_native_population: {"Less than 2,000" => 0, "2,000-9,999" => 1, "10,000-49,000"=>2, "50,000-99,000"=>3, "100,000-249,000"=>4, "250,000 to 1 million"=>5, "Over 1 million"=>6}
  enum springfield_non_native_distance: {"under 25 miles"=>0, "26-50 miles"=>1, "51-100 miles"=>2, "over 100 miles"=>3}

  def self.search(search)
    where("first_name || last_name LIKE ?", "%#{search}%")
  end

end