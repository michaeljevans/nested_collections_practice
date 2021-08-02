describe 'State Capitals' do
  before :each do
    @states = {
      'Oregon' => 'OR',
      'Alabama' => 'AL',
      'New Jersey' => 'NJ',
      'Colorado' => 'CO'
    }

    @capitals = {
      'OR' => 'Salem',
      'AL' => 'Montgomery',
      'NJ' => 'Trenton',
      'CO' => 'Denver'
    }
  end

  it 'Level 1: Given a state name, return its abbreviation' do
    # Given
    state_name = 'Alabama'

    # Solution
    abbreviation = @states[state_name]

    expect(abbreviation).to eq('AL')
  end

  it 'Level 2: Given a state name, return its capital' do
    # Given
    state = 'Oregon'

    # Solution
    abbreviation = @states[state]
    state_capital = @capitals[abbreviation]

    expect(state_capital).to eq('Salem')
  end

  it "Level 3: Return 'Unknown' if the state name isn't in the @states hash" do
    # Solution
    def return_abbreviation_for(state)
      @states.has_key?(state) ? @states[state] : 'Unknown'
    end

    expect(return_abbreviation_for('California')).to eq('Unknown')
    expect(return_abbreviation_for('Oregon')).to eq('OR')
  end

  it 'Level 4: Given a state capital, return the state name' do
    # Given
    capital = 'Denver'

    # Solution
    abbreviation = @capitals.key('Denver')
    state_name = @states.key(abbreviation)

    expect(state_name).to eq('Colorado')
  end

  it 'Level 5: Combine the hashes' do
    # Solution
    combined_hash = {}

    @states.each do |state, abbr|
      combined_hash[state] = { abbreviation: abbr, capital: @capitals[abbr] }
    end

    expected = {
      'Oregon'     => { abbreviation: 'OR', capital: 'Salem' },
      'Alabama'    => { abbreviation: 'AL', capital: 'Montgomery' },
      'New Jersey' => { abbreviation: 'NJ', capital: 'Trenton' },
      'Colorado'   => { abbreviation: 'CO', capital: 'Denver' }
    }
    expect(combined_hash).to eq(expected)
  end

end
