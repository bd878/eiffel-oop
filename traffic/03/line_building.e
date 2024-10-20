class LINE_BUILDING inherit
	TOURISM

feature -- Line building

	build_a_line
			-- Build an imaginary line and highlight it on the map.
		do
			Paris.display
			-- "Create new line, fill in its stations and add it to Paris"
			create fancy_line.make_metro ("FANCY")
			Paris.put_line (fancy_line)
			create stop1.set_station_and_line (Station_Montrouge, fancy_line)
			create stop2.set_station_and_line (Station_Issy, fancy_line)
			create stop3.set_station_and_line (Station_Balard, fancy_line)
			-- "Hightlight the new line on the map"
			stop1.link(stop2)
			stop2.link(stop3)

			fancy_line.highlight
		end

	fancy_line: TRAFFIC_LINE

	stop1, stop2, stop3: STOP
end

