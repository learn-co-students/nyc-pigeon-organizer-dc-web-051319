def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}

  data.each do |attribute, info|
    puts attribute
    info.each do |topic, array|
      array.each do |name|
        if !newHash.has_key?(name)
          newHash[name] = {}
        end
        if !newHash[name].has_key?(attribute)
          newHash[name][attribute] = []
        end
        if !newHash[name][attribute].include?(topic)
          newHash[name][attribute] << topic.to_s
        end
      end
    end
  end
  newHash
end
