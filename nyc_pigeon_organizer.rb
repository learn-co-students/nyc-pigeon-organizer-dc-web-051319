pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |color_gender_lives, attributes|
    attributes.each do |keys, names|
      #keys = purple, grey, white, brown, male, female, subway...
      names.each do |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(color_gender_lives)
            pigeon_list[name][color_gender_lives].push(keys.to_s)
          else
            pigeon_list[name][color_gender_lives] = [keys.to_s]
          end
        else 
          pigeon_list[name] = {}
          pigeon_list[name][color_gender_lives] = [keys.to_s]
        end
      end
    end
  end
  pigeon_list    
end
