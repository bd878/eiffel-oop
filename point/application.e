note
	description: "point application root class"
	date: "20/10/24"
	revision: "1.0"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			Console.put_string ("test string")
		end
end
