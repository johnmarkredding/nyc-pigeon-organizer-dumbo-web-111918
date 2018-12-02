def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |attribute, options|
    options.each do |option, names|
      names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        elsif new_hash[name][attribute] == nil
          new_hash[name][attribute] = []
        end
        new_hash[name][attribute] << option.to_s
      end
    end
  end
  new_hash  
end



def nyc_pigeon_organizer(data)
  new_data = {}
  data.each do |cat, list|
    list.each do |k,v|
      v.each do |x|
        if new_data[x] == nil
          new_data[x] = {}
        end
        if new_data[x][cat] == nil
          new_data[x][cat] = [k.to_s]
        else
          new_data[x][cat] << k.to_s
        end
      end
    end
  end
  new_data
end