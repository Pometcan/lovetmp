require("core")
require("lib")
require("input")

push:setupScreen(1920,1080,Ww,Wh,{fullscreen = fullscreenTrue,resizable = true,pixelperfect=false})

function love.load()
	cmr = camera()
end

function love.draw()
	push:start()
	cmr:attach()
	lg.rectangle("line",0,0,1920,1080)
	lg.circle("fill",Pw/2,Ph/2,10)
	cmr:detach()
	cmr:draw()
	push:finish()
end

function love.update(dt)
	cmr:update(dt);
	Wcmrx,Wcmry = cmr:toWorldCoords(love.mouse.getPosition())
end

function love.resize(w,h)
  push:resize(w,h)
	Ww, Wh = love.graphics.getDimensions()
end
