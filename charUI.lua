local lg = love.graphics

local el = {} -- contains all ui elements

local ui = {

	order = {}, -- the draw order of the ui

	buttons = {}, -- contains buttons

	new_button = function(self, id, x, y, w, h, color)
		self.buttons[id] = {x=x, y=y, w=w, h=h, color=color}
		table_sort() -- update ui element (el) table	
	end; -- create button
	
	panels = {}, -- contains panels

	new_panel = function(self, id, x, y, w, h, color)
		self.panels[id] = {x=x, y=y, w=w, h=h, color=color}
		table_sort() -- update ui element (el) table
	end; -- create panels

	draw = function(self)
		for k, v in pairs(self.order) do
			lg.setColor(self.order[el[v]].color)
			--lg.rectangle('fill', self.order[k.x], self.order[k.y],
			--	self.order[k.w], self.order[k.h], 10, 10, 5)
		end		
	end; -- draws everything to the screen
}

	function table_sort(t, t1, t2)
		t, t1, t2 = el, ui.buttons, ui.panels
		for k1, v1 in pairs(t1) do t[k1] = v1 end
		for k2, v2 in pairs(t2) do t[k2] = k2 end	
	end; -- put all ui elements in a single table

return ui
