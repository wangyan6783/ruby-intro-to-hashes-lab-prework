def new_hash
  {}
end

def actor
  {name: "Dwayne The Rock Johnson"}
end

def monopoly
	monopoly = {railroads: {}}
end

def monopoly_with_second_tier
  monopoly = {railroads: {
    pieces: 4,
    names: {},
    rent_in_dollars: {}
  }}
end

def monopoly_with_third_tier
  monopoly = {railroads: {
    pieces: 4,
    names: {reading_railroad: {}, pennsylvania_railroad: {}, b_and_o_railroad: {}, shortline: {}},
    rent_in_dollars: {one_piece_owned: 25, two_pieces_owned: 50, three_pieces_owned: 100, four_pieces_owned: 200}
  }}
end

def monopoly_with_fourth_tier
  monopoly = {railroads: {
    pieces: 4,
    names: {reading_railroad: {"mortgage_value" => "$100"}, pennsylvania_railroad: {"mortgage_value" => "$200"}, b_and_o_railroad: {"mortgage_value" => "$400"}, shortline: {"mortgage_value" => "$800"}},
    rent_in_dollars: {one_piece_owned: 25, two_pieces_owned: 50, three_pieces_owned: 100, four_pieces_owned: 200}
  }}
end
 



      it "sets the 1st key of the :shortline hash to a string, `mortgage_value`, whose value is '$800'" do

        expect(monopoly_with_fourth_tier.values[0][:names].keys[3]).to eq(:shortline)
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].values[0]).to eq("$800")
      end
    end
  end
end









