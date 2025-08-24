def time_rand(from = Time.now() + 1.hour, to = Time.now() + 2.days)
  Time.at(from + rand * (to.to_f - from.to_f))
end

airports = [ [ 'IXE', 'Mangaluru' ], [ 'CCU', 'Kolkata' ], [ 'BLR', 'Bengaluru' ], [ 'BOM', 'Bombay' ], [ 'HYD', 'Hyderabad' ], [ 'DEL', 'Delhi' ], [ 'MAA', 'Chennai' ] ]

airports.each do |airport_id, airport_name|
  Airport.create(code: airport_id, name: airport_name)
end

airports.each do |depart|
  airports.each do |arrive|
    unless depart.eql?(arrive)
      departs = time_rand
      Flight.create(depart_airport_id: Airport.find_by(code: depart.first).id, arrival_airport_id: Airport.find_by(code: arrive.first).id, seats: rand(5..15), departs_at: departs, arrives_at: time_rand(departs))
    end
  end
end
