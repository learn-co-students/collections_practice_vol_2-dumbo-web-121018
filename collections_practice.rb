def begins_with_r(array)
    if array.any?
      do |word| word.initial == "r"
    end 

def contain_a do
    # Question 2

    it "return all elements that contain the letter 'a'" do
      expect(contain_a(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
    end

  end

  describe '#first_wa' do

    # Question 3

    it "Return the first element that begins with the letters 'wa'" do
      expect(first_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")
    end

  end

  describe '#remove_non_strings' do

    # Hint: Use the method "class"  "blake".class

    # Question 4

    it "remove anything that's not a string from an array" do
      expect(remove_non_strings(["blake", 1, :hello])).to eq(["blake"])
    end

  end

  describe '#count_elements' do

    # Question 5

    it 'count how many times something appears in an array' do
      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
    end

  end

  describe '#merge_data' do

    # Question 6

    it 'combines two nested data structures into one' do
      expect(merge_data(keys, data)).to eq(merged_data)
    end

  end

  describe '#find_cool' do

    # Question 7

    it 'find all cool hashes' do
      expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
    end

  end

  describe '#organize_schools' do

    # Question 8

    it 'organizes the schools by location' do
      expect(organize_schools(schools)).to eq(organized_schools)
    end

  end

end
