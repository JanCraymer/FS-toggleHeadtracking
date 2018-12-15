-- toggleHeadtracking
--
-- Version 1.0
-- Autor CptCray
-- 
-- Change log:
-- 15.12.2018 / CptCray / first release


toggleHeadtracking = {};

addModEventListener(toggleHeadtracking);

function toggleHeadtracking:loadMap(name)
	self.isHeadTrackingEnabledStartupValue = false
	if g_gameSettings:getValue("isHeadTrackingEnabled") then
		self.isHeadTrackingEnabledStartupValue = true;
		print("isHeadTrackingEnabled true")
	else
		print("isHeadTrackingEnabled false")
	end
end;

function toggleHeadtracking:deleteMap()
	g_gameSettings:setValue("isHeadTrackingEnabled", self.isHeadTrackingEnabledStartupValue, true)
end;

function toggleHeadtracking:mouseEvent(posX, posY, isDown, isUp, button)
end;

function toggleHeadtracking:keyEvent(unicode, sym, modifier, isDown)
	if Input.isKeyPressed( Input.KEY_lctrl ) then 
		if Input.isKeyPressed( Input.KEY_t ) then
			if g_gameSettings:getValue("isHeadTrackingEnabled") then
				g_gameSettings:setValue("isHeadTrackingEnabled", false, false)
				print("disable Headtracking")
			else
				g_gameSettings:setValue("isHeadTrackingEnabled", true, false)
				print("enable Headtracking")
			end
		end
	end 
end;

function toggleHeadtracking:Update(dt)

end;

function toggleHeadtracking:onAttach()
	
end;

function toggleHeadtracking:onDetach(attacherVehicle)
	
end;

function toggleHeadtracking:updateTick(dt)
end;

function toggleHeadtracking:readStream(streamId, connection)
end;

function toggleHeadtracking:writeStream(streamId, connection)
end;

function toggleHeadtracking:onEnter()
end;

function toggleHeadtracking:onLeave()
	
end;

function toggleHeadtracking:draw()
	
end;
