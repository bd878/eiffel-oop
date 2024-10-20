note
	description: "[
		Stop on metro line. A station may have several
		stops
	]"
	author: ""
	date: "19/10/24"
	revision: "1.0"

class
	STOP
create
	set_station_and_line
	
feature

	station: TRAFFIC_STATION
			-- A station where is this stop

	line: TRAFFIC_LINE
			-- A line, where this stop is

	right: TRAFFIC_STOP
			-- Next stop on line

	set_station_and_line (s: TRAFFIC_STATION, l: TRAFFIC_LINE)
			-- Constructor procedure
			-- Bind this stop with s and l
		require
			station_exists: s /= Void
			line_exists: s /= Void
		ensure
			station_set: station = s
			line_set: line = l

	link (s: SIMPLE_STOP)
			-- Make s next station on line
		ensure
			right_set: right = s

invariant
	station_exists: station /= Void
	line_exists: line /= Void
end
