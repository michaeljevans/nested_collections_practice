describe 'Warmup Exercises' do

  # animals Hash exercises
  it 'return the amount of dogs' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Solution
    solution = animals[:dogs]

    answer = 3
    expect(solution).to eq(answer)
  end

  it 'add 3 parakeets' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Solution
    animals[:parakeets] = 3

    expect(animals).to have_key(:parakeets)
    expect(animals[:parakeets]).to eq(3)
  end

  it 'increase the amount of cats by 2' do
    animals = {
      dogs: 3,
      cats: 5,
      iguanas: 2
    }

    # Solution
    animals[:cats] += 2 # <- shorthand for animals[:cats] = animals[:cats] + 2

    expect(animals[:cats]).to eq(7)
  end

  # pet_names Array exercises
  it 'add "Claude"' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Solution
    pet_names << 'Claude'
    # pet_names.push('Claude') <- will also work

    expected = [
      'Fela',
      'Spot',
      'Patch',
      'Willy',
      'Claude'
    ]
    expect(pet_names).to eq(expected)
  end

  it 'access the first name in the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Solution
    solution = pet_names[0]
    # solution = pet_names.first <- will also work

    expect(solution).to eq('Fela')
  end

  it 'access the last name in the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Solution
    solution = pet_names.last
    # solution = pet_names[3] <- will also work, but note that this form
    # requires us to know that there are 4 elements in the array

    expect(solution).to eq('Willy')
  end

  it 'remove "Fela" from the list' do
    pet_names = [
      'Fela',
      'Spot',
      'Patch',
      'Willy'
    ]

    # Solution
    pet_names.delete('Fela')
    # pet_names.shift <- will also work, but note that this method requires us
    # to know that 'Fela' is the first element in the array

    expected = [
      'Spot',
      'Patch',
      'Willy'
    ]
    expect(pet_names).to eq(expected)
  end

end
