local ui = require 'charUI'

ui:new_button( "Button1", 100, 100, 250, 250, {1,0.4, 0.456})
ui:new_panel( "BasePanel", 0, 0, 1000, 1000, {1,1,1})

ui.order = {
	"BasePanel",
	"Button1"
}

function love.draw()
	ui:draw()
end
