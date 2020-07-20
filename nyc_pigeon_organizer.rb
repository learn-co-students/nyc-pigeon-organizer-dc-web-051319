require 'pry'

def nyc_pigeon_organizer(data)
    data.each_with_object({}) do |categories, pigeons|
        categories[1].each do |detail, names|
            detail = detail.to_s
            names.each do |name|
                case
                    when pigeons[name] && pigeons[name][categories[0]]
                        pigeons[name][categories[0]] << detail
                    when pigeons[name]
                        pigeons[name].merge!({categories[0] => [detail]})
                    else 
                        pigeons[name] = {categories[0] => [detail]}
                end
            end
        end
    end
end
