class
	ROUTES

inherit

	TOURISM

feature -- Routes

	traverse
			-- Build a route and traverse Line8.
		do
			from
				Line8.start
			invariant
				-- Точка отображена для всех станций перед курсором
				not_before_unless_empty: (not is_empty) implies (not is_before)
			until
				Line8.after
			loop
				if Line8.item.is_exchange then
					show_blinking_spot (Line8.item.location)
				else
					show_spot (Line8.item.location)
				end
				Line8.forth
			variant
				Line8.count - Line8.index + 1
			end
		end

end
