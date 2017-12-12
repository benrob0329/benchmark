local calpi = function()
	local operator = '+'
	local mypi = 0
	for i=1, 10000000000, 2 do
		if operator == '+' then
			mypi = mypi + (4/i)
			operator = '-'
		elseif operator == '-' then
			mypi = mypi - (4/i)
			operator = '+'
		end
	end
end

start = os.clock()
calpi()
stop = os.clock()

print(stop - start)
return (stop - start)
