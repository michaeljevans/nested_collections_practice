describe 'Warmup Exercises' do

  # animals Hash exercises
  it 'return the amount of dogs' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Your code goes below this line
    solution = animals[:dogs]

    answer = 3
    expect(solution).to eq(answer)
  end

  xit 'add 3 parakeets' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Your code goes below this line
    #

    expect(animals).to have_key(:parakeets)
    expect(animals[:parakeets]).to eq(3)
  end

  xit 'increase the amount of cats by 2' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Your code goes below this line
    #

    expect(animals[:cats]).to eq(7)
  end

  # pet_names Array exercises
  xit 'add "Claude"' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Your code goes below this line
    #

    expected = [
      'Fela',
      'Spot',
      'Patch',
      'Willy',
      'Claude'
    ]
    expect(pet_names).to eq(expected)
  end

  xit 'access the first name in the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Your code goes below this line
    solution = nil

    expect(solution).to eq('Fela')
  end

  xit 'access the last name in the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Your code goes below this line
    solution = nil

    expect(solution).to eq('Willy')
  end

  xit 'remove "Fela" from the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Your code goes below this line
    #

    expected = [
      'Spot',
      'Patch',
      'Willy'
    ]
    expect(pet_names).to eq(expected)
  end

end
