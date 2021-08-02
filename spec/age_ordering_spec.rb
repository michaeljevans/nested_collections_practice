describe 'Age Ordering' do

  before :each do
    @ages = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
  end

  xit 'Level 1: Output only ages for the data set' do
    # Your code goes here


    expected = [33, 15, 24, 32, 24, 24]
    expect(only_ages).to eq(expected)
  end

  xit 'Level 2: Output only names in order of ascending age' do
    # Your code goes here


    expected = ['Stacy', 'Juan', 'Steve', 'Jill', 'Dom', 'Frank']
    expect(ordered_names).to eq(expected)
  end

  xit "Level 3: Output the name with the age (e.g., 'Juan (24)')" do
    # Your code goes here


    expected = [
      'Frank (33)',
      'Stacy (15)',
      'Juan (24)',
      'Dom (32)',
      'Steve (24)',
      'Jill (24)'
    ]
    expect(formatted_names).to eq(expected)
  end

  xit 'Level 4: Build a hash where age (the number) is a key that points to an
  array containing the names of everyone that is that age' do
    # Your code goes here


    expected = {
      33 => ['Frank'],
      15 => ['Stacy'],
      24 => ['Juan', 'Steve', 'Jill'],
      32 => ['Dom']
    }
    expect(age_hash).to eq(expected)
  end

end
