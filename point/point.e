note
	description: "[
		Example class for invariants.
		Accepts both polar and cartesian
		invariants
	]"
	author: ""
	date: "20/10/24"
	revision: "1.0"

class
	POINT
create
	default_create, make_cartesian, make_polar

feature -- Constructors
	make_cartesian (coordX: INTEGER; coordY: INTEGER)
			-- create cartesian coordinate with given
			-- x and y
		do
			x := coordX
			y := coordY
			r := 0
			t := 0
		ensure
			y_set: x = coordX
			x_set: y = coordY
			r_not_set: r = 0
			t_not_set: t = 0
		end

	make_polar (radiusR: DOUBLE; angleT: DOUBLE)
			-- create polar coordinate with given
			-- r and t
		do
			r := radiusR
			t := angleT
			x := 0
			y := 0
		ensure
			r_set: r = radiusR
			t_set: t = angleT
			x_not_set: x = 0
			y_not_set: y = 0
		end

feature -- Attributes
	x: INTEGER
		-- x coordinate
	y: INTEGER
		-- y coordinate
	r: DOUBLE
		-- polar coord radius
	t: DOUBLE
		-- polar coord angle
end -- class POINT
