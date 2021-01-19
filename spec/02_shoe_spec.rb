describe 'Shoe' do
  let(:shoe) { Shoe.new("Nike") }

  describe '::new' do
    it 'gets initialized with a brand' do
      expect{Shoe.new("Adidas")}.to_not raise_error
    end
  end

  describe 'properties' do
    let(:shoe) { Shoe.new("Nike") }

    it 'has a brand' do
      # When must the brand be assigned for this to work?
      expect(shoe.brand).to eq("Nike")

  end

  describe '#cobble' do
    let(:shoe) { Shoe.new("Asics") }

    it 'says that the shoe has been repaired' do
      expect($stdout).to receive(:puts).with("Your shoe is as good as new!")
      shoe.cobble
    end
    it 'makes the shoe\'s condition new' do
      shoe.condition = "old"
      shoe.cobble
      expect(shoe.condition).to eq("new")
    end
  end
end