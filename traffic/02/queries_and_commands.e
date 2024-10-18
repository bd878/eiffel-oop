note
	description: "Exploring interfaces."

class
	QUERIES_AND_COMMANDS

inherit
	ZURICH_OBJECTS

feature -- Explore Zurich

	explore
			-- Try out queries and commands on lines.
		do
			Line4.remove_all_segments
			Line4.append (Bahnhofplatz_HB)
			Line4.append (Haldenbach)
			Line4.append (Polyterrasse)
			Console.output (Line4.count)
			Console.output (Line4.last.name)
		end

end
