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

  xit 'Level 1: Given a state name, return its abbreviation' do
    # Given
    state_name = 'Alabama'

    # Your code goes here


    expect(abbreviation).to eq('AL')
  end

  xit 'Level 2: Given a state name, return its capital' do
    # Given
    state = 'Oregon'

    # Your code goes here


    expect(state_capital).to eq('Salem')
  end

  xit "Level 3: Return 'Unknown' if the state name isn't in the @states hash" do
    def return_abbreviation_for(state)
      # Your code goes here
    end

    expect(return_abbreviation_for('California')).to eq('Unknown')
    expect(return_abbreviation_for('Oregon')).to eq('OR')
  end

  xit 'Level 4: Given a state capital, return the state name' do
    # Given
    capital = 'Denver'

    # Your code goes here


    expect(state_name).to eq('Colorado')
  end

  xit 'Level 5: Combine the hashes' do
    # Your code goes here


    expected = {
      'Oregon'     => { abbreviation: 'OR', capital: 'Salem' },
      'Alabama'    => { abbreviation: 'AL', capital: 'Montgomery' },
      'New Jersey' => { abbreviation: 'NJ', capital: 'Trenton' },
      'Colorado'   => { abbreviation: 'CO', capital: 'Denver' }
    }
    expect(combined_hash).to eq(expected)
  end

end
