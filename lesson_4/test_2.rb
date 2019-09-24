numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

odd_numbers = numbers.select do |number|
                number.odd?
              end

even_numbers = numbers.select do |number|
                number.even?
              end

p odd_numbers
p even_numbers

numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end

p odd_numbers
p even_numbers

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

capitals = countries_and_capitals.each_with_object({}) do |(k, v), obj|
              obj[k] = v if k.chr == 'B'
            end



def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

p select_countries(countries_and_capitals)

def begins_with_b(string)
  string[0] == 'B'
end

count = countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
p count
