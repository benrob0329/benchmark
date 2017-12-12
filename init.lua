local modpath = minetest.get_modpath("benchmark")

minetest.register_chatcommand("benchmark", {
	params = "",
	description = "Benchmark the server (will stop everything for ~15 seconds)",
	func = function(name, param)
		if minetest.check_player_privs(name, {server=true}) then
			local benchmark = dofile(modpath .. "/benchmark.lua")
			minetest.chat_send_all(benchmark)
			return true, "Done."
		else return false, "Operation not permitted"
		end
	end
})
