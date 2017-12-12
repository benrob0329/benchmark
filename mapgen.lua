local sleep = function(time)
	while os.time() ~= (start+time) do end
end

local start = os.time()

minetest.emerge_area({x=30000, y=0, z=30000}, {x=29990, y=0, z=29990})

while (not minetest.get_node_or_nil({x=29990, 0, 29990})) do
	sleep(1)
end

stop = os.time()

return (stop - start)
