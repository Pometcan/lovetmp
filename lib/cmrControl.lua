function cmrmouse(x,y,key)
	if key == 3 then
		cmr:follow(x,y)
	end
end




--[[
	local mx,my = cmr:toWorldCoords(love.mouse.getPosition())
	mx = mx * dt * 300
	my = my * dt * 300
	print(mx,my)
	cmr:follow(cmrx,cmry)
--]]
