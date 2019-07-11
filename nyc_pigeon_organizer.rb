require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |key,value|   #key is :color, value is {:purple => [...]}
  	value.each do |attribute,names| #attribute is :purple, names is [...]
  		names.each do |pigeon| #pigeon is "Theo"
  			result[pigeon] ||= {} #{"Theo": }
  			result[pigeon][key] ||= [] #{"Theo" : [...]}
  			result[pigeon][key] << attribute.to_s
  		end
  	end
  end
  result
end
