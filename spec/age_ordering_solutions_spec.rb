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

  it 'Level 1: Output only ages for the data set' do
    # Solution
    only_ages = @ages.map do |person|
      person[1]
    end

    expected = [33, 15, 24, 32, 24, 24]
    expect(only_ages).to eq(expected)
  end

  it 'Level 2: Output only names in order of ascending age' do
    # Solution
    sorted_by_age = @ages.sort do |a, b|
      a[1] <=> b[1]
    end

    ordered_names = sorted_by_age.map do |person|
      person[0]
    end

    expected = ['Stacy', 'Juan', 'Steve', 'Jill', 'Dom', 'Frank']
    expect(ordered_names).to eq(expected)
  end

  it "Level 3: Output the name with the age (e.g., 'Juan (24)')" do
    # Solution
    formatted_names = @ages.map do |person|
      "#{person[0]} (#{person[1]})"
    end

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

  it 'Level 4: Build a hash where age (the number) is a key that points to an
  array containing the names of everyone that is that age' do
    # Solution
    age_hash = {}

    @ages.each do |name, age|
      age_hash[age] = [] if !age_hash.has_key?(age)
      age_hash[age] << name
    end

    # The following is a more concise solution that involves setting the
    # default structure for a key-value pair rather than checking whether or
    # not a key already exists, setting it equal to an empty array if not, and
    # then shoveling the desired value into the array

    # age_hash = Hash.new{ |hash, key| hash[key] = [] }
    #
    # @ages.each do |name, age|
    #   age_hash[age] << name
    # end

    expected = {
      33 => ['Frank'],
      15 => ['Stacy'],
      24 => ['Juan', 'Steve', 'Jill'],
      32 => ['Dom']
    }
    expect(age_hash).to eq(expected)
  end

end
