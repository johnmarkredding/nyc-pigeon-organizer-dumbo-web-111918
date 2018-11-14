def nyc_pigeon_organizer(data)
  new_data = {}
    data.each do |cat, list|
      list.each do |k,v|
        v.each do |x|
          if new_data[x] == nil
            new_data[x] = {}
          end
          new_data[x][cat] << k
        end
      end
    end
  new_data
end