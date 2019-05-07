require 'pry'

def nyc_pigeon_organizer(data)
names_array = []
array_hashes = []
temp_hash_attr = {}
hash = {}
idx = 0

data[:gender].each do |k, v|
    data[:gender][k].each do |name|
      names_array.push(name)
    end
  end

names_array.each do |name_key |
    hash[name_key] = {}
  data.keys.each do |k |
    temp_hash_attr[k] = []
  end

idx = 0
while (idx < data.keys.size)
  data.keys.each do |k|
    data.values[idx].each do |attribute, names_arr |
      if names_arr.include?(name_key)
temp_hash_attr[k].push(attribute.to_s)
end
end

idx += 1
end
end
hash[name_key] = hash[name_key].merge(temp_hash_attr)

end
return hash
end