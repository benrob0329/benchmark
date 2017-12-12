local modpath = minetest.get_modpath("benchmark")

local printall = function(string)
	minetest.chat_send_all(string)
	print(string)
end

minetest.register_chatcommand("benchmark", {
	params = "",
	description = "Benchmark the server (will stop everything for ~15 seconds)",
	func = function(name, param)
		if minetest.check_player_privs(name, {server=true}) then
			printall("Starting Pi Benchmark")
			local calpi = dofile(modpath .. "/calpi.lua")
			printall("Pi took " .. calpi .. " seconds.")

			--printall("Starting Mapgen Benchmark")
			--local mapgen = dofile(modpath .. "/mapgen.lua")
			--printall("Mapgen took: " .. mapgen .. "seconds.")

			return true, "Done."
		else return false, "Operation not permitted"
		end
	end
})
