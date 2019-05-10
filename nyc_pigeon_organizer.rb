def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |labels, values|
    values.each do |symbols, names|
      names.each do |name|
        unless pigeon_hash.include?(name)
          pigeon_hash[name] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
  end
  pigeon_hash.each do |name, hashes|
    hashes.each do |hash_key, pigeons|
      data.each do |labels, values|
        values.each do |value, array|
          array.each do |pigeon|
            if pigeon == name && hash_key == labels
              pigeon_hash[pigeon][hash_key] << value.to_s
            end
          end
        end
      end
    end
  end
  pigeon_hash
end
