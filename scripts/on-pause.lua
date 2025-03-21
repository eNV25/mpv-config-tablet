function on_pause(_, paused)
	if paused or paused == nil then
		mp.commandv("script-message", "osc-visibility", "always", "no-osd")
		mp.set_property_bool("ontop", false)
	else
		mp.commandv("script-message", "osc-visibility", "auto", "no-osd")
		mp.set_property_bool("ontop", true)
	end
end

mp.observe_property("pause", "bool", on_pause)