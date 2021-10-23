x = 30
y = 0
by = 0
r = 1
speed = 1.5
sens = 10
W = love.graphics.getHeight( )/2
function love.update(dt)
by = by + speed*dt

if by >= 3.14*2 then
	by = 0
end

--y = W+((W-r)*math.sin(by))
end

function love.draw()
love.graphics.line(0,love.graphics.getHeight( )/2,love.graphics.getWidth( ),love.graphics.getHeight( )/2)
love.graphics.line(love.graphics.getWidth( )/2,0,love.graphics.getWidth( )/2,love.graphics.getHeight( ))
	for i=1,100 do
		y = W+((W-r)*math.sin(by+i/sens))
		love.graphics.circle("line",x+sens*r*i,y,r)
	end
love.graphics.print(y,50,25)
love.graphics.print(math.sin(by),50,50)
end