def random_pair(name_array)
  unless name_array.is_a?(Array); return false; end
  unless name_array[0].is_a?(String); return false; end

  namelist = Array.new(0){Array.new(0)}
  name_array.each do |v|
    name = v.split(' ')
    namelist.push([name[0], name[1]])
  end
  namelist
end