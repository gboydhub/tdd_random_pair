def random_pair(name_array)
  unless name_array.is_a?(Array); return false; end
  unless name_array[0].is_a?(String); return false; end

  namelist = Array.new(0){Array.new(0)}
  firstnames = Array.new(0)
  lastnames = Array.new(0)

  name_array.each do |v|
    name = v.split(' ')
    firstnames << name[0]
    if name.length > 1; lastnames << name[1]; end
  end
  firstnames = firstnames.shuffle
  lastnames = lastnames.shuffle

  if lastnames.length == 0
    namelist << [firstnames[0], '']
  end
  lastnames.each_with_index do |v, i|
    namelist << [firstnames[i], v]
  end
  namelist
end